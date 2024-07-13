(library (chez-duckdb)
  (export

    DUCKDB_TYPE_INVALID
    DUCKDB_TYPE_BOOLEAN
    DUCKDB_TYPE_TINYINT
    DUCKDB_TYPE_SMALLINT
    DUCKDB_TYPE_INTEGER
    DUCKDB_TYPE_BIGINT
    DUCKDB_TYPE_UTINYINT
    DUCKDB_TYPE_USMALLINT
    DUCKDB_TYPE_UINTEGER
    DUCKDB_TYPE_UBIGINT
    DUCKDB_TYPE_FLOAT
    DUCKDB_TYPE_DOUBLE
    DUCKDB_TYPE_TIMESTAMP
    DUCKDB_TYPE_DATE
    DUCKDB_TYPE_TIME
    DUCKDB_TYPE_INTERVAL
    DUCKDB_TYPE_HUGEINT
    DUCKDB_TYPE_UHUGEINT
    DUCKDB_TYPE_VARCHAR
    DUCKDB_TYPE_BLOB
    DUCKDB_TYPE_DECIMAL
    DUCKDB_TYPE_TIMESTAMP_S
    DUCKDB_TYPE_TIMESTAMP_MS
    DUCKDB_TYPE_TIMESTAMP_NS
    DUCKDB_TYPE_ENUM
    DUCKDB_TYPE_LIST
    DUCKDB_TYPE_STRUCT
    DUCKDB_TYPE_MAP
    DUCKDB_TYPE_ARRAY
    DUCKDB_TYPE_UUID
    DUCKDB_TYPE_UNION
    DUCKDB_TYPE_BIT
    DUCKDB_TYPE_TIME_TZ
    DUCKDB_TYPE_TIMESTAMP_TZ
    ;
    DuckDBSuccess
    DuckDBError
    ;
    DUCKDB_PENDING_RESULT_READY
    DUCKDB_PENDING_RESULT_NOT_READY
    DUCKDB_PENDING_ERROR
    DUCKDB_PENDING_NO_TASKS_AVAILABLE
    ;
    DUCKDB_RESULT_TYPE_INVALID
    DUCKDB_RESULT_TYPE_CHANGED_ROWS
    DUCKDB_RESULT_TYPE_NOTHING
    DUCKDB_RESULT_TYPE_QUERY_RESULT
    ;
    DUCKDB_STATEMENT_TYPE_INVALID
    DUCKDB_STATEMENT_TYPE_SELECT
    DUCKDB_STATEMENT_TYPE_INSERT
    DUCKDB_STATEMENT_TYPE_UPDATE
    DUCKDB_STATEMENT_TYPE_EXPLAIN
    DUCKDB_STATEMENT_TYPE_DELETE
    DUCKDB_STATEMENT_TYPE_PREPARE
    DUCKDB_STATEMENT_TYPE_CREATE
    DUCKDB_STATEMENT_TYPE_EXECUTE
    DUCKDB_STATEMENT_TYPE_ALTER
    DUCKDB_STATEMENT_TYPE_TRANSACTION
    DUCKDB_STATEMENT_TYPE_COPY
    DUCKDB_STATEMENT_TYPE_ANALYZE
    DUCKDB_STATEMENT_TYPE_VARIABLE_SET
    DUCKDB_STATEMENT_TYPE_CREATE_FUNC
    DUCKDB_STATEMENT_TYPE_DROP
    DUCKDB_STATEMENT_TYPE_EXPORT
    DUCKDB_STATEMENT_TYPE_PRAGMA
    DUCKDB_STATEMENT_TYPE_VACUUM
    DUCKDB_STATEMENT_TYPE_CALL
    DUCKDB_STATEMENT_TYPE_SET
    DUCKDB_STATEMENT_TYPE_LOAD
    DUCKDB_STATEMENT_TYPE_RELATION
    DUCKDB_STATEMENT_TYPE_EXTENSION
    DUCKDB_STATEMENT_TYPE_LOGICAL_PLAN
    DUCKDB_STATEMENT_TYPE_ATTACH
    DUCKDB_STATEMENT_TYPE_DETACH
    DUCKDB_STATEMENT_TYPE_MULTI

    duckdb_result
    duckdb_database
    duckdb_connection

    duckdb-open
    duckdb-connect
    duckdb-close
    duckdb-disconnect
    duckdb-library-version

    duckdb-query
    duckdb-destroy-result
    duckdb-column-name
    duckdb-column-count
    duckdb-row-count

    duckdb-value-varchar
    )
  (import (chezscheme))

  (define lib
    (load-shared-object
      (case (machine-type)
            ((a6osx i3osx ta6osx ti3osx arm64osx tarm64osx) "./libduckdb.dylib")
            ((a6le i3le ta6le ti3le) "./libduckdb.so")
            (else "./libduckdb.so"))))

  ;; const
  ;
  (define DUCKDB_TYPE_INVALID 0)
  (define DUCKDB_TYPE_BOOLEAN 1)
  (define DUCKDB_TYPE_TINYINT 2)
  (define DUCKDB_TYPE_SMALLINT 3)
  (define DUCKDB_TYPE_INTEGER 4)
  (define DUCKDB_TYPE_BIGINT 5)
  (define DUCKDB_TYPE_UTINYINT 6)
  (define DUCKDB_TYPE_USMALLINT 7)
  (define DUCKDB_TYPE_UINTEGER 8)
  (define DUCKDB_TYPE_UBIGINT 9)
  (define DUCKDB_TYPE_FLOAT 10)
  (define DUCKDB_TYPE_DOUBLE 11)
  (define DUCKDB_TYPE_TIMESTAMP 12)
  (define DUCKDB_TYPE_DATE 13)
  (define DUCKDB_TYPE_TIME 14)
  (define DUCKDB_TYPE_INTERVAL 15)
  (define DUCKDB_TYPE_HUGEINT 16)
  (define DUCKDB_TYPE_UHUGEINT 32)
  (define DUCKDB_TYPE_VARCHAR 17)
  (define DUCKDB_TYPE_BLOB 18)
  (define DUCKDB_TYPE_DECIMAL 19)
  (define DUCKDB_TYPE_TIMESTAMP_S 20)
  (define DUCKDB_TYPE_TIMESTAMP_MS 21)
  (define DUCKDB_TYPE_TIMESTAMP_NS 22)
  (define DUCKDB_TYPE_ENUM 23)
  (define DUCKDB_TYPE_LIST 24)
  (define DUCKDB_TYPE_STRUCT 25)
  (define DUCKDB_TYPE_MAP 26)
  (define DUCKDB_TYPE_ARRAY 33)
  (define DUCKDB_TYPE_UUID 27)
  (define DUCKDB_TYPE_UNION 28)
  (define DUCKDB_TYPE_BIT 29)
  (define DUCKDB_TYPE_TIME_TZ 30)
  (define DUCKDB_TYPE_TIMESTAMP_TZ 31)
  ;
  (define DuckDBSuccess 0)
  (define DuckDBError 1)
  ;
  (define DUCKDB_PENDING_RESULT_READY 0)
	(define DUCKDB_PENDING_RESULT_NOT_READY 1)
	(define DUCKDB_PENDING_ERROR 2)
	(define DUCKDB_PENDING_NO_TASKS_AVAILABLE 3)
  ;
  (define DUCKDB_RESULT_TYPE_INVALID 0)
	(define DUCKDB_RESULT_TYPE_CHANGED_ROWS 1)
	(define DUCKDB_RESULT_TYPE_NOTHING 2)
	(define DUCKDB_RESULT_TYPE_QUERY_RESULT 3)
  ;
  (define DUCKDB_STATEMENT_TYPE_INVALID 0)
  (define DUCKDB_STATEMENT_TYPE_SELECT 1)
  (define DUCKDB_STATEMENT_TYPE_INSERT 2)
  (define DUCKDB_STATEMENT_TYPE_UPDATE 3)
  (define DUCKDB_STATEMENT_TYPE_EXPLAIN 4)
  (define DUCKDB_STATEMENT_TYPE_DELETE 5)
  (define DUCKDB_STATEMENT_TYPE_PREPARE 6)
  (define DUCKDB_STATEMENT_TYPE_CREATE 7)
  (define DUCKDB_STATEMENT_TYPE_EXECUTE 8)
  (define DUCKDB_STATEMENT_TYPE_ALTER 9)
  (define DUCKDB_STATEMENT_TYPE_TRANSACTION 10)
  (define DUCKDB_STATEMENT_TYPE_COPY 11)
  (define DUCKDB_STATEMENT_TYPE_ANALYZE 12)
  (define DUCKDB_STATEMENT_TYPE_VARIABLE_SET 13)
  (define DUCKDB_STATEMENT_TYPE_CREATE_FUNC 14)
  (define DUCKDB_STATEMENT_TYPE_DROP 15)
  (define DUCKDB_STATEMENT_TYPE_EXPORT 16)
  (define DUCKDB_STATEMENT_TYPE_PRAGMA 17)
  (define DUCKDB_STATEMENT_TYPE_VACUUM 18)
  (define DUCKDB_STATEMENT_TYPE_CALL 19)
  (define DUCKDB_STATEMENT_TYPE_SET 20)
  (define DUCKDB_STATEMENT_TYPE_LOAD 21)
  (define DUCKDB_STATEMENT_TYPE_RELATION 22)
  (define DUCKDB_STATEMENT_TYPE_EXTENSION 23)
  (define DUCKDB_STATEMENT_TYPE_LOGICAL_PLAN 24)
  (define DUCKDB_STATEMENT_TYPE_ATTACH 25)
  (define DUCKDB_STATEMENT_TYPE_DETACH 26)
  (define DUCKDB_STATEMENT_TYPE_MULTI 27)

  ;; ftype
  ; idx_t => unsigned-64
  ; duckdb_delete_callback_t
  ; duckdb_task_state => viod*
  (define-ftype duckdb_date (struct [days integer-32]))
  (define-ftype duckdb_date_struct
    (struct
      [year integer-32]
      [month integer-8]
      [day integer-8]))
  (define-ftype duckdb_time (struct [micros integer-64]))
  (define-ftype duckdb_time_struct
    (struct
      [hour integer-8]
      [min integer-8]
      [sec integer-8]
      [micros integer-32]))
  (define-ftype duckdb_time_tz
    (struct
      [bits unsigned-64]))
  (define-ftype duckdb_time_tz_struct
    (struct
      [time (* duckdb_time_struct)]
      [offset integer-32]))
  (define-ftype duckdb_timestamp
    (struct
      [micros unsigned-64]))
  (define-ftype duckdb_timestamp_struct
    (struct
      [date (* duckdb_date_struct)]
      [time (* duckdb_time_struct)]))
  (define-ftype duckdb_interval
    (struct
      [months integer-32]
      [days integer-32]
      [micros integer-64]))
  (define-ftype duckdb_hugeint
    (struct
      [lower unsigned-64]
      [upper integer-64]))
  (define-ftype duckdb_uhugeint 
    (struct
      [lower unsigned-64]
      [upper unsigned-64]))
  (define-ftype duckdb_decimal
    (struct
      [width unsigned-8]
      [scale unsigned-8]
      [value (* duckdb_hugeint)]))
  (define-ftype duckdb_query_progress_type
    (struct
      [percentage double]
      [rows_processed unsigned-64]
      [total_rows_to_process unsigned-64]
      ))
  (define-ftype duckdb_string_t
    (struct
      [value (union
               [pointer (struct
                          [length unsigned-32]
                          [prefix (array 4 char)]
                          [ptr (* char)])]
               [inlined (struct 
                          [length unsigned-32]
                          [inlined (array 12 char)])])]))
  (define-ftype duckdb_list_entry
    (struct
      [offset unsigned-64]
      [length unsigned-64]))
  (define-ftype duckdb_column
    (struct
      [internal_data void*]))
  (define-ftype duckdb_vector
    (struct
      [__vctr void*]))
  (define-ftype duckdb_string
    (struct
      [data void*]
      [size unsigned-64]))
  (define-ftype duckdb_blob
    (struct
      [data void*]
      [size unsigned-64]))

  (define-ftype duckdb_result
    (struct
      [internal_data void*]))
  (define-ftype duckdb_database
    (struct
      [__db void*]))
  (define-ftype duckdb_connection
    (struct
      [__conn void*]))
  (define-ftype duckdb_prepared_statement
    (struct
      [__prep void*]))
  (define-ftype duckdb_extracted_statements
    (struct
      [__extrac void*]))
  (define-ftype duckdb_pending_result
    (struct
      [__pend void*]))
  (define-ftype duckdb_appender
    (struct
      [__appn void*]))
  (define-ftype duckdb_config
    (struct
      [__cnfg void*]))
  (define-ftype duckdb_logical_type (struct [__lglt void*]))
  (define-ftype duckdb_data_chunk (struct [__dtck void*]))
  (define-ftype duckdb_value (struct [__val void*]))
  ;; Table function types

  ;; Arrow-related types
(define-ftype duckdb_arrow (struct [__arrw void*]))
(define-ftype duckdb_arrow_stream (struct [__arrwstr void*]))
(define-ftype duckdb_arrow_schema (struct [__arrs void*]))
(define-ftype duckdb_arrow_array (struct [__arra void*]))  
      
  ; function
  (define duckdb-open
    (let ([f (foreign-procedure "duckdb_open" (string (* duckdb_database)) int)])
      (lambda (path db) (f path db))))
  
  (define duckdb-open-ext
    (let ([f (foreign-procedure "duckdb_open_ext" (string (* duckdb_database) (* duckdb_config) void*) int)])
      (lambda (path db cfg err) (f path db cfg err))))
  
  (define duckdb-close
    (let ([f (foreign-procedure "duckdb_close" ((* duckdb_database)) void)])
      (lambda (db) (f db))))

  
  (define duckdb-connect
    (let ([f (foreign-procedure "duckdb_connect" ((& duckdb_database) (* duckdb_connection)) int)])
      (lambda (db con) (f db con))))

  (define duckdb-interrupt
    (let ([f (foreign-procedure "duckdb_interrupt" ((* duckdb_connection)) int)])
      (lambda (con) (f con))))
  
  (define duckdb-query-progress
    (let ([f (foreign-procedure "duckdb_query_progress" ((& duckdb_connection)) (& duckdb_query_progress_type))])
      (lambda (con) (f con))))
  
  
  (define duckdb-disconnect
    (let ([f (foreign-procedure "duckdb_disconnect" ((* duckdb_connection)) int)])
      (lambda (con) (f con))))

  
  (define duckdb-library-version
    (let ([f (foreign-procedure "duckdb_library_version" () string)])
      (lambda () (f))))
  
  (define duckdb-create-config
    (let ([f (foreign-procedure "duckdb_create_config" ((* duckdb_config)) int)])
      (lambda (cfg) (f cfg))))
  
  (define duckdb-config-count
    (let ([f (foreign-procedure "duckdb_config_count" () int)])
      (lambda () (f))))

  
  (define duckdb-get-config-flag
    (let ([f (foreign-procedure "duckdb_get_config_flag" (size_t void* void*) int)])
      (lambda (index out-name out-description) (f index out-name out-description))))
  
  (define duckdb-set-config
    (let ([f (foreign-procedure "duckdb_set_config" ((& duckdb_config) string string) int)])
      (lambda (cfg name option) (f cfg name option))))
  
  (define duckdb-destroy-config
    (let ([f (foreign-procedure "duckdb_destroy_config" ((* duckdb_config)) void)])
      (lambda (cfg) (f cfg))))

  (define duckdb-query
    (let ([f (foreign-procedure "duckdb_query" ((& duckdb_connection) string (* duckdb_result)) int)])
      (lambda (conn sql res) (f conn sql res))))
  
  (define duckdb-destroy-result
    (let ([f (foreign-procedure "duckdb_destroy_result" ((* duckdb_result)) void)])
      (lambda (res) (f res))))
  
  (define duckdb-column-name
    (let ([f (foreign-procedure "duckdb_column_name" ((* duckdb_result) unsigned-64) string)])
      (lambda (res i) (f res i))))
  
  (define duckdb-column-type
    (let ([f (foreign-procedure "duckdb_column_type" ((* duckdb_result) unsigned-64) int)])
      (lambda (res i) (f res i))))

  (define duckdb-column-count
    (let ([f (foreign-procedure "duckdb_column_count" ((* duckdb_result)) unsigned-64)])
      (lambda (res) (f res))))
  
  (define duckdb-row-count
    (let ([f (foreign-procedure "duckdb_row_count" ((* duckdb_result)) unsigned-64)])
      (lambda (res) (f res))))

  (define duckdb-value-varchar
    (let ([f (foreign-procedure "duckdb_value_varchar" ((* duckdb_result) unsigned-64 unsigned-64) string)])
      (lambda (res i j) (f res i j))))
  



  )