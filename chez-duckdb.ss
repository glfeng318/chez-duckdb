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

    ;;
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
    (let ([f (foreign-procedure "duckdb_interrupt" ((& duckdb_connection)) int)])
      (lambda (con) (f con))))
  ;; the return `(& duckdb_query_progress_type)` cause Warning in compile: possible incorrect argument count in call (f con)
  ;; changed to `(* duckdb_query_progress_type)`
  (define duckdb-query-progress
    (let ([f (foreign-procedure "duckdb_query_progress" ((& duckdb_connection)) (* duckdb_query_progress_type))])
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
  (define duckdb_execution_is_finished
    (let ([f (foreign-procedure "duckdb_execution_is_finished" ((& duckdb_connection)) void)])
      (lambda (con) (f con))))
  
  ;; Streaming Result Interface
  (define duckdb-fetch-chunk
    (let ([f (foreign-procedure "duckdb_fetch_chunk" ((& duckdb_result)) (* duckdb_data_chunk))])
      (lambda (res) (f res))))

  (printf "loading duckdb ~s\n\n" (duckdb-library-version))
  )