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

    ;; procedure
    duckdb-open
    duckdb-open-ext
    duckdb-close
    duckdb-connect
    duckdb-interrupt
    duckdb-query-progress
    duckdb-disconnect
    duckdb-library-version

    duckdb-create-config
    duckdb-config-count
    duckdb-get-config-flag
    duckdb-set-config
    duckdb-destroy-config

    duckdb-query
    duckdb-destroy-result
    duckdb-column-name
    duckdb-column-type
    duckdb-result-statement-type
    duckdb-column-logical-type
    duckdb-column-count
    duckdb-rows-changed
    duckdb-result-error

    duckdb-result-return-type

    duckdb-malloc
    duckdb-free
    duckdb-vector-size
    duckdb-string-is-inlined

    duckdb-from-date
    duckdb-to-date
    duckdb-is-finite-date
    duckdb-from-time
    duckdb-create-time-tz
    duckdb-from-time-tz
    duckdb-to-time
    duckdb-from-timestamp
    duckdb-to-timestamp
    duckdb-is-finite-timestamp

    duckdb-hugeint-to-double
    duckdb-double-to-hugeint

    duckdb-uhugeint-to-double
    duckdb-double-to-uhugeint

    duckdb-double-to-decimal
    duckdb-decimal-to-double

    duckdb-prepare
    duckdb-destroy-prepare
    duckdb-prepare-error
    duckdb-nparams
    duckdb-parameter-name
    duckdb-param-type
    duckdb-clear-bindings
    duckdb-prepared-statement-type

    duckdb-bind-value
    duckdb-bind-parameter-index
    duckdb-bind-boolean
    duckdb-bind-int8
    duckdb-bind-int16
    duckdb-bind-int32
    duckdb-bind-int64
    duckdb-bind-hugeint
    duckdb-bind-uhugeint
    duckdb-bind-decimal
    duckdb-bind-uint8
    duckdb-bind-uint16
    duckdb-bind-uint32
    duckdb-bind-uint64
    duckdb-bind-float
    duckdb-bind-double
    duckdb-bind-date
    duckdb-bind-time
    duckdb-bind-timestamp
    duckdb-bind-interval
    duckdb-bind-varchar
    duckdb-bind-varchar-length
    duckdb-bind-blob
    duckdb-bind-null

    duckdb-execute-prepared

    duckdb-extract-statements
    duckdb-prepare-extracted-statement
    duckdb-extract-statements-error
    duckdb-destroy-extracted

    duckdb-pending-prepared
    duckdb-destroy-pending
    duckdb-pending-error
    duckdb-pending-execute-task
    duckdb-pending-execute-check-state
    duckdb-execute-pending
    duckdb-pending-execution-is-finished

    duckdb-destroy-value
    duckdb-create-varchar
    duckdb-create-varchar-length
    duckdb-create-int64
    duckdb-create-struct-value
    duckdb-create-list-value
    duckdb-create-array-value
    duckdb-get-varchar
    duckdb-get-int64

    duckdb-create-logical-type
    duckdb-logical-type-get-alias
    duckdb-create-list-type
    duckdb-create-array-type
    duckdb-create-map-type
    duckdb-create-union-type
    duckdb-create-struct-type
    duckdb-create-enum-type
    duckdb-create-decimal-type
    duckdb-get-type-id
    duckdb-decimal-width
    duckdb-decimal-scale
    duckdb-decimal-internal-type
    duckdb-enum-internal-type
    duckdb-enum-dictionary-size
    duckdb-enum-dictionary-value
    duckdb-list-type-child-type
    duckdb-array-type-child-type
    duckdb-array-type-array-size
    duckdb-map-type-key-type
    duckdb-map-type-value-type
    duckdb-struct-type-child-count
    duckdb-struct-type-child-name
    duckdb-struct-type-child-type
    duckdb-union-type-member-count
    duckdb-union-type-member-name
    duckdb-union-type-member-type
    duckdb-destroy-logical-type

    duckdb-create-data-chunk
    duckdb-destroy-data-chunk
    duckdb-data-chunk-reset
    duckdb-data-chunk-get-column-count
    duckdb-data-chunk-get-vector
    duckdb-data-chunk-get-size
    duckdb-data-chunk-set-size

    duckdb-vector-get-column-type
    duckdb-vector-get-data
    duckdb-vector-get-validity
    duckdb-vector-ensure-validity-writable
    duckdb-vector-assign-string-element
    duckdb-vector-assign-string-element-len
    duckdb-list-vector-get-child
    duckdb-list-vector-get-size
    duckdb-list-vector-set-size
    duckdb-list-vector-reserve
    duckdb-struct-vector-get-child
    duckdb-array-vector-get-child

    duckdb-validity-row-is-valid
    duckdb-validity-set-row-validity
    duckdb-validity-set-row-invalid
    duckdb-validity-set-row-valid

    duckdb-create-table-function
    duckdb-destroy-table-function
    duckdb-table-function-set-name
    duckdb-table-function-add-parameter
    duckdb-table-function-add-named-parameter
    duckdb-table-function-set-extra-info
    duckdb-table-function-set-bind
    duckdb-table-function-set-init
    duckdb-table-function-set-local-init
    duckdb-table-function-set-function
    duckdb-table-function-supports-projection-pushdown
    duckdb-register-table-function

    duckdb-bind-get-extra-info
    duckdb-bind-add-result-column
    duckdb-bind-get-parameter-count
    duckdb-bind-get-parameter
    duckdb-bind-get-named-parameter
    duckdb-bind-set-bind-data
    duckdb-bind-set-cardinality
    duckdb-bind-set-error

    duckdb-init-get-extra-info
    duckdb-init-get-bind-data
    duckdb-init-set-init-data
    duckdb-init-get-column-count
    duckdb-init-get-column-index
    duckdb-init-set-max-threads
    duckdb-init-set-error

    duckdb-function-get-extra-info
    duckdb-function-get-bind-data
    duckdb-function-get-init-data
    duckdb-function-get-local-init-data
    duckdb-function-set-error

    duckdb-add-replacement-scan
    duckdb-replacement-scan-set-function-name
    duckdb-replacement-scan-add-parameter
    duckdb-replacement-scan-set-error

    duckdb-appender-create
    duckdb-appender-column-count
    duckdb-appender-column-type
    duckdb-appender-error
    duckdb-appender-flush
    duckdb-appender-close
    duckdb-appender-destroy
    duckdb-appender-begin-row
    duckdb-appender-end-row
    duckdb-append-bool
    duckdb-append-int8
    duckdb-append-int16
    duckdb-append-int32
    duckdb-append-int64
    duckdb-append-hugeint
    duckdb-append-uint8
    duckdb-append-uint16
    duckdb-append-uint32
    duckdb-append-uint64
    duckdb-append-uhugeint
    duckdb-append-float
    duckdb-append-double
    duckdb-append-date
    duckdb-append-time
    duckdb-append-timestamp
    duckdb-append-interval
    duckdb-append-varchar
    duckdb-append-varchar-length
    duckdb-append-blob
    duckdb-append-null
    duckdb-append-data-chunk

    duckdb-execute-tasks
    duckdb-create-task-state
    duckdb-execute-tasks-state
    duckdb-execute-n-tasks-state
    duckdb-finish-execution
    duckdb-task-state-is-finished
    duckdb-destroy-task-state
    duckdb-execution-is-finished

    duckdb-fetch-chunk

    ;; helper
    make-ftype-null
    define-callback
    define-fn
    new
    )
  (import (chezscheme))

  (define lib
    (load-shared-object
      (case (machine-type)
            ((a6osx i3osx ta6osx ti3osx arm64osx tarm64osx) "./libduckdb.dylib")
            ((a6le i3le ta6le ti3le) "./libduckdb.so")
            (else "./libduckdb.so"))))
  
  ;; helper
  ; (make-ftype-null int)
  (define-syntax make-ftype-null
    (syntax-rules ()
      ((_ type)
        (make-ftype-pointer type #x00000000))))

  ; (define-callback make-on-close (void*) void)
  ; (define on-close (make-on-close (lambda (p) (printf "~a\n" p))))
  (define-syntax define-callback
    (lambda (x)
      (syntax-case x ()
        [(_ name args ret)
        #'(define name
            (lambda (p)
              (let ([code (foreign-callable __collect_safe p args ret)])
                (lock-object code)
                (foreign-callable-entry-point code))))])))

  (alias define-fn define-callback)

  (define-syntax new
    (syntax-rules ()
      ((_ ftype)
        (make-ftype-pointer ftype (foreign-alloc (ftype-sizeof ftype))))))
  
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
  (define-ftype duckdb_task_state void*)
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
  (define-ftype duckdb_table_function void*)
  (define-ftype duckdb_bind_info void*)
  (define-ftype duckdb_init_info void*)
  (define-ftype duckdb_function_info void*)
  ; The bind function of the table function.
  ; typedef void (*duckdb_table_function_bind_t)(duckdb_bind_info info)
  (define-callback make-duckdb-table-function-bind-t ((& duckdb_bind_info)) void)
  ; The (possibly thread-local) init function of the table function.
  ; typedef void (*duckdb_table_function_init_t)(duckdb_init_info info);
  (define-callback make-duckdb-table-function-init-t ((& duckdb_bind_info)) void)
  ; The main function of the table function.
  ; typedef void (*duckdb_table_function_t)(duckdb_function_info info, duckdb_data_chunk output);
  (define-callback make-duckdb-table-function-t ((& duckdb_bind_info) (& duckdb_data_chunk)) void)

  ;; Replacement scan types
  (define-ftype duckdb_replacement_scan_info void*)
  ; A replacement scan function that can be added to a database.
  ; typedef void (*duckdb_replacement_callback_t)(duckdb_replacement_scan_info info, const char *table_name, void *data);
  (define-callback make-duckdb-replacement-callback-t ((& duckdb_replacement_scan_info) string void*) void)

  ;; Arrow-related types
      
  ;;; function
  ;; open/connect
  (define duckdb-open
    (let ([f (foreign-procedure "duckdb_open" (string (* duckdb_database)) unsigned-int)])
      (lambda (path db) (f path db))))
  (define duckdb-open-ext
    (let ([f (foreign-procedure "duckdb_open_ext" (string (* duckdb_database) (* duckdb_config) void*) unsigned-int)])
      (lambda (path db cfg err) (f path db cfg err))))
  (define duckdb-close
    (let ([f (foreign-procedure "duckdb_close" ((* duckdb_database)) void)])
      (lambda (db) (f db))))
  (define duckdb-connect
    (let ([f (foreign-procedure "duckdb_connect" ((& duckdb_database) (* duckdb_connection)) unsigned-int)])
      (lambda (db con) (f db con))))
  (define duckdb-interrupt
    (let ([f (foreign-procedure "duckdb_interrupt" ((& duckdb_connection)) void)])
      (lambda (con) (f con))))
  ; the return `(& duckdb_query_progress_type)` cause Warning in compile: possible incorrect argument count in call (f con)
  ; changed to `(* duckdb_query_progress_type)`
  (define duckdb-query-progress
    (let ([f (foreign-procedure "duckdb_query_progress" ((& duckdb_connection)) (* duckdb_query_progress_type))])
      (lambda (con) (f con))))
  (define duckdb-disconnect
    (let ([f (foreign-procedure "duckdb_disconnect" ((* duckdb_connection)) void)])
      (lambda (con) (f con))))
  (define duckdb-library-version
    (let ([f (foreign-procedure "duckdb_library_version" () string)])
      (lambda () (f))))
  ;; configuration
  (define duckdb-create-config
    (let ([f (foreign-procedure "duckdb_create_config" ((* duckdb_config)) unsigned-int)])
      (lambda (cfg) (f cfg))))
  (define duckdb-config-count
    (let ([f (foreign-procedure "duckdb_config_count" () size_t)])
      (lambda () (f))))
  (define duckdb-get-config-flag
    (let ([f (foreign-procedure "duckdb_get_config_flag" (size_t void* void*) unsigned-int)])
      (lambda (index out-name out-description) (f index out-name out-description))))
  (define duckdb-set-config
    (let ([f (foreign-procedure "duckdb_set_config" ((& duckdb_config) string string) unsigned-int)])
      (lambda (cfg name option) (f cfg name option))))
  (define duckdb-destroy-config
    (let ([f (foreign-procedure "duckdb_destroy_config" ((* duckdb_config)) void)])
      (lambda (cfg) (f cfg))))
  ;; query execution
  (define duckdb-query
    (let ([f (foreign-procedure "duckdb_query" ((& duckdb_connection) string (* duckdb_result)) unsigned-int)])
      (lambda (conn sql res) (f conn sql res))))
  (define duckdb-destroy-result
    (let ([f (foreign-procedure "duckdb_destroy_result" ((* duckdb_result)) void)])
      (lambda (res) (f res))))
  (define duckdb-column-name
    (let ([f (foreign-procedure "duckdb_column_name" ((* duckdb_result) unsigned-64) string)])
      (lambda (res i) (f res i))))
  (define duckdb-column-type
    (let ([f (foreign-procedure "duckdb_column_type" ((* duckdb_result) unsigned-64) unsigned-int)])
      (lambda (res i) (f res i))))
  (define duckdb-result-statement-type
    (let ([f (foreign-procedure "duckdb_result_statement_type" ((* duckdb_result)) unsigned-int)])
      (lambda (res) (f res))))
  (define duckdb-column-logical-type
    (let ([f (foreign-procedure "duckdb_column_logical_type" ((* duckdb_result) unsigned-64) (* duckdb_logical_type))])
      (lambda (res i) (f res i))))
  (define duckdb-column-count
    (let ([f (foreign-procedure "duckdb_column_count" ((* duckdb_result)) unsigned-64)])
      (lambda (res) (f res))))
  (define duckdb-rows-changed
    (let ([f (foreign-procedure "duckdb_rows_changed" ((* duckdb_result)) unsigned-64)])
      (lambda (res) (f res))))
  (define duckdb-result-error
    (let ([f (foreign-procedure "duckdb_result_error" ((* duckdb_result)) string)])
      (lambda (res) (f res))))
  ;; result function
  (define duckdb-result-return-type
    (let ([f (foreign-procedure "duckdb_result_return_type" ((* duckdb_result)) unsigned-int)])
      (lambda (res) (f res))))
  ;; safe fetch function (deprecated)

  ;; helpers
  (define duckdb-malloc
    (let ([f (foreign-procedure "duckdb_malloc" (size_t) void*)])
      (lambda (size) (f size))))
  (define duckdb-free
    (let ([f (foreign-procedure "duckdb_free" (void*) void)])
      (lambda (ptr) (f ptr))))
  (define duckdb-vector-size
    (let ([f (foreign-procedure "duckdb_vector_size" () unsigned-64)])
      (lambda () (f))))
  (define duckdb-string-is-inlined
    (let ([f (foreign-procedure "duckdb_string_is_inlined" ((& duckdb_string_t)) boolean)])
      (lambda (str) (f str))))
  ;; date/time/timestamp helpers
  (define duckdb-from-date
    (let ([f (foreign-procedure "duckdb_from_date" ((& duckdb_date)) (* duckdb_date_struct))])
      (lambda (date) (f date))))
  (define duckdb-to-date
    (let ([f (foreign-procedure "duckdb_to_date" ((& duckdb_date_struct)) (* duckdb_date))])
      (lambda (date) (f date))))
  (define duckdb-is-finite-date
    (let ([f (foreign-procedure "duckdb_is_finite_date" ((& duckdb_date)) boolean)])
      (lambda (date) (f date))))
  (define duckdb-from-time
    (let ([f (foreign-procedure "duckdb_from_time" ((& duckdb_time)) (* duckdb_time_struct))])
      (lambda (time) (f time))))
  (define duckdb-create-time-tz
    (let ([f (foreign-procedure "duckdb_create_time_tz" (integer-64 integer-32) (* duckdb_time_tz))])
      (lambda (micros offset) (f micros offset))))
  (define duckdb-from-time-tz
    (let ([f (foreign-procedure "duckdb_from_time_tz" ((& duckdb_time_tz)) (* duckdb_time_tz_struct))])
      (lambda (micros) (f micros))))
  (define duckdb-to-time
    (let ([f (foreign-procedure "duckdb_to_time" ((& duckdb_time_struct)) (* duckdb_time))])
      (lambda (time) (f time))))
  (define duckdb-from-timestamp
    (let ([f (foreign-procedure "duckdb_from_timestamp" ((& duckdb_timestamp)) (* duckdb_timestamp_struct))])
      (lambda (ts) (f ts))))
  (define duckdb-to-timestamp
    (let ([f (foreign-procedure "duckdb_to_timestamp" ((& duckdb_timestamp_struct)) (* duckdb_timestamp))])
      (lambda (ts) (f ts))))
  (define duckdb-is-finite-timestamp
    (let ([f (foreign-procedure "duckdb_is_finite_timestamp" ((& duckdb_timestamp)) boolean)])
      (lambda (ts) (f ts))))
  ;; hugeint helpers
  (define duckdb-hugeint-to-double
    (let ([f (foreign-procedure "duckdb_hugeint_to_double" ((& duckdb_hugeint)) double)])
      (lambda (val) (f val))))
  (define duckdb-double-to-hugeint
    (let ([f (foreign-procedure "duckdb_double_to_hugeint" (double) (* duckdb_hugeint))])
      (lambda (val) (f val))))
  ;; unsigned hugeint helpers
  (define duckdb-uhugeint-to-double
    (let ([f (foreign-procedure "duckdb_uhugeint_to_double" ((& duckdb_uhugeint)) double)])
      (lambda (val) (f val))))
  (define duckdb-double-to-uhugeint
    (let ([f (foreign-procedure "duckdb_double_to_uhugeint" (double) (* duckdb_uhugeint))])
      (lambda (val) (f val))))
  ;; decimal helpers
  (define duckdb-double-to-decimal
    (let ([f (foreign-procedure "duckdb_double_to_decimal" (double unsigned-8 unsigned-8) (* duckdb_decimal))])
      (lambda (val width scale) (f val width scale))))
        (define duckdb-decimal-to-double
    (let ([f (foreign-procedure "duckdb_decimal_to_double" ((& duckdb_decimal)) double)])
      (lambda (val) (f val))))
  ;; prepared statements
  (define duckdb-prepare
    (let ([f (foreign-procedure "duckdb_prepare" ((& duckdb_connection) string (* duckdb_prepared_statement)) unsigned-int)])
      (lambda (con sql ps) (f con sql ps))))
  (define duckdb-destroy-prepare
    (let ([f (foreign-procedure "duckdb_destroy_prepare" ((* duckdb_prepared_statement)) void)])
      (lambda (ps) (f ps))))
  (define duckdb-prepare-error
    (let ([f (foreign-procedure "duckdb_prepare_error" ((& duckdb_prepared_statement)) string)])
      (lambda (ps) (f ps))))
  (define duckdb-nparams
    (let ([f (foreign-procedure "duckdb_nparams" ((& duckdb_prepared_statement)) unsigned-64)])
      (lambda (ps) (f ps))))
  (define duckdb-parameter-name
    (let ([f (foreign-procedure "duckdb_parameter_name" ((& duckdb_prepared_statement) unsigned-64) string)])
      (lambda (ps idx) (f ps idx))))
  (define duckdb-param-type
    (let ([f (foreign-procedure "duckdb_param_type" ((& duckdb_prepared_statement) unsigned-64) unsigned-int)])
      (lambda (ps param-idx) (f ps param-idx))))
  (define duckdb-clear-bindings
    (let ([f (foreign-procedure "duckdb_clear_bindings" ((& duckdb_prepared_statement)) unsigned-int)])
      (lambda (ps) (f ps))))
  (define duckdb-prepared-statement-type
    (let ([f (foreign-procedure "duckdb_prepared_statement_type" ((& duckdb_prepared_statement)) unsigned-int)])
      (lambda (ps) (f ps))))
  
  ;; bind values to prepared statments
  (define duckdb-bind-value
    (let ([f (foreign-procedure "duckdb_bind_value" ((& duckdb_prepared_statement) unsigned-64 (& duckdb_value)) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  ; param-idx-out:  `idx_t *param_idx_out`
  (define duckdb-bind-parameter-index
    (let ([f (foreign-procedure "duckdb_bind_parameter_index" ((& duckdb_prepared_statement) unsigned-64 string) unsigned-int)])
      (lambda (ps param-idx-out name) (f ps param-idx-out name))))
  (define duckdb-bind-boolean
    (let ([f (foreign-procedure "duckdb_bind_boolean" ((& duckdb_prepared_statement) unsigned-64 boolean) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-int8
    (let ([f (foreign-procedure "duckdb_bind_int8" ((& duckdb_prepared_statement) unsigned-64 integer-8) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-int16
    (let ([f (foreign-procedure "duckdb_bind_int16" ((& duckdb_prepared_statement) unsigned-64 integer-16) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-int32
    (let ([f (foreign-procedure "duckdb_bind_int32" ((& duckdb_prepared_statement) unsigned-64 integer-32) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-int64
    (let ([f (foreign-procedure "duckdb_bind_int64" ((& duckdb_prepared_statement) unsigned-64 integer-64) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-hugeint
    (let ([f (foreign-procedure "duckdb_bind_hugeint" ((& duckdb_prepared_statement) unsigned-64 (& duckdb_hugeint)) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-uhugeint
    (let ([f (foreign-procedure "duckdb_bind_uhugeint" ((& duckdb_prepared_statement) unsigned-64 (& duckdb_uhugeint)) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-decimal
    (let ([f (foreign-procedure "duckdb_bind_decimal" ((& duckdb_prepared_statement) unsigned-64 (& duckdb_decimal)) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-uint8
    (let ([f (foreign-procedure "duckdb_bind_uint8" ((& duckdb_prepared_statement) unsigned-64 unsigned-8) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-uint16
    (let ([f (foreign-procedure "duckdb_bind_uint16" ((& duckdb_prepared_statement) unsigned-64 unsigned-16) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-uint32
    (let ([f (foreign-procedure "duckdb_bind_uint32" ((& duckdb_prepared_statement) unsigned-64 unsigned-32) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-uint64
    (let ([f (foreign-procedure "duckdb_bind_uint64" ((& duckdb_prepared_statement) unsigned-64 unsigned-64) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-float
    (let ([f (foreign-procedure "duckdb_bind_float" ((& duckdb_prepared_statement) unsigned-64 float) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-double
    (let ([f (foreign-procedure "duckdb_bind_double" ((& duckdb_prepared_statement) unsigned-64 double) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-date
    (let ([f (foreign-procedure "duckdb_bind_date" ((& duckdb_prepared_statement) unsigned-64 (& duckdb_date)) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-time
    (let ([f (foreign-procedure "duckdb_bind_time" ((& duckdb_prepared_statement) unsigned-64 (& duckdb_time)) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-timestamp
    (let ([f (foreign-procedure "duckdb_bind_timestamp" ((& duckdb_prepared_statement) unsigned-64 (& duckdb_timestamp)) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-interval
    (let ([f (foreign-procedure "duckdb_bind_interval" ((& duckdb_prepared_statement) unsigned-64 (& duckdb_interval)) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-varchar
    (let ([f (foreign-procedure "duckdb_bind_varchar" ((& duckdb_prepared_statement) unsigned-64 string) unsigned-int)])
      (lambda (ps param-idx val) (f ps param-idx val))))
  (define duckdb-bind-varchar-length
    (let ([f (foreign-procedure "duckdb_bind_varchar_length" ((& duckdb_prepared_statement) unsigned-64 string unsigned-64) unsigned-int)])
      (lambda (ps param-idx val length) (f ps param-idx val length))))
  (define duckdb-bind-blob
    (let ([f (foreign-procedure "duckdb_bind_blob" ((& duckdb_prepared_statement) unsigned-64 void* unsigned-64) unsigned-int)])
      (lambda (ps param-idx data length) (f ps param-idx data length))))
  (define duckdb-bind-null
    (let ([f (foreign-procedure "duckdb_bind_null" ((& duckdb_prepared_statement) unsigned-64) unsigned-int)])
      (lambda (ps param-idx) (f ps param-idx))))
  
  ;; execute prepared statments
  (define duckdb-execute-prepared
    (let ([f (foreign-procedure "duckdb_execute_prepared" ((& duckdb_prepared_statement) (* duckdb_result)) unsigned-int)])
      (lambda (ps res) (f ps res))))
  ;; extract statments
  (define duckdb-extract-statements
    (let ([f (foreign-procedure "duckdb_extract_statements" ((& duckdb_connection) string (* duckdb_extracted_statements)) unsigned-64)])
      (lambda (con sql out-extracted-statments) (f con sql out-extracted-statments))))
  (define duckdb-prepare-extracted-statement
    (let ([f (foreign-procedure "duckdb_prepare_extracted_statement" ((& duckdb_connection) (& duckdb_extracted_statements) unsigned-64 (* duckdb_prepared_statement)) unsigned-int)])
     (lambda (con extracted-statements index out-prepared-statement) (f con extracted-statements index out-prepared-statement))))
  (define duckdb-extract-statements-error
    (let ([f (foreign-procedure "duckdb_extract_statements_error" ((& duckdb_extracted_statements)) string)])
      (lambda (extracted-statements) (f extracted-statements))))
  (define duckdb-destroy-extracted
    (let ([f (foreign-procedure "duckdb_destroy_extracted" ((* duckdb_extracted_statements)) void)])
      (lambda (extracted-statements) (f extracted-statements))))

  ;; pending result interface
  (define duckdb-pending-prepared 
    (let ([f (foreign-procedure "duckdb_pending_prepared" ((& duckdb_prepared_statement) (* duckdb_pending_result)) unsigned-int)])
      (lambda (ps res) (f ps res))))
  (define duckdb-destroy-pending 
    (let ([f (foreign-procedure "duckdb_destroy_pending" ((* duckdb_pending_result)) void)])
      (lambda (res) (f res))))
  (define duckdb-pending-error 
    (let ([f (foreign-procedure "duckdb_pending_error" ((& duckdb_pending_result)) string)])
      (lambda (res) (f res))))
  (define duckdb-pending-execute-task 
    (let ([f (foreign-procedure "duckdb_pending_execute_task" ((& duckdb_pending_result)) unsigned-int)])
      (lambda (res) (f res))))
  (define duckdb-pending-execute-check-state 
    (let ([f (foreign-procedure "duckdb_pending_execute_check_state" ((& duckdb_pending_result)) unsigned-int)])
      (lambda (res) (f res))))
  (define duckdb-execute-pending 
    (let ([f (foreign-procedure "duckdb_execute_pending" ((& duckdb_pending_result) (* duckdb_result)) unsigned-int)])
      (lambda (pending-result out-result) (f pending-result out-result))))
  (define duckdb-pending-execution-is-finished 
    (let ([f (foreign-procedure "duckdb_pending_execution_is_finished" (unsigned-int) boolean)])
      (lambda (pending-state) (f pending-state))))

  ;; value interface
  (define duckdb-destroy-value
    (let ([f (foreign-procedure "duckdb_destroy_value" ((* duckdb_value)) void)])
      (lambda (value) (f value))))
  (define duckdb-create-varchar
    (let ([f (foreign-procedure "duckdb_create_varchar" (string) (* duckdb_value))])
      (lambda (value) (f value))))
  (define duckdb-create-varchar-length
    (let ([f (foreign-procedure "duckdb_create_varchar_length" (string unsigned-64) (* duckdb_value))])
      (lambda (text length) (f text length))))
  (define duckdb-create-int64
    (let ([f (foreign-procedure "duckdb_create_int64" (integer-64) (* duckdb_value))])
      (lambda (value) (f value))))
  (define duckdb-create-struct-value
    (let ([f (foreign-procedure "duckdb_create_struct_value" ((& duckdb_logical_type) (* duckdb_value)) (* duckdb_value))])
      (lambda (type values) (f type values))))
  (define duckdb-create-list-value
    (let ([f (foreign-procedure "duckdb_create_list_value" ((& duckdb_logical_type) (* duckdb_value) unsigned-64) (* duckdb_value))])
      (lambda (type values value-count) (f type values value-count))))
  (define duckdb-create-array-value
    (let ([f (foreign-procedure "duckdb_create_array_value" ((& duckdb_logical_type) (* duckdb_value) unsigned-64) (* duckdb_value))])
      (lambda (type values value-count) (f type values value-count))))
  (define duckdb-get-varchar
    (let ([f (foreign-procedure "duckdb_get_varchar" ((& duckdb_value)) string)])
      (lambda (value) (f value))))
  (define duckdb-get-int64
    (let ([f (foreign-procedure "duckdb_get_int64" ((& duckdb_value)) integer-64)])
      (lambda (value) (f value))))

  ;; logical type interface
  (define duckdb-create-logical-type
    (let ([f (foreign-procedure "duckdb_create_logical_type" (unsigned-int) (* duckdb_logical_type))])
      (lambda (type) (f type))))
  (define duckdb-logical-type-get-alias
    (let ([f (foreign-procedure "duckdb_logical_type_get_alias" ((& duckdb_logical_type)) string)])
      (lambda (type) (f type)))) 
  (define duckdb-create-list-type
    (let ([f (foreign-procedure "duckdb_create_list_type" ((& duckdb_logical_type)) (* duckdb_logical_type))])
     (lambda (type) (f type)))) 
  (define duckdb-create-array-type
    (let ([f (foreign-procedure "duckdb_create_array_type" ((& duckdb_logical_type) unsigned-64) (* duckdb_logical_type))])
      (lambda (type array-size) (f type array-size)))) 
  (define duckdb-create-map-type
    (let ([f (foreign-procedure "duckdb_create_map_type" ((& duckdb_logical_type) (& duckdb_logical_type)) (* duckdb_logical_type))])
      (lambda (key-type value-type) (f key-type value-type)))) 
  (define duckdb-create-union-type
    (let ([f (foreign-procedure "duckdb_create_union_type" ((* duckdb_logical_type) void* unsigned-64) (* duckdb_logical_type))])
      (lambda (member-types member-names member-count) (f member-types member-names member-count)))) 
  (define duckdb-create-struct-type
    (let ([f (foreign-procedure "duckdb_create_struct_type" ((* duckdb_logical_type) void* unsigned-64) (* duckdb_logical_type))])
      (lambda (member-types member-names member-count) (f member-types member-names member-count)))) 
  (define duckdb-create-enum-type
    (let ([f (foreign-procedure "duckdb_create_enum_type" (void* unsigned-64) (* duckdb_logical_type))])
      (lambda (member-names member-count) (f member-names member-count)))) 
  (define duckdb-create-decimal-type
    (let ([f (foreign-procedure "duckdb_create_decimal_type" (unsigned-8 unsigned-8) (* duckdb_logical_type))])
      (lambda (width scale) (f width scale)))) 
  (define duckdb-get-type-id
    (let ([f (foreign-procedure "duckdb_get_type_id" ((& duckdb_logical_type)) unsigned-int)])
      (lambda (type) (f type)))) 
  (define duckdb-decimal-width
    (let ([f (foreign-procedure "duckdb_decimal_width" ((& duckdb_logical_type)) unsigned-8)])
      (lambda (type) (f type)))) 
  (define duckdb-decimal-scale
    (let ([f (foreign-procedure "duckdb_decimal_scale" ((& duckdb_logical_type)) unsigned-8)])
      (lambda (type) (f type)))) 
  (define duckdb-decimal-internal-type
    (let ([f (foreign-procedure "duckdb_decimal_internal_type" ((& duckdb_logical_type)) unsigned-int)])
      (lambda (type) (f type)))) 
  (define duckdb-enum-internal-type
    (let ([f (foreign-procedure "duckdb_enum_internal_type" ((& duckdb_logical_type)) unsigned-int)])
      (lambda (type) (f type))))
  (define duckdb-enum-dictionary-size
    (let ([f (foreign-procedure "duckdb_enum_dictionary_size" ((& duckdb_logical_type)) string)])
      (lambda (type) (f type))))
  (define duckdb-enum-dictionary-value
    (let ([f (foreign-procedure "duckdb_enum_dictionary_value" ((& duckdb_logical_type)  unsigned-64) string)])
      (lambda (type index) (f type index)))) 
  (define duckdb-list-type-child-type
    (let ([f (foreign-procedure "duckdb_list_type_child_type" ((& duckdb_logical_type)) (* duckdb_logical_type))])
      (lambda (type) (f type)))) 
  (define duckdb-array-type-child-type
    (let ([f (foreign-procedure "duckdb_array_type_child_type" ((& duckdb_logical_type)) (* duckdb_logical_type))])
      (lambda (type) (f type)))) 
  (define duckdb-array-type-array-size
    (let ([f (foreign-procedure "duckdb_array_type_array_size" ((& duckdb_logical_type)) unsigned-64)])
      (lambda (type) (f type)))) 
  (define duckdb-map-type-key-type
    (let ([f (foreign-procedure "duckdb_map_type_key_type" ((& duckdb_logical_type)) (* duckdb_logical_type))])
      (lambda (type) (f type)))) 
  (define duckdb-map-type-value-type
    (let ([f (foreign-procedure "duckdb_map_type_value_type" ((& duckdb_logical_type)) (* duckdb_logical_type))])
     (lambda (type) (f type))))
  (define duckdb-struct-type-child-count
    (let ([f (foreign-procedure "duckdb_struct_type_child_count" ((& duckdb_logical_type)) unsigned-64)])
      (lambda (type) (f type)))) 
  (define duckdb-struct-type-child-name
    (let ([f (foreign-procedure "duckdb_struct_type_child_name" ((& duckdb_logical_type) unsigned-64) string)])
      (lambda (type index) (f type index)))) 
  (define duckdb-struct-type-child-type
    (let ([f (foreign-procedure "duckdb_struct_type_child_type" ((& duckdb_logical_type) unsigned-64) (* duckdb_logical_type))])
      (lambda (type index) (f type index)))) 
  (define duckdb-union-type-member-count
    (let ([f (foreign-procedure "duckdb_union_type_member_count" ((& duckdb_logical_type)) unsigned-64)])
      (lambda (type) (f type)))) 
  (define duckdb-union-type-member-name
    (let ([f (foreign-procedure "duckdb_union_type_member_name" ((& duckdb_logical_type)  unsigned-64) string)])
      (lambda (type index) (f type index)))) 
  (define duckdb-union-type-member-type
    (let ([f (foreign-procedure "duckdb_union_type_member_type" ((& duckdb_logical_type)  unsigned-64) (* duckdb_logical_type))])
      (lambda (type index) (f type index)))) 
  (define duckdb-destroy-logical-type
    (let ([f (foreign-procedure "duckdb_destroy_logical_type" ((* duckdb_logical_type)) void)])
    (lambda (type) (f type))))

  ;; data chunk interface
  (define duckdb-create-data-chunk
    (let ([f (foreign-procedure "duckdb_create_data_chunk" ((* duckdb_logical_type) unsigned-64) (* duckdb_data_chunk))])
      (lambda (types column-count) (f types column-count))))
  (define duckdb-destroy-data-chunk
    (let ([f (foreign-procedure "duckdb_destroy_data_chunk" ((* duckdb_data_chunk)) void)])
      (lambda (chunk) (f chunk))))
  (define duckdb-data-chunk-reset
    (let ([f (foreign-procedure "duckdb_data_chunk_reset" ((& duckdb_data_chunk)) void)])
      (lambda (chunk) (f chunk))))
  (define duckdb-data-chunk-get-column-count
    (let ([f (foreign-procedure "duckdb_data_chunk_get_column_count" ((& duckdb_data_chunk)) unsigned-64)])
      (lambda (chunk) (f chunk))))
  (define duckdb-data-chunk-get-vector
    (let ([f (foreign-procedure "duckdb_data_chunk_get_vector" ((& duckdb_data_chunk) unsigned-64) (* duckdb_vector))])
      (lambda (chunk col-idx) (f chunk col-idx))))
  (define duckdb-data-chunk-get-size
    (let ([f (foreign-procedure "duckdb_data_chunk_get_size" ((& duckdb_data_chunk)) unsigned-64)])
      (lambda (chunk) (f chunk))))
  (define duckdb-data-chunk-set-size
    (let ([f (foreign-procedure "duckdb_data_chunk_set_size" ((& duckdb_data_chunk) unsigned-64) void)])
      (lambda (chunk size) (f chunk size))))

  ;; vector interface
  (define duckdb-vector-get-column-type
    (let ([f (foreign-procedure "duckdb_vector_get_column_type" ((& duckdb_vector)) (* duckdb_logical_type))])
       (lambda (vector) (f vector))))
  (define duckdb-vector-get-data
    (let ([f (foreign-procedure "duckdb_vector_get_data" ((& duckdb_vector)) void*)])
       (lambda (vector) (f vector)                   )))
  (define duckdb-vector-get-validity
    (let ([f (foreign-procedure "duckdb_vector_get_validity" ((& duckdb_vector)) unsigned-64)])
       (lambda (vector) (f vector)                   )))
  (define duckdb-vector-ensure-validity-writable
    (let ([f (foreign-procedure "duckdb_vector_ensure_validity_writable"  ((& duckdb_vector)) void)])
       (lambda (vector) (f vector))))
  (define duckdb-vector-assign-string-element
    (let ([f (foreign-procedure "duckdb_vector_assign_string_element" ((& duckdb_vector) unsigned-64 string) void)])
       (lambda (vector index str) (f vector index str)         )))
  (define duckdb-vector-assign-string-element-len
    (let ([f (foreign-procedure "duckdb_vector_assign_string_element_len" ((& duckdb_vector) unsigned-64 string unsigned-64) void                   )])
       (lambda (vector index str str_len) (f vector index str str_len) )))
  (define duckdb-list-vector-get-child
    (let ([f (foreign-procedure "duckdb_list_vector_get_child" ((& duckdb_vector)) (* duckdb_vector))])
       (lambda (vector) (f vector))))
  (define duckdb-list-vector-get-size
    (let ([f (foreign-procedure "duckdb_list_vector_get_size" ((& duckdb_vector)) unsigned-64)])
       (lambda (vector) (f vector))))
  (define duckdb-list-vector-set-size
    (let ([f (foreign-procedure "duckdb_list_vector_set_size" ((& duckdb_vector) unsigned-64) unsigned-int)])
       (lambda (vector  size) (f vector  size))))
  (define duckdb-list-vector-reserve
    (let ([f (foreign-procedure "duckdb_list_vector_reserve" ((& duckdb_vector) unsigned-64) unsigned-int)])
       (lambda (vector  required-capacity) (f vector  required-capacity))))
  (define duckdb-struct-vector-get-child
    (let ([f (foreign-procedure "duckdb_struct_vector_get_child" ((& duckdb_vector) unsigned-64) (* duckdb_vector))])
       (lambda (vector  index) (f vector  index))))
  (define duckdb-array-vector-get-child
    (let ([f (foreign-procedure "duckdb_array_vector_get_child" ((& duckdb_vector)) (* duckdb_vector))])
       (lambda (vector) (f vector))))

  ;; validity mask functions
  (define duckdb-validity-row-is-valid
    (let ([f (foreign-procedure "duckdb_validity_row_is_valid" (unsigned-64 unsigned-64) boolean)])
      (lambda (validity row) (f validity row))))
  (define duckdb-validity-set-row-validity
    (let ([f (foreign-procedure "duckdb_validity_set_row_validity" (unsigned-64 unsigned-64 boolean) void)])
      (lambda (validity row valid) (f validity row valid) )))
  (define duckdb-validity-set-row-invalid
    (let ([f (foreign-procedure "duckdb_validity_set_row_invalid" (unsigned-64 unsigned-64) void)])
      (lambda (validity row) (f validity row))))
  (define duckdb-validity-set-row-valid
    (let ([f (foreign-procedure "duckdb_validity_set_row_valid" (unsigned-64 unsigned-64) void)])
      (lambda (validity row) (f validity row))))

  ;; table functions
  (define duckdb-create-table-function
    (let ([f (foreign-procedure "duckdb_create_table_function" () (* duckdb_table_function))])
      (lambda () (f))))
  (define duckdb-destroy-table-function
    (let ([f (foreign-procedure "duckdb_destroy_table_function" ((* duckdb_table_function)) void)])
    (lambda (table-function) (f table-function))))
  (define duckdb-table-function-set-name
    (let ([f (foreign-procedure "duckdb_table_function_set_name" ((& duckdb_table_function) string)void)])
      (lambda  (table-function name) (f table-function name))))
  (define duckdb-table-function-add-parameter
    (let ([f (foreign-procedure "duckdb_table_function_add_parameter" ((& duckdb_table_function) (& duckdb_logical_type))void)])
      (lambda (table-function type) (f table-function type))))
  (define duckdb-table-function-add-named-parameter
    (let ([f (foreign-procedure "duckdb_table_function_add_named_parameter" ((& duckdb_table_function) string (& duckdb_logical_type))void)])
      (lambda (table-function name type) (f table-function name type))))
  (define duckdb-table-function-set-extra-info
    (let ([f (foreign-procedure "duckdb_table_function_set_extra_info" ((& duckdb_table_function) void* void*)void)])
      (lambda (table-function extra_info destroy) (f table-function extra_info destroy))))
  (define duckdb-table-function-set-bind
    (let ([f (foreign-procedure "duckdb_table_function_set_bind" ((& duckdb_table_function) void*)void)])
      (lambda (table-function bind) (f table-function bind))))
  (define duckdb-table-function-set-init
    (let ([f (foreign-procedure "duckdb_table_function_set_init" ((& duckdb_table_function) void*)void)])
      (lambda (table-function init) (f table-function init))))
  (define duckdb-table-function-set-local-init
    (let ([f (foreign-procedure "duckdb_table_function_set_local_init" ((& duckdb_table_function) void*)void)])
      (lambda (table-function init) (f table-function init))))
  (define duckdb-table-function-set-function
    (let ([f (foreign-procedure "duckdb_table_function_set_function" ((& duckdb_table_function) void*)void)])
      (lambda (table-function function) (f table-function function))))
  (define duckdb-table-function-supports-projection-pushdown
    (let ([f (foreign-procedure "duckdb_table_function_supports_projection_pushdown" ((& duckdb_table_function) boolean)void)])
      (lambda (table-function pushdown) (f table-function pushdown))))
  (define duckdb-register-table-function
    (let ([f (foreign-procedure "duckdb_register_table_function" ((& duckdb_connection) (& duckdb_table_function)) unsigned-int)])
      (lambda (con function) (f con function))))
  ;; table function bind 
  (define duckdb-bind-get-extra-info
    (let ([f (foreign-procedure "duckdb_bind_get_extra_info" ((& duckdb_bind_info)) void*)])
      (lambda (info) (f info))))
  (define duckdb-bind-add-result-column
    (let ([f (foreign-procedure "duckdb_bind_add_result_column" ((& duckdb_bind_info) string (& duckdb_logical_type)) void)])
      (lambda (info name type) (f info name type))))
  (define duckdb-bind-get-parameter-count
    (let ([f (foreign-procedure "duckdb_bind_get_parameter_count" ((& duckdb_bind_info)) unsigned-64)])
      (lambda (info) (f info))))
  (define duckdb-bind-get-parameter
    (let ([f (foreign-procedure "duckdb_bind_get_parameter" ((& duckdb_bind_info)) (& duckdb_value))])
      (lambda (info index) (f info index))))
  (define duckdb-bind-get-named-parameter
    (let ([f (foreign-procedure "duckdb_bind_get_named_parameter" ((& duckdb_bind_info) string) (* duckdb_value))])
      (lambda (info name) (f info name))))
  (define duckdb-bind-set-bind-data
    (let ([f (foreign-procedure "duckdb_bind_set_bind_data" ((& duckdb_bind_info) void* void*) void)])
      (lambda (info bind-data destroy) (f info bind-data destroy))))
  (define duckdb-bind-set-cardinality
    (let ([f (foreign-procedure "duckdb_bind_set_cardinality" ((& duckdb_bind_info) void* void*) void)])
      (lambda (info cardinality is-exact) (f info cardinality is-exact))))
  (define duckdb-bind-set-error
    (let ([f (foreign-procedure "duckdb_bind_set_error" ((& duckdb_bind_info) string) void)])
      (lambda (info error) (f info error))))
  
  ;; table function init
  (define duckdb-init-get-extra-info
    (let ([f (foreign-procedure "duckdb_init_get_extra_info" ((& duckdb_bind_info)) void*)])
      (lambda (info) (f info))))
  (define duckdb-init-get-bind-data
    (let ([f (foreign-procedure "duckdb_init_get_bind_data" ((& duckdb_bind_info)) void*)])
      (lambda (info) (f info))))
  (define duckdb-init-set-init-data
    (let ([f (foreign-procedure "duckdb_init_set_init_data" ((& duckdb_bind_info) void* void*) void)])
      (lambda (info init-data destroy) (f info init-data destroy))))
  (define duckdb-init-get-column-count
    (let ([f (foreign-procedure "duckdb_init_get_column_count" ((& duckdb_bind_info)) unsigned-64)])
      (lambda (info) (f info))))
  (define duckdb-init-get-column-index
    (let ([f (foreign-procedure "duckdb_init_get_column_index" ((& duckdb_bind_info) unsigned-64) unsigned-64)])
      (lambda (info column-index) (f info column-index))))
  (define duckdb-init-set-max-threads
    (let ([f (foreign-procedure "duckdb_init_set_max_threads" ((& duckdb_bind_info) unsigned-64) void)])
      (lambda (info max-threads) (f info max-threads))))
  (define duckdb-init-set-error
    (let ([f (foreign-procedure "duckdb_init_set_error" ((& duckdb_bind_info) string) void)])
      (lambda (info error) (f info error))))

  ;; table function
  (define duckdb-function-get-extra-info
    (let ([f (foreign-procedure "duckdb_function_get_extra_info" ((& duckdb_function_info)) void*)])
      (lambda (info) (f info))))
  (define duckdb-function-get-bind-data
    (let ([f (foreign-procedure "duckdb_function_get_bind_data" ((& duckdb_function_info)) void*)])
      (lambda (info) (f info))))
  (define duckdb-function-get-init-data
    (let ([f (foreign-procedure "duckdb_function_get_init_data" ((& duckdb_function_info)) void*)])
      (lambda (info) (f info))))
  (define duckdb-function-get-local-init-data
    (let ([f (foreign-procedure "duckdb_function_get_local_init_data" ((& duckdb_function_info)) void*)])
      (lambda (info) (f info))))
  (define duckdb-function-set-error
    (let ([f (foreign-procedure "duckdb_init_set_error" ((& duckdb_function_info) string) void)])
      (lambda (info error) (f info error))))

  ;; Replacement Scans
  (define duckdb-add-replacement-scan
    (let ([f (foreign-procedure "duckdb_add_replacement_scan" ((& duckdb_database) void* void* void*) void)])
      (lambda (db replacement extra-data delete-callback) (f db replacement extra-data delete-callback))))
  (define duckdb-replacement-scan-set-function-name
    (let ([f (foreign-procedure "duckdb_replacement_scan_set_function_name" ((& duckdb_replacement_scan_info) string) void)])
      (lambda (info function-name) (f info function-name))))
  (define duckdb-replacement-scan-add-parameter
    (let ([f (foreign-procedure "duckdb_replacement_scan_add_parameter" ((& duckdb_replacement_scan_info) (& duckdb_value)) void)])
      (lambda (info parameter) (f info parameter))))
  (define duckdb-replacement-scan-set-error
    (let ([f (foreign-procedure "duckdb_replacement_scan_set_error" ((& duckdb_replacement_scan_info) string) void)])
      (lambda (info error) (f info error))))


  ;; Appender
  (define duckdb-appender-create
    (let ([f (foreign-procedure "duckdb_appender_create" ((& duckdb_connection) string string (* duckdb_appender)) unsigned-int)])
      (lambda (con schema table out-appender) (f con schema table out-appender))))
  (define duckdb-appender-column-count
    (let ([f (foreign-procedure "duckdb_appender_column_count" ((& duckdb_appender)) unsigned-64)])
      (lambda (appender) (f appender))))
  (define duckdb-appender-column-type
    (let ([f (foreign-procedure "duckdb_appender_column_type" ((& duckdb_appender)  unsigned-64) (* duckdb_logical_type))])
      (lambda (appender col-idx) (f appender col-idx))))
  (define duckdb-appender-error
    (let ([f (foreign-procedure "duckdb_appender_error" ((& duckdb_appender)) string)])
      (lambda (appender) (f appender))))
  (define duckdb-appender-flush
    (let ([f (foreign-procedure "duckdb_appender_flush" ((& duckdb_appender)) unsigned-int)])
      (lambda (appender) (f appender))))
  (define duckdb-appender-close
    (let ([f (foreign-procedure "duckdb_appender_close" ((& duckdb_appender)) unsigned-int)])
      (lambda (appender) (f appender))))
  (define duckdb-appender-destroy
    (let ([f (foreign-procedure "duckdb_appender_destroy" ((* duckdb_appender)) unsigned-int)])
      (lambda (appender) (f appender))))
  (define duckdb-appender-begin-row
    (let ([f (foreign-procedure "duckdb_appender_begin_row" ((& duckdb_appender)) unsigned-int)])
      (lambda (appender) (f appender))))
  (define duckdb-appender-end-row
    (let ([f (foreign-procedure "duckdb_appender_end_row" ((& duckdb_appender)) unsigned-int)])
      (lambda (appender) (f appender))))
  (define duckdb-append-bool
    (let ([f (foreign-procedure "duckdb_append_bool" ((& duckdb_appender) boolean) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-int8
    (let ([f (foreign-procedure "duckdb_append_int8" ((& duckdb_appender) integer-8) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-int16
    (let ([f (foreign-procedure "duckdb_append_int16" ((& duckdb_appender) integer-16) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-int32
    (let ([f (foreign-procedure "duckdb_append_int32" ((& duckdb_appender) integer-32) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-int64
    (let ([f (foreign-procedure "duckdb_append_int64" ((& duckdb_appender) integer-64) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-hugeint
    (let ([f (foreign-procedure "duckdb_append_hugeint" ((& duckdb_appender) (& duckdb_hugeint)) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-uint8
    (let ([f (foreign-procedure "duckdb_append_uint8" ((& duckdb_appender) unsigned-8) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-uint16
    (let ([f (foreign-procedure "duckdb_append_uint16" ((& duckdb_appender) unsigned-16) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-uint32
    (let ([f (foreign-procedure "duckdb_append_uint32" ((& duckdb_appender) unsigned-32) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-uint64
    (let ([f (foreign-procedure "duckdb_append_uint64" ((& duckdb_appender) unsigned-64) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-uhugeint
    (let ([f (foreign-procedure "duckdb_append_uhugeint" ((& duckdb_appender) (& duckdb_uhugeint)) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-float
    (let ([f (foreign-procedure "duckdb_append_float" ((& duckdb_appender) float) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-double
    (let ([f (foreign-procedure "duckdb_append_double" ((& duckdb_appender) double) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-date
    (let ([f (foreign-procedure "duckdb_append_date" ((& duckdb_appender) (& duckdb_date)) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-time
    (let ([f (foreign-procedure "duckdb_append_time" ((& duckdb_appender) (& duckdb_time)) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-timestamp
    (let ([f (foreign-procedure "duckdb_append_timestamp" ((& duckdb_appender) (& duckdb_timestamp)) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-interval
    (let ([f (foreign-procedure "duckdb_append_interval" ((& duckdb_appender) (& duckdb_interval)) unsigned-int)])
      (lambda (appender value) (f appender value))))
  (define duckdb-append-varchar
    (let ([f (foreign-procedure "duckdb_append_varchar" ((& duckdb_appender) string) unsigned-int)])
      (lambda (appender val) (f appender val))))
  (define duckdb-append-varchar-length
    (let ([f (foreign-procedure "duckdb_append_varchar_length" ((& duckdb_appender) string unsigned-64) unsigned-int)])
      (lambda (appender val length) (f appender val length))))
  (define duckdb-append-blob
    (let ([f (foreign-procedure "duckdb_append_blob" ((& duckdb_appender) void* unsigned-64) unsigned-int)])
      (lambda (appender data length) (f appender data length))))
  (define duckdb-append-null
    (let ([f (foreign-procedure "duckdb_append_null" ((& duckdb_appender)) unsigned-int)])
      (lambda (appender) (f appender))))
  (define duckdb-append-data-chunk
    (let ([f (foreign-procedure "duckdb_append_data_chunk" ((& duckdb_appender) (& duckdb_data_chunk)) unsigned-int)])
      (lambda (appender chunk) (f appender chunk))))

  ;; Arrow Interface (DEPRECATION)

  ;; Threading Information
  (define duckdb-execute-tasks
    (let ([f (foreign-procedure "duckdb_execute_tasks" ((& duckdb_database) unsigned-64) void)])
      (lambda (db max-tasks) (f db max-tasks))))
  (define duckdb-create-task-state
    (let ([f (foreign-procedure "duckdb_create_task_state" ((& duckdb_database)) (* duckdb_task_state))])
      (lambda (db) (f db))))
  (define duckdb-execute-tasks-state
    (let ([f (foreign-procedure "duckdb_execute_tasks" ((& duckdb_task_state)) void)])
      (lambda (state) (f state))))
  (define duckdb-execute-n-tasks-state
    (let ([f (foreign-procedure "duckdb_execute_n_tasks_state" ((& duckdb_task_state) unsigned-64) unsigned-64)])
      (lambda (state max-tasks) (f state max-tasks))))
  (define duckdb-finish-execution
    (let ([f (foreign-procedure "duckdb_finish_execution" ((& duckdb_task_state)) void)])
      (lambda (state) (f state))))
  (define duckdb-task-state-is-finished
    (let ([f (foreign-procedure "duckdb_task_state_is_finished" ((& duckdb_task_state)) boolean)])
      (lambda (state) (f state))))
  (define duckdb-destroy-task-state
    (let ([f (foreign-procedure "duckdb_destroy_task_state" ((& duckdb_task_state)) void)])
      (lambda (state) (f state))))
  (define duckdb-execution-is-finished
    (let ([f (foreign-procedure "duckdb_execution_is_finished" ((& duckdb_connection)) void)])
      (lambda (con) (f con))))
  
  ;; Streaming Result Interface
  (define duckdb-fetch-chunk
    (let ([f (foreign-procedure "duckdb_fetch_chunk" ((& duckdb_result)) (* duckdb_data_chunk))])
      (lambda (res) (f res))))

  (printf "loading duckdb ~a\n\n" (duckdb-library-version))
  )