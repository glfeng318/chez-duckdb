(import (chez-duckdb))

(define db (new duckdb_database))
(define con (new duckdb_connection))
(define res (new duckdb_result))

(assert (= 0 (duckdb-open "./test.duckdb" db)))
(assert (= 0 (duckdb-connect db con)))
(assert (= 0 (duckdb-query con "CREATE TABLE IF NOT EXISTS integers(i INTEGER, j INTEGER);" res)))

; (duckdb-query con "begin trancsation;" res)
; (for-each
;   (lambda (i)
;     (assert (= 0 (duckdb-query con (string-append "INSERT INTO integers VALUES (" (number->string i) ", " (number->string i) ")") res))))
;   (iota 10))
; (duckdb-query con "commit;" res)

(assert (= 0 (duckdb-query con "SELECT i, sum(j) as j FROM integers group by i" res)))

(define n-column (duckdb-column-count res))
(define n-row (duckdb-row-count res))

(printf "~a columns ~a rows\n\n" n-column n-row)

(define columns (map (lambda (i) (duckdb-column-name res i)) (iota n-column)))

(for-each (lambda (col) (printf "~a\t" col)) columns)
(printf "\n")

(for-each
  (lambda (r)
    (for-each 
      (lambda (c)
        (printf "~a\t" (duckdb-value-varchar res c r)))
      (iota n-column))
    (printf "\n"))
  (iota n-row))



(duckdb-destroy-result res)
(duckdb-disconnect con)
(duckdb-close db)


