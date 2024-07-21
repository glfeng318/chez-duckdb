DUCKDB_API duckdb_state duckdb_open(const char *path, duckdb_database *out_database);
DUCKDB_API duckdb_state duckdb_open_ext(const char *path, duckdb_database *out_database, duckdb_config config, char **out_error);
DUCKDB_API void duckdb_close(duckdb_database *database);
DUCKDB_API duckdb_state duckdb_connect(duckdb_database database, duckdb_connection *out_connection);
DUCKDB_API void duckdb_interrupt(duckdb_connection connection);
DUCKDB_API duckdb_query_progress_type duckdb_query_progress(duckdb_connection connection);
DUCKDB_API void duckdb_disconnect(duckdb_connection *connection);
DUCKDB_API const char *duckdb_library_version();

DUCKDB_API duckdb_state duckdb_create_config(duckdb_config *out_config);
DUCKDB_API size_t duckdb_config_count();
DUCKDB_API duckdb_state duckdb_get_config_flag(size_t index, const char **out_name, const char **out_description);
DUCKDB_API duckdb_state duckdb_set_config(duckdb_config config, const char *name, const char *option);
DUCKDB_API void duckdb_destroy_config(duckdb_config *config);
`
DUCKDB_API duckdb_state duckdb_query(duckdb_connection connection, const char *query, duckdb_result *out_result);
DUCKDB_API void duckdb_destroy_result(duckdb_result *result);
DUCKDB_API const char *duckdb_column_name(duckdb_result *result, idx_t col);
DUCKDB_API duckdb_type duckdb_column_type(duckdb_result *result, idx_t col);
DUCKDB_API duckdb_statement_type duckdb_result_statement_type(duckdb_result result);
DUCKDB_API duckdb_logical_type duckdb_column_logical_type(duckdb_result *result, idx_t col);
DUCKDB_API idx_t duckdb_column_count(duckdb_result *result);
DUCKDB_API idx_t duckdb_rows_changed(duckdb_result *result);
DUCKDB_API const char *duckdb_result_error(duckdb_result *result);

DUCKDB_API duckdb_result_type duckdb_result_return_type(duckdb_result result);

DUCKDB_API void *duckdb_malloc(size_t size);
DUCKDB_API void duckdb_free(void *ptr);
DUCKDB_API idx_t duckdb_vector_size();
DUCKDB_API bool duckdb_string_is_inlined(duckdb_string_t string);

DUCKDB_API duckdb_date_struct duckdb_from_date(duckdb_date date);
DUCKDB_API duckdb_date duckdb_to_date(duckdb_date_struct date);
DUCKDB_API bool duckdb_is_finite_date(duckdb_date date);
DUCKDB_API duckdb_time_struct duckdb_from_time(duckdb_time time);
DUCKDB_API duckdb_time_tz duckdb_create_time_tz(int64_t micros, int32_t offset);
DUCKDB_API duckdb_time_tz_struct duckdb_from_time_tz(duckdb_time_tz micros);
DUCKDB_API duckdb_time duckdb_to_time(duckdb_time_struct time);
DUCKDB_API duckdb_timestamp_struct duckdb_from_timestamp(duckdb_timestamp ts);
DUCKDB_API duckdb_timestamp duckdb_to_timestamp(duckdb_timestamp_struct ts);
DUCKDB_API bool duckdb_is_finite_timestamp(duckdb_timestamp ts);

DUCKDB_API double duckdb_hugeint_to_double(duckdb_hugeint val);
DUCKDB_API duckdb_hugeint duckdb_double_to_hugeint(double val);

DUCKDB_API double duckdb_uhugeint_to_double(duckdb_uhugeint val);
DUCKDB_API duckdb_uhugeint duckdb_double_to_uhugeint(double val);

DUCKDB_API duckdb_decimal duckdb_double_to_decimal(double val, uint8_t width, uint8_t scale);
DUCKDB_API double duckdb_decimal_to_double(duckdb_decimal val);

DUCKDB_API duckdb_state duckdb_prepare(duckdb_connection connection, const char *query, duckdb_prepared_statement *out_prepared_statement);
DUCKDB_API void duckdb_destroy_prepare(duckdb_prepared_statement *prepared_statement);
DUCKDB_API const char *duckdb_prepare_error(duckdb_prepared_statement prepared_statement);
DUCKDB_API idx_t duckdb_nparams(duckdb_prepared_statement prepared_statement);
DUCKDB_API const char *duckdb_parameter_name(duckdb_prepared_statement prepared_statement, idx_t index);
DUCKDB_API duckdb_type duckdb_param_type(duckdb_prepared_statement prepared_statement, idx_t param_idx);
DUCKDB_API duckdb_state duckdb_clear_bindings(duckdb_prepared_statement prepared_statement);
DUCKDB_API duckdb_statement_type duckdb_prepared_statement_type(duckdb_prepared_statement statement);

DUCKDB_API duckdb_state duckdb_bind_value(duckdb_prepared_statement prepared_statement, idx_t param_idx, duckdb_value val);
DUCKDB_API duckdb_state duckdb_bind_parameter_index(duckdb_prepared_statement prepared_statement, idx_t *param_idx_out, const char *name);
DUCKDB_API duckdb_state duckdb_bind_boolean(duckdb_prepared_statement prepared_statement, idx_t param_idx, bool val);
DUCKDB_API duckdb_state duckdb_bind_int8(duckdb_prepared_statement prepared_statement, idx_t param_idx, int8_t val);
DUCKDB_API duckdb_state duckdb_bind_int16(duckdb_prepared_statement prepared_statement, idx_t param_idx, int16_t val);
DUCKDB_API duckdb_state duckdb_bind_int32(duckdb_prepared_statement prepared_statement, idx_t param_idx, int32_t val);
DUCKDB_API duckdb_state duckdb_bind_int64(duckdb_prepared_statement prepared_statement, idx_t param_idx, int64_t val);
DUCKDB_API duckdb_state duckdb_bind_hugeint(duckdb_prepared_statement prepared_statement, idx_t param_idx, duckdb_hugeint val);
DUCKDB_API duckdb_state duckdb_bind_uhugeint(duckdb_prepared_statement prepared_statement, idx_t param_idx, duckdb_uhugeint val);
DUCKDB_API duckdb_state duckdb_bind_decimal(duckdb_prepared_statement prepared_statement, idx_t param_idx, duckdb_decimal val);
DUCKDB_API duckdb_state duckdb_bind_uint8(duckdb_prepared_statement prepared_statement, idx_t param_idx, uint8_t val);
DUCKDB_API duckdb_state duckdb_bind_uint16(duckdb_prepared_statement prepared_statement, idx_t param_idx, uint16_t val);
DUCKDB_API duckdb_state duckdb_bind_uint32(duckdb_prepared_statement prepared_statement, idx_t param_idx, uint32_t val);
DUCKDB_API duckdb_state duckdb_bind_uint64(duckdb_prepared_statement prepared_statement, idx_t param_idx, uint64_t val);
DUCKDB_API duckdb_state duckdb_bind_float(duckdb_prepared_statement prepared_statement, idx_t param_idx, float val);
DUCKDB_API duckdb_state duckdb_bind_double(duckdb_prepared_statement prepared_statement, idx_t param_idx, double val);
DUCKDB_API duckdb_state duckdb_bind_date(duckdb_prepared_statement prepared_statement, idx_t param_idx, duckdb_date val);
DUCKDB_API duckdb_state duckdb_bind_time(duckdb_prepared_statement prepared_statement, idx_t param_idx, duckdb_time val);
DUCKDB_API duckdb_state duckdb_bind_timestamp(duckdb_prepared_statement prepared_statement, idx_t param_idx, duckdb_timestamp val);
DUCKDB_API duckdb_state duckdb_bind_interval(duckdb_prepared_statement prepared_statement, idx_t param_idx, duckdb_interval val);
DUCKDB_API duckdb_state duckdb_bind_varchar(duckdb_prepared_statement prepared_statement, idx_t param_idx, const char *val);
DUCKDB_API duckdb_state duckdb_bind_varchar_length(duckdb_prepared_statement prepared_statement, idx_t param_idx, const char *val, idx_t length);
DUCKDB_API duckdb_state duckdb_bind_blob(duckdb_prepared_statement prepared_statement, idx_t param_idx, const void *data, idx_t length);
DUCKDB_API duckdb_state duckdb_bind_null(duckdb_prepared_statement prepared_statement, idx_t param_idx);

DUCKDB_API duckdb_state duckdb_execute_prepared(duckdb_prepared_statement prepared_statement, duckdb_result *out_result);

DUCKDB_API idx_t duckdb_extract_statements(duckdb_connection connection, const char *query, duckdb_extracted_statements *out_extracted_statements);
DUCKDB_API duckdb_state duckdb_prepare_extracted_statement(duckdb_connection connection, duckdb_extracted_statements extracted_statements, idx_t index, duckdb_prepared_statement *out_prepared_statement);
DUCKDB_API const char *duckdb_extract_statements_error(duckdb_extracted_statements extracted_statements);
DUCKDB_API void duckdb_destroy_extracted(duckdb_extracted_statements *extracted_statements);

DUCKDB_API duckdb_state duckdb_pending_prepared(duckdb_prepared_statement prepared_statement, duckdb_pending_result *out_result);
DUCKDB_API void duckdb_destroy_pending(duckdb_pending_result *pending_result);
DUCKDB_API const char *duckdb_pending_error(duckdb_pending_result pending_result);
DUCKDB_API duckdb_pending_state duckdb_pending_execute_task(duckdb_pending_result pending_result);
DUCKDB_API duckdb_pending_state duckdb_pending_execute_check_state(duckdb_pending_result pending_result);
DUCKDB_API duckdb_state duckdb_execute_pending(duckdb_pending_result pending_result, duckdb_result *out_result);
DUCKDB_API bool duckdb_pending_execution_is_finished(duckdb_pending_state pending_state);

DUCKDB_API void duckdb_destroy_value(duckdb_value *value);
DUCKDB_API duckdb_value duckdb_create_varchar(const char *text);
DUCKDB_API duckdb_value duckdb_create_varchar_length(const char *text, idx_t length);
DUCKDB_API duckdb_value duckdb_create_int64(int64_t val);
DUCKDB_API duckdb_value duckdb_create_struct_value(duckdb_logical_type type, duckdb_value *values);
DUCKDB_API duckdb_value duckdb_create_list_value(duckdb_logical_type type, duckdb_value *values, idx_t value_count);
DUCKDB_API duckdb_value duckdb_create_array_value(duckdb_logical_type type, duckdb_value *values, idx_t value_count);
DUCKDB_API char *duckdb_get_varchar(duckdb_value value);
DUCKDB_API int64_t duckdb_get_int64(duckdb_value value);

DUCKDB_API duckdb_logical_type duckdb_create_logical_type(duckdb_type type);
DUCKDB_API char *duckdb_logical_type_get_alias(duckdb_logical_type type);
DUCKDB_API duckdb_logical_type duckdb_create_list_type(duckdb_logical_type type);
DUCKDB_API duckdb_logical_type duckdb_create_array_type(duckdb_logical_type type, idx_t array_size);
DUCKDB_API duckdb_logical_type duckdb_create_map_type(duckdb_logical_type key_type, duckdb_logical_type value_type);
DUCKDB_API duckdb_logical_type duckdb_create_union_type(duckdb_logical_type *member_types, const char **member_names, idx_t member_count);
DUCKDB_API duckdb_logical_type duckdb_create_struct_type(duckdb_logical_type *member_types, const char **member_names, idx_t member_count);
DUCKDB_API duckdb_logical_type duckdb_create_enum_type(const char **member_names, idx_t member_count);
DUCKDB_API duckdb_logical_type duckdb_create_decimal_type(uint8_t width, uint8_t scale);
DUCKDB_API duckdb_type duckdb_get_type_id(duckdb_logical_type type);
DUCKDB_API uint8_t duckdb_decimal_width(duckdb_logical_type type);
DUCKDB_API uint8_t duckdb_decimal_scale(duckdb_logical_type type);
DUCKDB_API duckdb_type duckdb_decimal_internal_type(duckdb_logical_type type);
DUCKDB_API duckdb_type duckdb_enum_internal_type(duckdb_logical_type type);
DUCKDB_API uint32_t duckdb_enum_dictionary_size(duckdb_logical_type type);
DUCKDB_API char *duckdb_enum_dictionary_value(duckdb_logical_type type, idx_t index);
DUCKDB_API duckdb_logical_type duckdb_list_type_child_type(duckdb_logical_type type);
DUCKDB_API duckdb_logical_type duckdb_array_type_child_type(duckdb_logical_type type);
DUCKDB_API idx_t duckdb_array_type_array_size(duckdb_logical_type type);
DUCKDB_API duckdb_logical_type duckdb_map_type_key_type(duckdb_logical_type type);
DUCKDB_API duckdb_logical_type duckdb_map_type_value_type(duckdb_logical_type type);
DUCKDB_API idx_t duckdb_struct_type_child_count(duckdb_logical_type type);
DUCKDB_API char *duckdb_struct_type_child_name(duckdb_logical_type type, idx_t index);
DUCKDB_API duckdb_logical_type duckdb_struct_type_child_type(duckdb_logical_type type, idx_t index);
DUCKDB_API idx_t duckdb_union_type_member_count(duckdb_logical_type type);
DUCKDB_API char *duckdb_union_type_member_name(duckdb_logical_type type, idx_t index);
DUCKDB_API duckdb_logical_type duckdb_union_type_member_type(duckdb_logical_type type, idx_t index);
DUCKDB_API void duckdb_destroy_logical_type(duckdb_logical_type *type);

DUCKDB_API duckdb_data_chunk duckdb_create_data_chunk(duckdb_logical_type *types, idx_t column_count);
DUCKDB_API void duckdb_destroy_data_chunk(duckdb_data_chunk *chunk);
DUCKDB_API void duckdb_data_chunk_reset(duckdb_data_chunk chunk);
DUCKDB_API idx_t duckdb_data_chunk_get_column_count(duckdb_data_chunk chunk);
DUCKDB_API duckdb_vector duckdb_data_chunk_get_vector(duckdb_data_chunk chunk, idx_t col_idx);
DUCKDB_API idx_t duckdb_data_chunk_get_size(duckdb_data_chunk chunk);
DUCKDB_API void duckdb_data_chunk_set_size(duckdb_data_chunk chunk, idx_t size);

DUCKDB_API duckdb_logical_type duckdb_vector_get_column_type(duckdb_vector vector);
DUCKDB_API void *duckdb_vector_get_data(duckdb_vector vector);
DUCKDB_API uint64_t *duckdb_vector_get_validity(duckdb_vector vector);
DUCKDB_API void duckdb_vector_ensure_validity_writable(duckdb_vector vector);
DUCKDB_API void duckdb_vector_assign_string_element(duckdb_vector vector, idx_t index, const char *str);
DUCKDB_API void duckdb_vector_assign_string_element_len(duckdb_vector vector, idx_t index, const char *str, idx_t str_len);
DUCKDB_API duckdb_vector duckdb_list_vector_get_child(duckdb_vector vector);
DUCKDB_API idx_t duckdb_list_vector_get_size(duckdb_vector vector);
DUCKDB_API duckdb_state duckdb_list_vector_set_size(duckdb_vector vector, idx_t size);
DUCKDB_API duckdb_state duckdb_list_vector_reserve(duckdb_vector vector, idx_t required_capacity);
DUCKDB_API duckdb_vector duckdb_struct_vector_get_child(duckdb_vector vector, idx_t index);
DUCKDB_API duckdb_vector duckdb_array_vector_get_child(duckdb_vector vector);

DUCKDB_API bool duckdb_validity_row_is_valid(uint64_t *validity, idx_t row);
DUCKDB_API void duckdb_validity_set_row_validity(uint64_t *validity, idx_t row, bool valid);
DUCKDB_API void duckdb_validity_set_row_invalid(uint64_t *validity, idx_t row);
DUCKDB_API void duckdb_validity_set_row_valid(uint64_t *validity, idx_t row);

DUCKDB_API duckdb_table_function duckdb_create_table_function();
DUCKDB_API void duckdb_destroy_table_function(duckdb_table_function *table_function);
DUCKDB_API void duckdb_table_function_set_name(duckdb_table_function table_function, const char *name);
DUCKDB_API void duckdb_table_function_add_parameter(duckdb_table_function table_function, duckdb_logical_type type);
DUCKDB_API void duckdb_table_function_add_named_parameter(duckdb_table_function table_function, const char *name, duckdb_logical_type type);
DUCKDB_API void duckdb_table_function_set_extra_info(duckdb_table_function table_function, void *extra_info, duckdb_delete_callback_t destroy);
DUCKDB_API void duckdb_table_function_set_bind(duckdb_table_function table_function, duckdb_table_function_bind_t bind);
DUCKDB_API void duckdb_table_function_set_init(duckdb_table_function table_function, duckdb_table_function_init_t init);
DUCKDB_API void duckdb_table_function_set_local_init(duckdb_table_function table_function, duckdb_table_function_init_t init);
DUCKDB_API void duckdb_table_function_set_function(duckdb_table_function table_function, duckdb_table_function_t function);
DUCKDB_API void duckdb_table_function_supports_projection_pushdown(duckdb_table_function table_function, bool pushdown);
DUCKDB_API duckdb_state duckdb_register_table_function(duckdb_connection con, duckdb_table_function function);

DUCKDB_API void *duckdb_bind_get_extra_info(duckdb_bind_info info);
DUCKDB_API void duckdb_bind_add_result_column(duckdb_bind_info info, const char *name, duckdb_logical_type type);
DUCKDB_API idx_t duckdb_bind_get_parameter_count(duckdb_bind_info info);
DUCKDB_API duckdb_value duckdb_bind_get_parameter(duckdb_bind_info info, idx_t index);
DUCKDB_API duckdb_value duckdb_bind_get_named_parameter(duckdb_bind_info info, const char *name);
DUCKDB_API void duckdb_bind_set_bind_data(duckdb_bind_info info, void *bind_data, duckdb_delete_callback_t destroy);
DUCKDB_API void duckdb_bind_set_cardinality(duckdb_bind_info info, idx_t cardinality, bool is_exact);
DUCKDB_API void duckdb_bind_set_error(duckdb_bind_info info, const char *error);

DUCKDB_API void *duckdb_init_get_extra_info(duckdb_init_info info);
DUCKDB_API void *duckdb_init_get_bind_data(duckdb_init_info info);
DUCKDB_API void duckdb_init_set_init_data(duckdb_init_info info, void *init_data, duckdb_delete_callback_t destroy);
DUCKDB_API idx_t duckdb_init_get_column_count(duckdb_init_info info);
DUCKDB_API idx_t duckdb_init_get_column_index(duckdb_init_info info, idx_t column_index);
DUCKDB_API void duckdb_init_set_max_threads(duckdb_init_info info, idx_t max_threads);
DUCKDB_API void duckdb_init_set_error(duckdb_init_info info, const char *error);

DUCKDB_API void *duckdb_function_get_extra_info(duckdb_function_info info);
DUCKDB_API void *duckdb_function_get_bind_data(duckdb_function_info info);
DUCKDB_API void *duckdb_function_get_init_data(duckdb_function_info info);
DUCKDB_API void *duckdb_function_get_local_init_data(duckdb_function_info info);
DUCKDB_API void duckdb_function_set_error(duckdb_function_info info, const char *error);

DUCKDB_API void duckdb_add_replacement_scan(duckdb_database db, duckdb_replacement_callback_t replacement, void *extra_data, duckdb_delete_callback_t delete_callback);
DUCKDB_API void duckdb_replacement_scan_set_function_name(duckdb_replacement_scan_info info, const char *function_name);
DUCKDB_API void duckdb_replacement_scan_add_parameter(duckdb_replacement_scan_info info, duckdb_value parameter);
DUCKDB_API void duckdb_replacement_scan_set_error(duckdb_replacement_scan_info info, const char *error);

DUCKDB_API duckdb_state duckdb_appender_create(duckdb_connection connection, const char *schema, const char *table, duckdb_appender *out_appender);
DUCKDB_API idx_t duckdb_appender_column_count(duckdb_appender appender);
DUCKDB_API duckdb_logical_type duckdb_appender_column_type(duckdb_appender appender, idx_t col_idx);
DUCKDB_API const char *duckdb_appender_error(duckdb_appender appender);
DUCKDB_API duckdb_state duckdb_appender_flush(duckdb_appender appender);
DUCKDB_API duckdb_state duckdb_appender_close(duckdb_appender appender);
DUCKDB_API duckdb_state duckdb_appender_destroy(duckdb_appender *appender);
DUCKDB_API duckdb_state duckdb_appender_begin_row(duckdb_appender appender);
DUCKDB_API duckdb_state duckdb_appender_end_row(duckdb_appender appender);
DUCKDB_API duckdb_state duckdb_append_bool(duckdb_appender appender, bool value);
DUCKDB_API duckdb_state duckdb_append_int8(duckdb_appender appender, int8_t value);
DUCKDB_API duckdb_state duckdb_append_int16(duckdb_appender appender, int16_t value);
DUCKDB_API duckdb_state duckdb_append_int32(duckdb_appender appender, int32_t value);
DUCKDB_API duckdb_state duckdb_append_int64(duckdb_appender appender, int64_t value);
DUCKDB_API duckdb_state duckdb_append_hugeint(duckdb_appender appender, duckdb_hugeint value);
DUCKDB_API duckdb_state duckdb_append_uint8(duckdb_appender appender, uint8_t value);
DUCKDB_API duckdb_state duckdb_append_uint16(duckdb_appender appender, uint16_t value);
DUCKDB_API duckdb_state duckdb_append_uint32(duckdb_appender appender, uint32_t value);
DUCKDB_API duckdb_state duckdb_append_uint64(duckdb_appender appender, uint64_t value);
DUCKDB_API duckdb_state duckdb_append_uhugeint(duckdb_appender appender, duckdb_uhugeint value);
DUCKDB_API duckdb_state duckdb_append_float(duckdb_appender appender, float value);
DUCKDB_API duckdb_state duckdb_append_double(duckdb_appender appender, double value);
DUCKDB_API duckdb_state duckdb_append_date(duckdb_appender appender, duckdb_date value);
DUCKDB_API duckdb_state duckdb_append_time(duckdb_appender appender, duckdb_time value);
DUCKDB_API duckdb_state duckdb_append_timestamp(duckdb_appender appender, duckdb_timestamp value);
DUCKDB_API duckdb_state duckdb_append_interval(duckdb_appender appender, duckdb_interval value);
DUCKDB_API duckdb_state duckdb_append_varchar(duckdb_appender appender, const char *val);
DUCKDB_API duckdb_state duckdb_append_varchar_length(duckdb_appender appender, const char *val, idx_t length);
DUCKDB_API duckdb_state duckdb_append_blob(duckdb_appender appender, const void *data, idx_t length);
DUCKDB_API duckdb_state duckdb_append_null(duckdb_appender appender);
DUCKDB_API duckdb_state duckdb_append_data_chunk(duckdb_appender appender, duckdb_data_chunk chunk);

DUCKDB_API void duckdb_execute_tasks(duckdb_database database, idx_t max_tasks);
DUCKDB_API duckdb_task_state duckdb_create_task_state(duckdb_database database);
DUCKDB_API void duckdb_execute_tasks_state(duckdb_task_state state);
DUCKDB_API idx_t duckdb_execute_n_tasks_state(duckdb_task_state state, idx_t max_tasks);
DUCKDB_API void duckdb_finish_execution(duckdb_task_state state);
DUCKDB_API bool duckdb_task_state_is_finished(duckdb_task_state state);
DUCKDB_API void duckdb_destroy_task_state(duckdb_task_state state);
DUCKDB_API bool duckdb_execution_is_finished(duckdb_connection con);

DUCKDB_API duckdb_data_chunk duckdb_fetch_chunk(duckdb_result result);
