
SQL*Plus: Release 19.0.0.0.0 - Production on Sun Oct 8 11:43:48 2023
Version 19.3.0.0.0

Copyright (c) 1982, 2019, Oracle.  All rights reserved.

Connected to an idle instance.

SQL> startup;
ORACLE instance started.

Total System Global Area 1778381840 bytes
Fixed Size		    8897552 bytes
Variable Size		  419430400 bytes
Database Buffers	 1342177280 bytes
Redo Buffers		    7876608 bytes
Database mounted.
Database opened.
SQL> !clear


SQL> show parameter spfile;

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
spfile				     string	 /u01/app/oracle/product/19.0.0
						 .0/dbhome_1/dbs/spfilehrms.ora
SQL> 
SQL> 
SQL> 
SQL> 
SQL> exit
Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0
[oracle@oraclelab ~]$ 
[oracle@oraclelab ~]$ 
[oracle@oraclelab ~]$ cd $ORACLE_HOME/dbs
[oracle@oraclelab dbs]$ ls -lrt
total 20
-rw-r--r--. 1 oracle oinstall 3079 May 14  2015 init.ora
-rw-r-----. 1 oracle oinstall   24 Oct  4 10:02 lkHRMS
-rw-r-----. 1 oracle oinstall 2048 Oct  4 10:04 orapwhrms
-rw-rw----. 1 oracle oinstall 1544 Oct  8 11:44 hc_hrms.dat
-rw-r-----. 1 oracle oinstall 3584 Oct  8 11:44 spfilehrms.ora
[oracle@oraclelab dbs]$ sqlplus / as sysdba

SQL*Plus: Release 19.0.0.0.0 - Production on Sun Oct 8 11:45:27 2023
Version 19.3.0.0.0

Copyright (c) 1982, 2019, Oracle.  All rights reserved.


Connected to:
Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0

SQL> create pfile from spfile;

File created.

SQL> 
SQL> exit
Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0
[oracle@oraclelab dbs]$ 
[oracle@oraclelab dbs]$ 
[oracle@oraclelab dbs]$ ls -lrt
total 24
-rw-r--r--. 1 oracle oinstall 3079 May 14  2015 init.ora
-rw-r-----. 1 oracle oinstall   24 Oct  4 10:02 lkHRMS
-rw-r-----. 1 oracle oinstall 2048 Oct  4 10:04 orapwhrms
-rw-rw----. 1 oracle oinstall 1544 Oct  8 11:44 hc_hrms.dat
-rw-r-----. 1 oracle oinstall 3584 Oct  8 11:44 spfilehrms.ora
-rw-r--r--. 1 oracle oinstall 1110 Oct  8 11:45 inithrms.ora
[oracle@oraclelab dbs]$ 
[oracle@oraclelab dbs]$ 
[oracle@oraclelab dbs]$ sqlplus / as sysdba

SQL*Plus: Release 19.0.0.0.0 - Production on Sun Oct 8 11:45:57 2023
Version 19.3.0.0.0

Copyright (c) 1982, 2019, Oracle.  All rights reserved.



Connected to:
Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0

SQL> SQL> 
SQL> 
SQL> 
SQL> desc v$parameter
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 NUM						    NUMBER
 NAME						    VARCHAR2(80)
 TYPE						    NUMBER
 VALUE						    VARCHAR2(4000)
 DISPLAY_VALUE					    VARCHAR2(4000)
 DEFAULT_VALUE					    VARCHAR2(255)
 ISDEFAULT					    VARCHAR2(9)
 ISSES_MODIFIABLE				    VARCHAR2(5)
 ISSYS_MODIFIABLE				    VARCHAR2(9)
 ISPDB_MODIFIABLE				    VARCHAR2(5)
 ISINSTANCE_MODIFIABLE				    VARCHAR2(5)
 ISMODIFIED					    VARCHAR2(10)
 ISADJUSTED					    VARCHAR2(5)
 ISDEPRECATED					    VARCHAR2(5)
 ISBASIC					    VARCHAR2(5)
 DESCRIPTION					    VARCHAR2(255)
 UPDATE_COMMENT 				    VARCHAR2(255)
 HASH						    NUMBER
 CON_ID 					    NUMBER

SQL> select name from v$parameter order by 1;

NAME
--------------------------------------------------------------------------------
DBFIPS_140
active_instance_count
adg_account_info_tracking
adg_redirect_dml
allow_global_dblinks
allow_group_access_to_sga
allow_rowid_column_type
approx_for_aggregation
approx_for_count_distinct
approx_for_percentile
aq_tm_processes

NAME
--------------------------------------------------------------------------------
archive_lag_target
asm_diskstring
asm_preferred_read_failure_groups
audit_file_dest
audit_sys_operations
audit_syslog_level
audit_trail
autotask_max_active_pdbs
awr_pdb_autoflush_enabled
awr_pdb_max_parallel_slaves
awr_snapshot_time_offset

NAME
--------------------------------------------------------------------------------
background_core_dump
background_dump_dest
backup_tape_io_slaves
bitmap_merge_area_size
blank_trimming
buffer_pool_keep
buffer_pool_recycle
cdb_cluster
cdb_cluster_name
cell_offload_compaction
cell_offload_decryption

NAME
--------------------------------------------------------------------------------
cell_offload_parameters
cell_offload_plan_display
cell_offload_processing
cell_offloadgroup_name
circuits
client_result_cache_lag
client_result_cache_size
client_statistics_level
clonedb
clonedb_dir
cluster_database

NAME
--------------------------------------------------------------------------------
cluster_database_instances
cluster_interconnects
commit_logging
commit_point_strength
commit_wait
commit_write
common_user_prefix
compatible
connection_brokers
containers_parallel_degree
control_file_record_keep_time

NAME
--------------------------------------------------------------------------------
control_files
control_management_pack_access
core_dump_dest
cpu_count
cpu_min_count
create_bitmap_area_size
create_stored_outlines
cursor_bind_capture_destination
cursor_invalidation
cursor_sharing
cursor_space_for_time

NAME
--------------------------------------------------------------------------------
data_guard_max_io_time
data_guard_max_longio_time
data_guard_sync_latency
data_transfer_cache_size
db_16k_cache_size
db_2k_cache_size
db_32k_cache_size
db_4k_cache_size
db_8k_cache_size
db_big_table_cache_percent_target
db_block_buffers

NAME
--------------------------------------------------------------------------------
db_block_checking
db_block_checksum
db_block_size
db_cache_advice
db_cache_size
db_create_file_dest
db_create_online_log_dest_1
db_create_online_log_dest_2
db_create_online_log_dest_3
db_create_online_log_dest_4
db_create_online_log_dest_5

NAME
--------------------------------------------------------------------------------
db_domain
db_file_multiblock_read_count
db_file_name_convert
db_files
db_flash_cache_file
db_flash_cache_size
db_flashback_retention_target
db_index_compression_inheritance
db_keep_cache_size
db_lost_write_protect
db_name

NAME
--------------------------------------------------------------------------------
db_performance_profile
db_recovery_file_dest
db_recovery_file_dest_size
db_recycle_cache_size
db_securefile
db_ultra_safe
db_unique_name
db_unrecoverable_scn_tracking
db_writer_processes
dbwr_io_slaves
ddl_lock_timeout

NAME
--------------------------------------------------------------------------------
default_sharing
deferred_segment_creation
dg_broker_config_file1
dg_broker_config_file2
dg_broker_start
diagnostic_dest
disable_pdb_feature
disk_asynch_io
dispatchers
distributed_lock_timeout
dml_locks

NAME
--------------------------------------------------------------------------------
dnfs_batch_size
dst_upgrade_insert_conv
enable_automatic_maintenance_pdb
enable_ddl_logging
enable_dnfs_dispatcher
enable_goldengate_replication
enable_imc_with_mira
enable_pluggable_database
enabled_PDBs_on_standby
encrypt_new_tablespaces
event

NAME
--------------------------------------------------------------------------------
external_keystore_credential_location
fal_client
fal_server
fast_start_io_target
fast_start_mttr_target
fast_start_parallel_rollback
file_mapping
fileio_network_adapters
filesystemio_options
fixed_date
forward_listener

NAME
--------------------------------------------------------------------------------
gcs_server_processes
global_names
global_txn_processes
hash_area_size
heat_map
hi_shared_memory_address
hs_autoregister
http_proxy
ifile
inmemory_adg_enabled
inmemory_automatic_level

NAME
--------------------------------------------------------------------------------
inmemory_clause_default
inmemory_expressions_usage
inmemory_force
inmemory_max_populate_servers
inmemory_optimized_arithmetic
inmemory_prefer_xmem_memcompress
inmemory_prefer_xmem_priority
inmemory_query
inmemory_size
inmemory_trickle_repopulate_servers_percent
inmemory_virtual_columns

NAME
--------------------------------------------------------------------------------
inmemory_xmem_size
instance_abort_delay_time
instance_groups
instance_mode
instance_name
instance_number
instance_type
instant_restore
java_jit_enabled
java_max_sessionspace_size
java_pool_size

NAME
--------------------------------------------------------------------------------
java_restrict
java_soft_sessionspace_limit
job_queue_processes
large_pool_size
ldap_directory_access
ldap_directory_sysauth
license_max_sessions
license_max_users
license_sessions_warning
listener_networks
lob_signature_enable

NAME
--------------------------------------------------------------------------------
local_listener
lock_name_space
lock_sga
log_archive_config
log_archive_dest
log_archive_dest_1
log_archive_dest_10
log_archive_dest_11
log_archive_dest_12
log_archive_dest_13
log_archive_dest_14

NAME
--------------------------------------------------------------------------------
log_archive_dest_15
log_archive_dest_16
log_archive_dest_17
log_archive_dest_18
log_archive_dest_19
log_archive_dest_2
log_archive_dest_20
log_archive_dest_21
log_archive_dest_22
log_archive_dest_23
log_archive_dest_24

NAME
--------------------------------------------------------------------------------
log_archive_dest_25
log_archive_dest_26
log_archive_dest_27
log_archive_dest_28
log_archive_dest_29
log_archive_dest_3
log_archive_dest_30
log_archive_dest_31
log_archive_dest_4
log_archive_dest_5
log_archive_dest_6

NAME
--------------------------------------------------------------------------------
log_archive_dest_7
log_archive_dest_8
log_archive_dest_9
log_archive_dest_state_1
log_archive_dest_state_10
log_archive_dest_state_11
log_archive_dest_state_12
log_archive_dest_state_13
log_archive_dest_state_14
log_archive_dest_state_15
log_archive_dest_state_16

NAME
--------------------------------------------------------------------------------
log_archive_dest_state_17
log_archive_dest_state_18
log_archive_dest_state_19
log_archive_dest_state_2
log_archive_dest_state_20
log_archive_dest_state_21
log_archive_dest_state_22
log_archive_dest_state_23
log_archive_dest_state_24
log_archive_dest_state_25
log_archive_dest_state_26

NAME
--------------------------------------------------------------------------------
log_archive_dest_state_27
log_archive_dest_state_28
log_archive_dest_state_29
log_archive_dest_state_3
log_archive_dest_state_30
log_archive_dest_state_31
log_archive_dest_state_4
log_archive_dest_state_5
log_archive_dest_state_6
log_archive_dest_state_7
log_archive_dest_state_8

NAME
--------------------------------------------------------------------------------
log_archive_dest_state_9
log_archive_duplex_dest
log_archive_format
log_archive_max_processes
log_archive_min_succeed_dest
log_archive_start
log_archive_trace
log_buffer
log_checkpoint_interval
log_checkpoint_timeout
log_checkpoints_to_alert

NAME
--------------------------------------------------------------------------------
log_file_name_convert
long_module_action
max_datapump_jobs_per_pdb
max_datapump_parallel_per_job
max_dispatchers
max_dump_file_size
max_idle_blocker_time
max_idle_time
max_iops
max_mbps
max_pdbs

NAME
--------------------------------------------------------------------------------
max_shared_servers
max_string_size
memoptimize_pool_size
memory_max_target
memory_target
multishard_query_data_consistency
multishard_query_partial_results
nls_calendar
nls_comp
nls_currency
nls_date_format

NAME
--------------------------------------------------------------------------------
nls_date_language
nls_dual_currency
nls_iso_currency
nls_language
nls_length_semantics
nls_nchar_conv_excp
nls_numeric_characters
nls_sort
nls_territory
nls_time_format
nls_time_tz_format

NAME
--------------------------------------------------------------------------------
nls_timestamp_format
nls_timestamp_tz_format
noncdb_compatible
object_cache_max_size_percent
object_cache_optimal_size
ofs_threads
olap_page_pool_size
one_step_plugin_for_pdb_with_tde
open_cursors
open_links
open_links_per_instance

NAME
--------------------------------------------------------------------------------
optimizer_adaptive_plans
optimizer_adaptive_reporting_only
optimizer_adaptive_statistics
optimizer_capture_sql_plan_baselines
optimizer_dynamic_sampling
optimizer_features_enable
optimizer_ignore_hints
optimizer_ignore_parallel_hints
optimizer_index_caching
optimizer_index_cost_adj
optimizer_inmemory_aware

NAME
--------------------------------------------------------------------------------
optimizer_mode
optimizer_secure_view_merging
optimizer_use_invisible_indexes
optimizer_use_pending_statistics
optimizer_use_sql_plan_baselines
os_authent_prefix
os_roles
outbound_dblink_protocols
parallel_adaptive_multi_user
parallel_degree_limit
parallel_degree_policy

NAME
--------------------------------------------------------------------------------
parallel_execution_message_size
parallel_force_local
parallel_instance_group
parallel_max_servers
parallel_min_degree
parallel_min_percent
parallel_min_servers
parallel_min_time_threshold
parallel_servers_target
parallel_threads_per_cpu
pdb_file_name_convert

NAME
--------------------------------------------------------------------------------
pdb_lockdown
pdb_os_credential
pdb_template
permit_92_wrap_format
pga_aggregate_limit
pga_aggregate_target
plscope_settings
plsql_ccflags
plsql_code_type
plsql_debug
plsql_optimize_level

NAME
--------------------------------------------------------------------------------
plsql_v2_compatibility
plsql_warnings
pre_page_sga
private_temp_table_prefix
processes
processor_group_name
query_rewrite_enabled
query_rewrite_integrity
rdbms_server_dn
read_only_open_delayed
recovery_parallelism

NAME
--------------------------------------------------------------------------------
recyclebin
redo_transport_user
remote_dependencies_mode
remote_listener
remote_login_passwordfile
remote_os_authent
remote_os_roles
remote_recovery_file_dest
replication_dependency_tracking
resource_limit
resource_manage_goldengate

NAME
--------------------------------------------------------------------------------
resource_manager_cpu_allocation
resource_manager_plan
result_cache_max_result
result_cache_max_size
result_cache_mode
result_cache_remote_expiration
resumable_timeout
rollback_segments
scheduler_follow_pdbtz
sec_case_sensitive_logon
sec_max_failed_login_attempts

NAME
--------------------------------------------------------------------------------
sec_protocol_error_further_action
sec_protocol_error_trace_action
sec_return_server_release_banner
serial_reuse
service_names
session_cached_cursors
session_max_open_files
sessions
sga_max_size
sga_min_size
sga_target

NAME
--------------------------------------------------------------------------------
shadow_core_dump
shared_memory_address
shared_pool_reserved_size
shared_pool_size
shared_server_sessions
shared_servers
shrd_dupl_table_refresh_rate
skip_unusable_indexes
smtp_out_server
sort_area_retained_size
sort_area_size

NAME
--------------------------------------------------------------------------------
spatial_vector_acceleration
spfile
sql92_security
sql_trace
sqltune_category
ssl_wallet
standby_db_preserve_states
standby_file_management
standby_pdb_source_file_dblink
standby_pdb_source_file_directory
star_transformation_enabled

NAME
--------------------------------------------------------------------------------
statistics_level
streams_pool_size
tape_asynch_io
target_pdbs
tde_configuration
temp_undo_enabled
thread
threaded_execution
timed_os_statistics
timed_statistics
trace_enabled

NAME
--------------------------------------------------------------------------------
tracefile_identifier
transactions
transactions_per_rollback_segment
undo_management
undo_retention
undo_tablespace
unified_audit_common_systemlog
unified_audit_sga_queue_size
unified_audit_systemlog
uniform_log_timestamp_format
use_dedicated_broker

NAME
--------------------------------------------------------------------------------
use_large_pages
user_dump_dest
wallet_root
workarea_size_policy
xml_db_events

445 rows selected.

SQL> 
SQL> 
SQL> 
SQL> show paramter open_cursor
SP2-0158: unknown SHOW option "paramter"
SP2-0735: unknown SHOW option beginning "open_curso..."
SQL> 
SQL> 
SQL> show parameter open_cursor

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
open_cursors			     integer	 300
SQL> 
SQL> 
SQL> 
SQL> 
SQL>  
SQL> 
SQL> SELECT  name,
case when issys_modifiable = 'FALSE' then 'STATIC_INSTANCE'
when issys_modifiable =  'IMMEDIATE' then 'DYNAMIC_INSTANCE' end m_INSTANCE, 
case when isses_modifiable = 'FALSE' then 'STATIC_WRT_SESSION'
when isses_modifiable = 'TRUE' then 'DYNAMIC_WRT_SESSION' end  m_SESSION  FROM V$parameter WHERE NAME ='OPEN_CURSORS' order by 1;  2    3    4    5  

no rows selected

SQL> 
SQL> desc v$parameter
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 NUM						    NUMBER
 NAME						    VARCHAR2(80)
 TYPE						    NUMBER
 VALUE						    VARCHAR2(4000)
 DISPLAY_VALUE					    VARCHAR2(4000)
 DEFAULT_VALUE					    VARCHAR2(255)
 ISDEFAULT					    VARCHAR2(9)
 ISSES_MODIFIABLE				    VARCHAR2(5)
 ISSYS_MODIFIABLE				    VARCHAR2(9)
 ISPDB_MODIFIABLE				    VARCHAR2(5)
 ISINSTANCE_MODIFIABLE				    VARCHAR2(5)
 ISMODIFIED					    VARCHAR2(10)
 ISADJUSTED					    VARCHAR2(5)
 ISDEPRECATED					    VARCHAR2(5)
 ISBASIC					    VARCHAR2(5)
 DESCRIPTION					    VARCHAR2(255)
 UPDATE_COMMENT 				    VARCHAR2(255)
 HASH						    NUMBER
 CON_ID 					    NUMBER

SQL> select name,ISSYS_MODIFIABLE,ISSES_MODIFIABLE from v$parameter;

NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
lock_name_space
FALSE	  FALSE

processes
FALSE	  FALSE

sessions
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
timed_statistics
IMMEDIATE TRUE

timed_os_statistics
IMMEDIATE TRUE

resource_limit
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
license_max_sessions
IMMEDIATE FALSE

license_sessions_warning
IMMEDIATE FALSE

long_module_action
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
standby_db_preserve_states
FALSE	  FALSE

instance_abort_delay_time
IMMEDIATE FALSE

cpu_count
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
cpu_min_count
IMMEDIATE FALSE

instance_groups
FALSE	  FALSE

event
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
sga_max_size
FALSE	  FALSE

use_large_pages
FALSE	  FALSE

pre_page_sga
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
shared_memory_address
FALSE	  FALSE

hi_shared_memory_address
FALSE	  FALSE

lock_sga
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
processor_group_name
FALSE	  FALSE

allow_group_access_to_sga
FALSE	  FALSE

sga_min_size
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
shared_pool_size
IMMEDIATE FALSE

large_pool_size
IMMEDIATE FALSE

java_pool_size
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
streams_pool_size
IMMEDIATE FALSE

shared_pool_reserved_size
FALSE	  FALSE

java_soft_sessionspace_limit
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
java_max_sessionspace_size
FALSE	  FALSE

pga_aggregate_limit
IMMEDIATE FALSE

spfile
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
instance_type
FALSE	  FALSE

uniform_log_timestamp_format
IMMEDIATE FALSE

nls_language
FALSE	  TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
nls_territory
FALSE	  TRUE

nls_sort
FALSE	  TRUE

nls_date_language
FALSE	  TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
nls_date_format
FALSE	  TRUE

nls_currency
FALSE	  TRUE

nls_numeric_characters
FALSE	  TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
nls_iso_currency
FALSE	  TRUE

nls_calendar
FALSE	  TRUE

nls_time_format
FALSE	  TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
nls_timestamp_format
FALSE	  TRUE

nls_time_tz_format
FALSE	  TRUE

nls_timestamp_tz_format
FALSE	  TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
nls_dual_currency
FALSE	  TRUE

nls_comp
FALSE	  TRUE

nls_length_semantics
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
nls_nchar_conv_excp
IMMEDIATE TRUE

disk_asynch_io
FALSE	  FALSE

tape_asynch_io
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
dbwr_io_slaves
FALSE	  FALSE

backup_tape_io_slaves
DEFERRED  FALSE

fileio_network_adapters
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
filesystemio_options
FALSE	  FALSE

dnfs_batch_size
FALSE	  FALSE

clonedb
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
instant_restore
FALSE	  FALSE

http_proxy
IMMEDIATE FALSE

ssl_wallet
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
ofs_threads
IMMEDIATE FALSE

resource_manager_cpu_allocation
IMMEDIATE FALSE

resource_manager_plan
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_performance_profile
IMMEDIATE FALSE

max_iops
IMMEDIATE FALSE

max_mbps
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
max_idle_time
IMMEDIATE FALSE

max_idle_blocker_time
IMMEDIATE FALSE

cluster_interconnects
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
file_mapping
IMMEDIATE FALSE

max_datapump_jobs_per_pdb
IMMEDIATE FALSE

max_datapump_parallel_per_job
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
service_names
IMMEDIATE FALSE

threaded_execution
FALSE	  FALSE

clonedb_dir
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
enable_dnfs_dispatcher
FALSE	  FALSE

gcs_server_processes
FALSE	  FALSE

active_instance_count
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
instance_mode
FALSE	  FALSE

sga_target
IMMEDIATE FALSE

memory_target
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
memory_max_target
FALSE	  FALSE

control_files
FALSE	  FALSE

db_file_name_convert
FALSE	  TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_file_name_convert
FALSE	  FALSE

control_file_record_keep_time
IMMEDIATE FALSE

db_block_buffers
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_block_checksum
IMMEDIATE FALSE

db_ultra_safe
FALSE	  FALSE

db_block_size
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_cache_size
IMMEDIATE FALSE

db_2k_cache_size
IMMEDIATE FALSE

db_4k_cache_size
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_8k_cache_size
IMMEDIATE FALSE

db_16k_cache_size
IMMEDIATE FALSE

db_32k_cache_size
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_keep_cache_size
IMMEDIATE FALSE

db_recycle_cache_size
IMMEDIATE FALSE

memoptimize_pool_size
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_big_table_cache_percent_target
IMMEDIATE FALSE

encrypt_new_tablespaces
IMMEDIATE FALSE

db_writer_processes
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
buffer_pool_keep
FALSE	  FALSE

buffer_pool_recycle
FALSE	  FALSE

db_flash_cache_file
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_flash_cache_size
IMMEDIATE FALSE

db_cache_advice
IMMEDIATE FALSE

compatible
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_1
IMMEDIATE TRUE

log_archive_dest_2
IMMEDIATE TRUE

log_archive_dest_3
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_4
IMMEDIATE TRUE

log_archive_dest_5
IMMEDIATE TRUE

log_archive_dest_6
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_7
IMMEDIATE TRUE

log_archive_dest_8
IMMEDIATE TRUE

log_archive_dest_9
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_10
IMMEDIATE TRUE

log_archive_dest_11
IMMEDIATE TRUE

log_archive_dest_12
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_13
IMMEDIATE TRUE

log_archive_dest_14
IMMEDIATE TRUE

log_archive_dest_15
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_16
IMMEDIATE TRUE

log_archive_dest_17
IMMEDIATE TRUE

log_archive_dest_18
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_19
IMMEDIATE TRUE

log_archive_dest_20
IMMEDIATE TRUE

log_archive_dest_21
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_22
IMMEDIATE TRUE

log_archive_dest_23
IMMEDIATE TRUE

log_archive_dest_24
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_25
IMMEDIATE TRUE

log_archive_dest_26
IMMEDIATE TRUE

log_archive_dest_27
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_28
IMMEDIATE TRUE

log_archive_dest_29
IMMEDIATE TRUE

log_archive_dest_30
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_31
IMMEDIATE TRUE

log_archive_dest_state_1
IMMEDIATE TRUE

log_archive_dest_state_2
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_state_3
IMMEDIATE TRUE

log_archive_dest_state_4
IMMEDIATE TRUE

log_archive_dest_state_5
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_state_6
IMMEDIATE TRUE

log_archive_dest_state_7
IMMEDIATE TRUE

log_archive_dest_state_8
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_state_9
IMMEDIATE TRUE

log_archive_dest_state_10
IMMEDIATE TRUE

log_archive_dest_state_11
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_state_12
IMMEDIATE TRUE

log_archive_dest_state_13
IMMEDIATE TRUE

log_archive_dest_state_14
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_state_15
IMMEDIATE TRUE

log_archive_dest_state_16
IMMEDIATE TRUE

log_archive_dest_state_17
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_state_18
IMMEDIATE TRUE

log_archive_dest_state_19
IMMEDIATE TRUE

log_archive_dest_state_20
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_state_21
IMMEDIATE TRUE

log_archive_dest_state_22
IMMEDIATE TRUE

log_archive_dest_state_23
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_state_24
IMMEDIATE TRUE

log_archive_dest_state_25
IMMEDIATE TRUE

log_archive_dest_state_26
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_state_27
IMMEDIATE TRUE

log_archive_dest_state_28
IMMEDIATE TRUE

log_archive_dest_state_29
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest_state_30
IMMEDIATE TRUE

log_archive_dest_state_31
IMMEDIATE TRUE

log_archive_start
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_dest
IMMEDIATE FALSE

log_archive_duplex_dest
IMMEDIATE FALSE

log_archive_min_succeed_dest
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
fal_client
IMMEDIATE FALSE

fal_server
IMMEDIATE FALSE

log_archive_trace
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
data_guard_sync_latency
IMMEDIATE FALSE

log_archive_config
IMMEDIATE FALSE

log_archive_format
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
data_guard_max_io_time
IMMEDIATE FALSE

data_guard_max_longio_time
IMMEDIATE FALSE

redo_transport_user
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_archive_max_processes
IMMEDIATE FALSE

log_buffer
FALSE	  FALSE

log_checkpoint_interval
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_checkpoint_timeout
IMMEDIATE FALSE

archive_lag_target
IMMEDIATE FALSE

db_files
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_file_multiblock_read_count
IMMEDIATE TRUE

read_only_open_delayed
FALSE	  FALSE

cluster_database
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
cluster_database_instances
FALSE	  FALSE

db_create_file_dest
IMMEDIATE TRUE

db_create_online_log_dest_1
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_create_online_log_dest_2
IMMEDIATE TRUE

db_create_online_log_dest_3
IMMEDIATE TRUE

db_create_online_log_dest_4
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_create_online_log_dest_5
IMMEDIATE TRUE

db_recovery_file_dest
IMMEDIATE FALSE

db_recovery_file_dest_size
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
standby_file_management
IMMEDIATE FALSE

db_unrecoverable_scn_tracking
IMMEDIATE TRUE

thread
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
enabled_PDBs_on_standby
IMMEDIATE FALSE

fast_start_io_target
IMMEDIATE FALSE

fast_start_mttr_target
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
log_checkpoints_to_alert
IMMEDIATE FALSE

db_lost_write_protect
IMMEDIATE FALSE

recovery_parallelism
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
enable_goldengate_replication
IMMEDIATE FALSE

inmemory_adg_enabled
IMMEDIATE FALSE

db_flashback_retention_target
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
data_transfer_cache_size
IMMEDIATE FALSE

enable_imc_with_mira
IMMEDIATE FALSE

adg_account_info_tracking
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
adg_redirect_dml
IMMEDIATE FALSE

dml_locks
FALSE	  FALSE

replication_dependency_tracking
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
transactions
FALSE	  FALSE

transactions_per_rollback_segment
FALSE	  FALSE

temp_undo_enabled
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
rollback_segments
FALSE	  FALSE

undo_management
FALSE	  FALSE

undo_tablespace
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
undo_retention
IMMEDIATE FALSE

fast_start_parallel_rollback
IMMEDIATE FALSE

resumable_timeout
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
instance_number
FALSE	  FALSE

heat_map
IMMEDIATE TRUE

inmemory_size
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
inmemory_xmem_size
IMMEDIATE FALSE

inmemory_prefer_xmem_memcompress
IMMEDIATE FALSE

inmemory_prefer_xmem_priority
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
allow_rowid_column_type
IMMEDIATE TRUE

db_block_checking
IMMEDIATE FALSE

recyclebin
DEFERRED  TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
db_index_compression_inheritance
IMMEDIATE TRUE

db_securefile
IMMEDIATE TRUE

inmemory_clause_default
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
inmemory_force
IMMEDIATE FALSE

inmemory_query
IMMEDIATE TRUE

inmemory_expressions_usage
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
inmemory_virtual_columns
IMMEDIATE FALSE

inmemory_max_populate_servers
IMMEDIATE FALSE

inmemory_trickle_repopulate_servers_percent
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
inmemory_optimized_arithmetic
IMMEDIATE FALSE

inmemory_automatic_level
IMMEDIATE FALSE

create_stored_outlines
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
serial_reuse
FALSE	  FALSE

ldap_directory_access
IMMEDIATE FALSE

ldap_directory_sysauth
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
os_roles
FALSE	  FALSE

rdbms_server_dn
FALSE	  FALSE

remote_os_authent
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
remote_os_roles
FALSE	  FALSE

sec_case_sensitive_logon
IMMEDIATE FALSE

remote_login_passwordfile
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
license_max_users
IMMEDIATE FALSE

audit_sys_operations
FALSE	  FALSE

DBFIPS_140
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
one_step_plugin_for_pdb_with_tde
IMMEDIATE FALSE

external_keystore_credential_location
FALSE	  FALSE

unified_audit_sga_queue_size
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
wallet_root
FALSE	  FALSE

tde_configuration
IMMEDIATE FALSE

db_domain
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
global_names
IMMEDIATE TRUE

distributed_lock_timeout
FALSE	  FALSE

commit_point_strength
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
global_txn_processes
IMMEDIATE FALSE

instance_name
FALSE	  FALSE

dispatchers
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
shared_servers
IMMEDIATE FALSE

max_shared_servers
IMMEDIATE FALSE

max_dispatchers
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
circuits
IMMEDIATE FALSE

shared_server_sessions
IMMEDIATE FALSE

use_dedicated_broker
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
connection_brokers
IMMEDIATE FALSE

local_listener
IMMEDIATE FALSE

forward_listener
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
remote_listener
IMMEDIATE FALSE

listener_networks
IMMEDIATE FALSE

cursor_space_for_time
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
session_cached_cursors
DEFERRED  TRUE

remote_dependencies_mode
IMMEDIATE TRUE

smtp_out_server
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
plsql_v2_compatibility
IMMEDIATE TRUE

plsql_warnings
IMMEDIATE TRUE

plsql_code_type
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
plsql_debug
IMMEDIATE TRUE

plsql_optimize_level
IMMEDIATE TRUE

plsql_ccflags
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
plscope_settings
IMMEDIATE TRUE

permit_92_wrap_format
FALSE	  FALSE

java_jit_enabled
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
java_restrict
FALSE	  FALSE

job_queue_processes
IMMEDIATE FALSE

scheduler_follow_pdbtz
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
parallel_min_percent
FALSE	  TRUE

create_bitmap_area_size
FALSE	  FALSE

bitmap_merge_area_size
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
cursor_sharing
IMMEDIATE TRUE

result_cache_mode
IMMEDIATE TRUE

parallel_min_servers
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
parallel_max_servers
IMMEDIATE FALSE

parallel_instance_group
IMMEDIATE TRUE

parallel_execution_message_size
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
hash_area_size
FALSE	  TRUE

private_temp_table_prefix
DEFERRED  FALSE

result_cache_max_size
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
result_cache_max_result
IMMEDIATE FALSE

result_cache_remote_expiration
IMMEDIATE TRUE

shadow_core_dump
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
background_core_dump
IMMEDIATE FALSE

background_dump_dest
IMMEDIATE FALSE

user_dump_dest
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
core_dump_dest
IMMEDIATE FALSE

audit_file_dest
DEFERRED  FALSE

audit_syslog_level
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
unified_audit_systemlog
FALSE	  FALSE

unified_audit_common_systemlog
FALSE	  FALSE

resource_manage_goldengate
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
object_cache_optimal_size
DEFERRED  TRUE

object_cache_max_size_percent
DEFERRED  TRUE

lob_signature_enable
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
session_max_open_files
FALSE	  FALSE

open_links
FALSE	  FALSE

open_links_per_instance
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
commit_write
IMMEDIATE TRUE

commit_wait
IMMEDIATE TRUE

commit_logging
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
optimizer_features_enable
IMMEDIATE TRUE

fixed_date
IMMEDIATE FALSE

audit_trail
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
sort_area_size
DEFERRED  TRUE

sort_area_retained_size
DEFERRED  TRUE

cell_offload_processing
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
cell_offload_decryption
IMMEDIATE FALSE

cell_offload_parameters
IMMEDIATE TRUE

cell_offload_compaction
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
cell_offload_plan_display
IMMEDIATE TRUE

db_name
FALSE	  FALSE

db_unique_name
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
open_cursors
IMMEDIATE FALSE

ifile
FALSE	  FALSE

sql_trace
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
os_authent_prefix
FALSE	  FALSE

optimizer_mode
IMMEDIATE TRUE

sql92_security
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
blank_trimming
FALSE	  FALSE

star_transformation_enabled
IMMEDIATE TRUE

parallel_degree_policy
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
parallel_adaptive_multi_user
IMMEDIATE FALSE

parallel_threads_per_cpu
IMMEDIATE FALSE

optimizer_index_cost_adj
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
optimizer_index_caching
IMMEDIATE TRUE

query_rewrite_enabled
IMMEDIATE TRUE

query_rewrite_integrity
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
pga_aggregate_target
IMMEDIATE FALSE

workarea_size_policy
IMMEDIATE TRUE

optimizer_dynamic_sampling
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
statistics_level
IMMEDIATE TRUE

cursor_bind_capture_destination
IMMEDIATE TRUE

skip_unusable_indexes
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
optimizer_ignore_hints
IMMEDIATE TRUE

optimizer_secure_view_merging
IMMEDIATE FALSE

ddl_lock_timeout
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
deferred_segment_creation
IMMEDIATE TRUE

optimizer_use_pending_statistics
IMMEDIATE TRUE

optimizer_capture_sql_plan_baselines
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
optimizer_use_sql_plan_baselines
IMMEDIATE TRUE

parallel_min_time_threshold
IMMEDIATE TRUE

parallel_degree_limit
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
parallel_force_local
IMMEDIATE TRUE

optimizer_use_invisible_indexes
IMMEDIATE TRUE

dst_upgrade_insert_conv
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
parallel_servers_target
IMMEDIATE FALSE

max_string_size
IMMEDIATE FALSE

optimizer_adaptive_reporting_only
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
optimizer_adaptive_plans
IMMEDIATE TRUE

optimizer_inmemory_aware
IMMEDIATE TRUE

cursor_invalidation
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
approx_for_aggregation
IMMEDIATE TRUE

approx_for_count_distinct
IMMEDIATE TRUE

approx_for_percentile
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
optimizer_adaptive_statistics
IMMEDIATE TRUE

optimizer_ignore_parallel_hints
IMMEDIATE TRUE

parallel_min_degree
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
sec_protocol_error_trace_action
IMMEDIATE FALSE

sec_protocol_error_further_action
IMMEDIATE FALSE

sec_max_failed_login_attempts
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
sec_return_server_release_banner
FALSE	  FALSE

enable_ddl_logging
IMMEDIATE TRUE

client_result_cache_size
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
client_result_cache_lag
FALSE	  FALSE

outbound_dblink_protocols
IMMEDIATE FALSE

allow_global_dblinks
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
client_statistics_level
DEFERRED  FALSE

aq_tm_processes
IMMEDIATE TRUE

hs_autoregister
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
xml_db_events
IMMEDIATE TRUE

dg_broker_start
IMMEDIATE FALSE

dg_broker_config_file1
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
dg_broker_config_file2
IMMEDIATE FALSE

olap_page_pool_size
DEFERRED  TRUE

asm_diskstring
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
asm_preferred_read_failure_groups
IMMEDIATE FALSE

control_management_pack_access
IMMEDIATE FALSE

awr_pdb_autoflush_enabled
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
awr_pdb_max_parallel_slaves
IMMEDIATE FALSE

awr_snapshot_time_offset
IMMEDIATE FALSE

sqltune_category
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
autotask_max_active_pdbs
IMMEDIATE FALSE

enable_automatic_maintenance_pdb
IMMEDIATE FALSE

spatial_vector_acceleration
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
diagnostic_dest
IMMEDIATE FALSE

tracefile_identifier
FALSE	  TRUE

max_dump_file_size
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
trace_enabled
IMMEDIATE FALSE

cell_offloadgroup_name
IMMEDIATE TRUE

enable_pluggable_database
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
pdb_os_credential
FALSE	  FALSE

pdb_file_name_convert
IMMEDIATE TRUE

noncdb_compatible
FALSE	  FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
common_user_prefix
FALSE	  FALSE

target_pdbs
FALSE	  FALSE

max_pdbs
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
cdb_cluster
FALSE	  FALSE

cdb_cluster_name
FALSE	  FALSE

standby_pdb_source_file_directory
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
standby_pdb_source_file_dblink
IMMEDIATE FALSE

remote_recovery_file_dest
IMMEDIATE FALSE

disable_pdb_feature
IMMEDIATE FALSE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
containers_parallel_degree
IMMEDIATE TRUE

default_sharing
IMMEDIATE TRUE

pdb_lockdown
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
pdb_template
IMMEDIATE TRUE

shrd_dupl_table_refresh_rate
IMMEDIATE FALSE

multishard_query_data_consistency
IMMEDIATE TRUE


NAME
--------------------------------------------------------------------------------
ISSYS_MOD ISSES
--------- -----
multishard_query_partial_results
IMMEDIATE TRUE


445 rows selected.

SQL> set lines 200
SQL> col name for a45
SQL> /

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
lock_name_space 			      FALSE	FALSE
processes				      FALSE	FALSE
sessions				      IMMEDIATE FALSE
timed_statistics			      IMMEDIATE TRUE
timed_os_statistics			      IMMEDIATE TRUE
resource_limit				      IMMEDIATE FALSE
license_max_sessions			      IMMEDIATE FALSE
license_sessions_warning		      IMMEDIATE FALSE
long_module_action			      IMMEDIATE FALSE
standby_db_preserve_states		      FALSE	FALSE
instance_abort_delay_time		      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
cpu_count				      IMMEDIATE FALSE
cpu_min_count				      IMMEDIATE FALSE
instance_groups 			      FALSE	FALSE
event					      FALSE	FALSE
sga_max_size				      FALSE	FALSE
use_large_pages 			      FALSE	FALSE
pre_page_sga				      FALSE	FALSE
shared_memory_address			      FALSE	FALSE
hi_shared_memory_address		      FALSE	FALSE
lock_sga				      FALSE	FALSE
processor_group_name			      FALSE	FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
allow_group_access_to_sga		      FALSE	FALSE
sga_min_size				      IMMEDIATE FALSE
shared_pool_size			      IMMEDIATE FALSE
large_pool_size 			      IMMEDIATE FALSE
java_pool_size				      IMMEDIATE FALSE
streams_pool_size			      IMMEDIATE FALSE
shared_pool_reserved_size		      FALSE	FALSE
java_soft_sessionspace_limit		      FALSE	FALSE
java_max_sessionspace_size		      FALSE	FALSE
pga_aggregate_limit			      IMMEDIATE FALSE
spfile					      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
instance_type				      FALSE	FALSE
uniform_log_timestamp_format		      IMMEDIATE FALSE
nls_language				      FALSE	TRUE
nls_territory				      FALSE	TRUE
nls_sort				      FALSE	TRUE
nls_date_language			      FALSE	TRUE
nls_date_format 			      FALSE	TRUE
nls_currency				      FALSE	TRUE
nls_numeric_characters			      FALSE	TRUE
nls_iso_currency			      FALSE	TRUE
nls_calendar				      FALSE	TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
nls_time_format 			      FALSE	TRUE
nls_timestamp_format			      FALSE	TRUE
nls_time_tz_format			      FALSE	TRUE
nls_timestamp_tz_format 		      FALSE	TRUE
nls_dual_currency			      FALSE	TRUE
nls_comp				      FALSE	TRUE
nls_length_semantics			      IMMEDIATE TRUE
nls_nchar_conv_excp			      IMMEDIATE TRUE
disk_asynch_io				      FALSE	FALSE
tape_asynch_io				      FALSE	FALSE
dbwr_io_slaves				      FALSE	FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
backup_tape_io_slaves			      DEFERRED	FALSE
fileio_network_adapters 		      FALSE	FALSE
filesystemio_options			      FALSE	FALSE
dnfs_batch_size 			      FALSE	FALSE
clonedb 				      FALSE	FALSE
instant_restore 			      FALSE	FALSE
http_proxy				      IMMEDIATE FALSE
ssl_wallet				      IMMEDIATE FALSE
ofs_threads				      IMMEDIATE FALSE
resource_manager_cpu_allocation 	      IMMEDIATE FALSE
resource_manager_plan			      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
db_performance_profile			      IMMEDIATE FALSE
max_iops				      IMMEDIATE FALSE
max_mbps				      IMMEDIATE FALSE
max_idle_time				      IMMEDIATE FALSE
max_idle_blocker_time			      IMMEDIATE FALSE
cluster_interconnects			      FALSE	FALSE
file_mapping				      IMMEDIATE FALSE
max_datapump_jobs_per_pdb		      IMMEDIATE FALSE
max_datapump_parallel_per_job		      IMMEDIATE FALSE
service_names				      IMMEDIATE FALSE
threaded_execution			      FALSE	FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
clonedb_dir				      FALSE	FALSE
enable_dnfs_dispatcher			      FALSE	FALSE
gcs_server_processes			      FALSE	FALSE
active_instance_count			      FALSE	FALSE
instance_mode				      FALSE	FALSE
sga_target				      IMMEDIATE FALSE
memory_target				      IMMEDIATE FALSE
memory_max_target			      FALSE	FALSE
control_files				      FALSE	FALSE
db_file_name_convert			      FALSE	TRUE
log_file_name_convert			      FALSE	FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
control_file_record_keep_time		      IMMEDIATE FALSE
db_block_buffers			      FALSE	FALSE
db_block_checksum			      IMMEDIATE FALSE
db_ultra_safe				      FALSE	FALSE
db_block_size				      FALSE	FALSE
db_cache_size				      IMMEDIATE FALSE
db_2k_cache_size			      IMMEDIATE FALSE
db_4k_cache_size			      IMMEDIATE FALSE
db_8k_cache_size			      IMMEDIATE FALSE
db_16k_cache_size			      IMMEDIATE FALSE
db_32k_cache_size			      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
db_keep_cache_size			      IMMEDIATE FALSE
db_recycle_cache_size			      IMMEDIATE FALSE
memoptimize_pool_size			      IMMEDIATE FALSE
db_big_table_cache_percent_target	      IMMEDIATE FALSE
encrypt_new_tablespaces 		      IMMEDIATE FALSE
db_writer_processes			      FALSE	FALSE
buffer_pool_keep			      FALSE	FALSE
buffer_pool_recycle			      FALSE	FALSE
db_flash_cache_file			      IMMEDIATE FALSE
db_flash_cache_size			      IMMEDIATE FALSE
db_cache_advice 			      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
compatible				      FALSE	FALSE
log_archive_dest_1			      IMMEDIATE TRUE
log_archive_dest_2			      IMMEDIATE TRUE
log_archive_dest_3			      IMMEDIATE TRUE
log_archive_dest_4			      IMMEDIATE TRUE
log_archive_dest_5			      IMMEDIATE TRUE
log_archive_dest_6			      IMMEDIATE TRUE
log_archive_dest_7			      IMMEDIATE TRUE
log_archive_dest_8			      IMMEDIATE TRUE
log_archive_dest_9			      IMMEDIATE TRUE
log_archive_dest_10			      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
log_archive_dest_11			      IMMEDIATE TRUE
log_archive_dest_12			      IMMEDIATE TRUE
log_archive_dest_13			      IMMEDIATE TRUE
log_archive_dest_14			      IMMEDIATE TRUE
log_archive_dest_15			      IMMEDIATE TRUE
log_archive_dest_16			      IMMEDIATE TRUE
log_archive_dest_17			      IMMEDIATE TRUE
log_archive_dest_18			      IMMEDIATE TRUE
log_archive_dest_19			      IMMEDIATE TRUE
log_archive_dest_20			      IMMEDIATE TRUE
log_archive_dest_21			      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
log_archive_dest_22			      IMMEDIATE TRUE
log_archive_dest_23			      IMMEDIATE TRUE
log_archive_dest_24			      IMMEDIATE TRUE
log_archive_dest_25			      IMMEDIATE TRUE
log_archive_dest_26			      IMMEDIATE TRUE
log_archive_dest_27			      IMMEDIATE TRUE
log_archive_dest_28			      IMMEDIATE TRUE
log_archive_dest_29			      IMMEDIATE TRUE
log_archive_dest_30			      IMMEDIATE TRUE
log_archive_dest_31			      IMMEDIATE TRUE
log_archive_dest_state_1		      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
log_archive_dest_state_2		      IMMEDIATE TRUE
log_archive_dest_state_3		      IMMEDIATE TRUE
log_archive_dest_state_4		      IMMEDIATE TRUE
log_archive_dest_state_5		      IMMEDIATE TRUE
log_archive_dest_state_6		      IMMEDIATE TRUE
log_archive_dest_state_7		      IMMEDIATE TRUE
log_archive_dest_state_8		      IMMEDIATE TRUE
log_archive_dest_state_9		      IMMEDIATE TRUE
log_archive_dest_state_10		      IMMEDIATE TRUE
log_archive_dest_state_11		      IMMEDIATE TRUE
log_archive_dest_state_12		      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
log_archive_dest_state_13		      IMMEDIATE TRUE
log_archive_dest_state_14		      IMMEDIATE TRUE
log_archive_dest_state_15		      IMMEDIATE TRUE
log_archive_dest_state_16		      IMMEDIATE TRUE
log_archive_dest_state_17		      IMMEDIATE TRUE
log_archive_dest_state_18		      IMMEDIATE TRUE
log_archive_dest_state_19		      IMMEDIATE TRUE
log_archive_dest_state_20		      IMMEDIATE TRUE
log_archive_dest_state_21		      IMMEDIATE TRUE
log_archive_dest_state_22		      IMMEDIATE TRUE
log_archive_dest_state_23		      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
log_archive_dest_state_24		      IMMEDIATE TRUE
log_archive_dest_state_25		      IMMEDIATE TRUE
log_archive_dest_state_26		      IMMEDIATE TRUE
log_archive_dest_state_27		      IMMEDIATE TRUE
log_archive_dest_state_28		      IMMEDIATE TRUE
log_archive_dest_state_29		      IMMEDIATE TRUE
log_archive_dest_state_30		      IMMEDIATE TRUE
log_archive_dest_state_31		      IMMEDIATE TRUE
log_archive_start			      FALSE	FALSE
log_archive_dest			      IMMEDIATE FALSE
log_archive_duplex_dest 		      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
log_archive_min_succeed_dest		      IMMEDIATE TRUE
fal_client				      IMMEDIATE FALSE
fal_server				      IMMEDIATE FALSE
log_archive_trace			      IMMEDIATE FALSE
data_guard_sync_latency 		      IMMEDIATE FALSE
log_archive_config			      IMMEDIATE FALSE
log_archive_format			      FALSE	FALSE
data_guard_max_io_time			      IMMEDIATE FALSE
data_guard_max_longio_time		      IMMEDIATE FALSE
redo_transport_user			      IMMEDIATE FALSE
log_archive_max_processes		      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
log_buffer				      FALSE	FALSE
log_checkpoint_interval 		      IMMEDIATE FALSE
log_checkpoint_timeout			      IMMEDIATE FALSE
archive_lag_target			      IMMEDIATE FALSE
db_files				      FALSE	FALSE
db_file_multiblock_read_count		      IMMEDIATE TRUE
read_only_open_delayed			      FALSE	FALSE
cluster_database			      FALSE	FALSE
cluster_database_instances		      FALSE	FALSE
db_create_file_dest			      IMMEDIATE TRUE
db_create_online_log_dest_1		      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
db_create_online_log_dest_2		      IMMEDIATE TRUE
db_create_online_log_dest_3		      IMMEDIATE TRUE
db_create_online_log_dest_4		      IMMEDIATE TRUE
db_create_online_log_dest_5		      IMMEDIATE TRUE
db_recovery_file_dest			      IMMEDIATE FALSE
db_recovery_file_dest_size		      IMMEDIATE FALSE
standby_file_management 		      IMMEDIATE FALSE
db_unrecoverable_scn_tracking		      IMMEDIATE TRUE
thread					      IMMEDIATE FALSE
enabled_PDBs_on_standby 		      IMMEDIATE FALSE
fast_start_io_target			      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
fast_start_mttr_target			      IMMEDIATE FALSE
log_checkpoints_to_alert		      IMMEDIATE FALSE
db_lost_write_protect			      IMMEDIATE FALSE
recovery_parallelism			      IMMEDIATE FALSE
enable_goldengate_replication		      IMMEDIATE FALSE
inmemory_adg_enabled			      IMMEDIATE FALSE
db_flashback_retention_target		      IMMEDIATE FALSE
data_transfer_cache_size		      IMMEDIATE FALSE
enable_imc_with_mira			      IMMEDIATE FALSE
adg_account_info_tracking		      FALSE	FALSE
adg_redirect_dml			      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
dml_locks				      FALSE	FALSE
replication_dependency_tracking 	      FALSE	FALSE
transactions				      FALSE	FALSE
transactions_per_rollback_segment	      FALSE	FALSE
temp_undo_enabled			      IMMEDIATE TRUE
rollback_segments			      FALSE	FALSE
undo_management 			      FALSE	FALSE
undo_tablespace 			      IMMEDIATE FALSE
undo_retention				      IMMEDIATE FALSE
fast_start_parallel_rollback		      IMMEDIATE FALSE
resumable_timeout			      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
instance_number 			      FALSE	FALSE
heat_map				      IMMEDIATE TRUE
inmemory_size				      IMMEDIATE FALSE
inmemory_xmem_size			      IMMEDIATE FALSE
inmemory_prefer_xmem_memcompress	      IMMEDIATE FALSE
inmemory_prefer_xmem_priority		      IMMEDIATE FALSE
allow_rowid_column_type 		      IMMEDIATE TRUE
db_block_checking			      IMMEDIATE FALSE
recyclebin				      DEFERRED	TRUE
db_index_compression_inheritance	      IMMEDIATE TRUE
db_securefile				      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
inmemory_clause_default 		      IMMEDIATE TRUE
inmemory_force				      IMMEDIATE FALSE
inmemory_query				      IMMEDIATE TRUE
inmemory_expressions_usage		      IMMEDIATE FALSE
inmemory_virtual_columns		      IMMEDIATE FALSE
inmemory_max_populate_servers		      IMMEDIATE FALSE
inmemory_trickle_repopulate_servers_percent   IMMEDIATE FALSE
inmemory_optimized_arithmetic		      IMMEDIATE FALSE
inmemory_automatic_level		      IMMEDIATE FALSE
create_stored_outlines			      IMMEDIATE TRUE
serial_reuse				      FALSE	FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
ldap_directory_access			      IMMEDIATE FALSE
ldap_directory_sysauth			      FALSE	FALSE
os_roles				      FALSE	FALSE
rdbms_server_dn 			      FALSE	FALSE
remote_os_authent			      FALSE	FALSE
remote_os_roles 			      FALSE	FALSE
sec_case_sensitive_logon		      IMMEDIATE FALSE
remote_login_passwordfile		      FALSE	FALSE
license_max_users			      IMMEDIATE FALSE
audit_sys_operations			      FALSE	FALSE
DBFIPS_140				      FALSE	FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
one_step_plugin_for_pdb_with_tde	      IMMEDIATE FALSE
external_keystore_credential_location	      FALSE	FALSE
unified_audit_sga_queue_size		      FALSE	FALSE
wallet_root				      FALSE	FALSE
tde_configuration			      IMMEDIATE FALSE
db_domain				      FALSE	FALSE
global_names				      IMMEDIATE TRUE
distributed_lock_timeout		      FALSE	FALSE
commit_point_strength			      FALSE	FALSE
global_txn_processes			      IMMEDIATE FALSE
instance_name				      FALSE	FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
dispatchers				      IMMEDIATE FALSE
shared_servers				      IMMEDIATE FALSE
max_shared_servers			      IMMEDIATE FALSE
max_dispatchers 			      IMMEDIATE FALSE
circuits				      IMMEDIATE FALSE
shared_server_sessions			      IMMEDIATE FALSE
use_dedicated_broker			      IMMEDIATE FALSE
connection_brokers			      IMMEDIATE FALSE
local_listener				      IMMEDIATE FALSE
forward_listener			      IMMEDIATE FALSE
remote_listener 			      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
listener_networks			      IMMEDIATE FALSE
cursor_space_for_time			      FALSE	FALSE
session_cached_cursors			      DEFERRED	TRUE
remote_dependencies_mode		      IMMEDIATE TRUE
smtp_out_server 			      IMMEDIATE TRUE
plsql_v2_compatibility			      IMMEDIATE TRUE
plsql_warnings				      IMMEDIATE TRUE
plsql_code_type 			      IMMEDIATE TRUE
plsql_debug				      IMMEDIATE TRUE
plsql_optimize_level			      IMMEDIATE TRUE
plsql_ccflags				      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
plscope_settings			      IMMEDIATE TRUE
permit_92_wrap_format			      FALSE	FALSE
java_jit_enabled			      IMMEDIATE TRUE
java_restrict				      FALSE	FALSE
job_queue_processes			      IMMEDIATE FALSE
scheduler_follow_pdbtz			      IMMEDIATE FALSE
parallel_min_percent			      FALSE	TRUE
create_bitmap_area_size 		      FALSE	FALSE
bitmap_merge_area_size			      FALSE	FALSE
cursor_sharing				      IMMEDIATE TRUE
result_cache_mode			      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
parallel_min_servers			      IMMEDIATE FALSE
parallel_max_servers			      IMMEDIATE FALSE
parallel_instance_group 		      IMMEDIATE TRUE
parallel_execution_message_size 	      FALSE	FALSE
hash_area_size				      FALSE	TRUE
private_temp_table_prefix		      DEFERRED	FALSE
result_cache_max_size			      IMMEDIATE FALSE
result_cache_max_result 		      IMMEDIATE FALSE
result_cache_remote_expiration		      IMMEDIATE TRUE
shadow_core_dump			      IMMEDIATE FALSE
background_core_dump			      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
background_dump_dest			      IMMEDIATE FALSE
user_dump_dest				      IMMEDIATE FALSE
core_dump_dest				      IMMEDIATE FALSE
audit_file_dest 			      DEFERRED	FALSE
audit_syslog_level			      FALSE	FALSE
unified_audit_systemlog 		      FALSE	FALSE
unified_audit_common_systemlog		      FALSE	FALSE
resource_manage_goldengate		      IMMEDIATE FALSE
object_cache_optimal_size		      DEFERRED	TRUE
object_cache_max_size_percent		      DEFERRED	TRUE
lob_signature_enable			      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
session_max_open_files			      FALSE	FALSE
open_links				      FALSE	FALSE
open_links_per_instance 		      FALSE	FALSE
commit_write				      IMMEDIATE TRUE
commit_wait				      IMMEDIATE TRUE
commit_logging				      IMMEDIATE TRUE
optimizer_features_enable		      IMMEDIATE TRUE
fixed_date				      IMMEDIATE FALSE
audit_trail				      FALSE	FALSE
sort_area_size				      DEFERRED	TRUE
sort_area_retained_size 		      DEFERRED	TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
cell_offload_processing 		      IMMEDIATE TRUE
cell_offload_decryption 		      IMMEDIATE FALSE
cell_offload_parameters 		      IMMEDIATE TRUE
cell_offload_compaction 		      IMMEDIATE TRUE
cell_offload_plan_display		      IMMEDIATE TRUE
db_name 				      FALSE	FALSE
db_unique_name				      FALSE	FALSE
open_cursors				      IMMEDIATE FALSE
ifile					      FALSE	FALSE
sql_trace				      IMMEDIATE TRUE
os_authent_prefix			      FALSE	FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
optimizer_mode				      IMMEDIATE TRUE
sql92_security				      FALSE	FALSE
blank_trimming				      FALSE	FALSE
star_transformation_enabled		      IMMEDIATE TRUE
parallel_degree_policy			      IMMEDIATE TRUE
parallel_adaptive_multi_user		      IMMEDIATE FALSE
parallel_threads_per_cpu		      IMMEDIATE FALSE
optimizer_index_cost_adj		      IMMEDIATE TRUE
optimizer_index_caching 		      IMMEDIATE TRUE
query_rewrite_enabled			      IMMEDIATE TRUE
query_rewrite_integrity 		      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
pga_aggregate_target			      IMMEDIATE FALSE
workarea_size_policy			      IMMEDIATE TRUE
optimizer_dynamic_sampling		      IMMEDIATE TRUE
statistics_level			      IMMEDIATE TRUE
cursor_bind_capture_destination 	      IMMEDIATE TRUE
skip_unusable_indexes			      IMMEDIATE TRUE
optimizer_ignore_hints			      IMMEDIATE TRUE
optimizer_secure_view_merging		      IMMEDIATE FALSE
ddl_lock_timeout			      IMMEDIATE TRUE
deferred_segment_creation		      IMMEDIATE TRUE
optimizer_use_pending_statistics	      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
optimizer_capture_sql_plan_baselines	      IMMEDIATE TRUE
optimizer_use_sql_plan_baselines	      IMMEDIATE TRUE
parallel_min_time_threshold		      IMMEDIATE TRUE
parallel_degree_limit			      IMMEDIATE TRUE
parallel_force_local			      IMMEDIATE TRUE
optimizer_use_invisible_indexes 	      IMMEDIATE TRUE
dst_upgrade_insert_conv 		      IMMEDIATE TRUE
parallel_servers_target 		      IMMEDIATE FALSE
max_string_size 			      IMMEDIATE FALSE
optimizer_adaptive_reporting_only	      IMMEDIATE TRUE
optimizer_adaptive_plans		      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
optimizer_inmemory_aware		      IMMEDIATE TRUE
cursor_invalidation			      IMMEDIATE TRUE
approx_for_aggregation			      IMMEDIATE TRUE
approx_for_count_distinct		      IMMEDIATE TRUE
approx_for_percentile			      IMMEDIATE TRUE
optimizer_adaptive_statistics		      IMMEDIATE TRUE
optimizer_ignore_parallel_hints 	      IMMEDIATE TRUE
parallel_min_degree			      IMMEDIATE TRUE
sec_protocol_error_trace_action 	      IMMEDIATE FALSE
sec_protocol_error_further_action	      IMMEDIATE FALSE
sec_max_failed_login_attempts		      FALSE	FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
sec_return_server_release_banner	      FALSE	FALSE
enable_ddl_logging			      IMMEDIATE TRUE
client_result_cache_size		      FALSE	FALSE
client_result_cache_lag 		      FALSE	FALSE
outbound_dblink_protocols		      IMMEDIATE FALSE
allow_global_dblinks			      IMMEDIATE FALSE
client_statistics_level 		      DEFERRED	FALSE
aq_tm_processes 			      IMMEDIATE TRUE
hs_autoregister 			      IMMEDIATE FALSE
xml_db_events				      IMMEDIATE TRUE
dg_broker_start 			      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
dg_broker_config_file1			      IMMEDIATE FALSE
dg_broker_config_file2			      IMMEDIATE FALSE
olap_page_pool_size			      DEFERRED	TRUE
asm_diskstring				      IMMEDIATE TRUE
asm_preferred_read_failure_groups	      IMMEDIATE FALSE
control_management_pack_access		      IMMEDIATE FALSE
awr_pdb_autoflush_enabled		      IMMEDIATE FALSE
awr_pdb_max_parallel_slaves		      IMMEDIATE FALSE
awr_snapshot_time_offset		      IMMEDIATE FALSE
sqltune_category			      IMMEDIATE TRUE
autotask_max_active_pdbs		      IMMEDIATE FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
enable_automatic_maintenance_pdb	      IMMEDIATE FALSE
spatial_vector_acceleration		      IMMEDIATE TRUE
diagnostic_dest 			      IMMEDIATE FALSE
tracefile_identifier			      FALSE	TRUE
max_dump_file_size			      IMMEDIATE TRUE
trace_enabled				      IMMEDIATE FALSE
cell_offloadgroup_name			      IMMEDIATE TRUE
enable_pluggable_database		      FALSE	FALSE
pdb_os_credential			      FALSE	FALSE
pdb_file_name_convert			      IMMEDIATE TRUE
noncdb_compatible			      FALSE	FALSE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
common_user_prefix			      FALSE	FALSE
target_pdbs				      FALSE	FALSE
max_pdbs				      IMMEDIATE FALSE
cdb_cluster				      FALSE	FALSE
cdb_cluster_name			      FALSE	FALSE
standby_pdb_source_file_directory	      IMMEDIATE FALSE
standby_pdb_source_file_dblink		      IMMEDIATE FALSE
remote_recovery_file_dest		      IMMEDIATE FALSE
disable_pdb_feature			      IMMEDIATE FALSE
containers_parallel_degree		      IMMEDIATE TRUE
default_sharing 			      IMMEDIATE TRUE

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
pdb_lockdown				      IMMEDIATE TRUE
pdb_template				      IMMEDIATE TRUE
shrd_dupl_table_refresh_rate		      IMMEDIATE FALSE
multishard_query_data_consistency	      IMMEDIATE TRUE
multishard_query_partial_results	      IMMEDIATE TRUE

445 rows selected.

SQL> set pages 500
SQL> /

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
lock_name_space 			      FALSE	FALSE
processes				      FALSE	FALSE
sessions				      IMMEDIATE FALSE
timed_statistics			      IMMEDIATE TRUE
timed_os_statistics			      IMMEDIATE TRUE
resource_limit				      IMMEDIATE FALSE
license_max_sessions			      IMMEDIATE FALSE
license_sessions_warning		      IMMEDIATE FALSE
long_module_action			      IMMEDIATE FALSE
standby_db_preserve_states		      FALSE	FALSE
instance_abort_delay_time		      IMMEDIATE FALSE
cpu_count				      IMMEDIATE FALSE
cpu_min_count				      IMMEDIATE FALSE
instance_groups 			      FALSE	FALSE
event					      FALSE	FALSE
sga_max_size				      FALSE	FALSE
use_large_pages 			      FALSE	FALSE
pre_page_sga				      FALSE	FALSE
shared_memory_address			      FALSE	FALSE
hi_shared_memory_address		      FALSE	FALSE
lock_sga				      FALSE	FALSE
processor_group_name			      FALSE	FALSE
allow_group_access_to_sga		      FALSE	FALSE
sga_min_size				      IMMEDIATE FALSE
shared_pool_size			      IMMEDIATE FALSE
large_pool_size 			      IMMEDIATE FALSE
java_pool_size				      IMMEDIATE FALSE
streams_pool_size			      IMMEDIATE FALSE
shared_pool_reserved_size		      FALSE	FALSE
java_soft_sessionspace_limit		      FALSE	FALSE
java_max_sessionspace_size		      FALSE	FALSE
pga_aggregate_limit			      IMMEDIATE FALSE
spfile					      IMMEDIATE FALSE
instance_type				      FALSE	FALSE
uniform_log_timestamp_format		      IMMEDIATE FALSE
nls_language				      FALSE	TRUE
nls_territory				      FALSE	TRUE
nls_sort				      FALSE	TRUE
nls_date_language			      FALSE	TRUE
nls_date_format 			      FALSE	TRUE
nls_currency				      FALSE	TRUE
nls_numeric_characters			      FALSE	TRUE
nls_iso_currency			      FALSE	TRUE
nls_calendar				      FALSE	TRUE
nls_time_format 			      FALSE	TRUE
nls_timestamp_format			      FALSE	TRUE
nls_time_tz_format			      FALSE	TRUE
nls_timestamp_tz_format 		      FALSE	TRUE
nls_dual_currency			      FALSE	TRUE
nls_comp				      FALSE	TRUE
nls_length_semantics			      IMMEDIATE TRUE
nls_nchar_conv_excp			      IMMEDIATE TRUE
disk_asynch_io				      FALSE	FALSE
tape_asynch_io				      FALSE	FALSE
dbwr_io_slaves				      FALSE	FALSE
backup_tape_io_slaves			      DEFERRED	FALSE
fileio_network_adapters 		      FALSE	FALSE
filesystemio_options			      FALSE	FALSE
dnfs_batch_size 			      FALSE	FALSE
clonedb 				      FALSE	FALSE
instant_restore 			      FALSE	FALSE
http_proxy				      IMMEDIATE FALSE
ssl_wallet				      IMMEDIATE FALSE
ofs_threads				      IMMEDIATE FALSE
resource_manager_cpu_allocation 	      IMMEDIATE FALSE
resource_manager_plan			      IMMEDIATE FALSE
db_performance_profile			      IMMEDIATE FALSE
max_iops				      IMMEDIATE FALSE
max_mbps				      IMMEDIATE FALSE
max_idle_time				      IMMEDIATE FALSE
max_idle_blocker_time			      IMMEDIATE FALSE
cluster_interconnects			      FALSE	FALSE
file_mapping				      IMMEDIATE FALSE
max_datapump_jobs_per_pdb		      IMMEDIATE FALSE
max_datapump_parallel_per_job		      IMMEDIATE FALSE
service_names				      IMMEDIATE FALSE
threaded_execution			      FALSE	FALSE
clonedb_dir				      FALSE	FALSE
enable_dnfs_dispatcher			      FALSE	FALSE
gcs_server_processes			      FALSE	FALSE
active_instance_count			      FALSE	FALSE
instance_mode				      FALSE	FALSE
sga_target				      IMMEDIATE FALSE
memory_target				      IMMEDIATE FALSE
memory_max_target			      FALSE	FALSE
control_files				      FALSE	FALSE
db_file_name_convert			      FALSE	TRUE
log_file_name_convert			      FALSE	FALSE
control_file_record_keep_time		      IMMEDIATE FALSE
db_block_buffers			      FALSE	FALSE
db_block_checksum			      IMMEDIATE FALSE
db_ultra_safe				      FALSE	FALSE
db_block_size				      FALSE	FALSE
db_cache_size				      IMMEDIATE FALSE
db_2k_cache_size			      IMMEDIATE FALSE
db_4k_cache_size			      IMMEDIATE FALSE
db_8k_cache_size			      IMMEDIATE FALSE
db_16k_cache_size			      IMMEDIATE FALSE
db_32k_cache_size			      IMMEDIATE FALSE
db_keep_cache_size			      IMMEDIATE FALSE
db_recycle_cache_size			      IMMEDIATE FALSE
memoptimize_pool_size			      IMMEDIATE FALSE
db_big_table_cache_percent_target	      IMMEDIATE FALSE
encrypt_new_tablespaces 		      IMMEDIATE FALSE
db_writer_processes			      FALSE	FALSE
buffer_pool_keep			      FALSE	FALSE
buffer_pool_recycle			      FALSE	FALSE
db_flash_cache_file			      IMMEDIATE FALSE
db_flash_cache_size			      IMMEDIATE FALSE
db_cache_advice 			      IMMEDIATE FALSE
compatible				      FALSE	FALSE
log_archive_dest_1			      IMMEDIATE TRUE
log_archive_dest_2			      IMMEDIATE TRUE
log_archive_dest_3			      IMMEDIATE TRUE
log_archive_dest_4			      IMMEDIATE TRUE
log_archive_dest_5			      IMMEDIATE TRUE
log_archive_dest_6			      IMMEDIATE TRUE
log_archive_dest_7			      IMMEDIATE TRUE
log_archive_dest_8			      IMMEDIATE TRUE
log_archive_dest_9			      IMMEDIATE TRUE
log_archive_dest_10			      IMMEDIATE TRUE
log_archive_dest_11			      IMMEDIATE TRUE
log_archive_dest_12			      IMMEDIATE TRUE
log_archive_dest_13			      IMMEDIATE TRUE
log_archive_dest_14			      IMMEDIATE TRUE
log_archive_dest_15			      IMMEDIATE TRUE
log_archive_dest_16			      IMMEDIATE TRUE
log_archive_dest_17			      IMMEDIATE TRUE
log_archive_dest_18			      IMMEDIATE TRUE
log_archive_dest_19			      IMMEDIATE TRUE
log_archive_dest_20			      IMMEDIATE TRUE
log_archive_dest_21			      IMMEDIATE TRUE
log_archive_dest_22			      IMMEDIATE TRUE
log_archive_dest_23			      IMMEDIATE TRUE
log_archive_dest_24			      IMMEDIATE TRUE
log_archive_dest_25			      IMMEDIATE TRUE
log_archive_dest_26			      IMMEDIATE TRUE
log_archive_dest_27			      IMMEDIATE TRUE
log_archive_dest_28			      IMMEDIATE TRUE
log_archive_dest_29			      IMMEDIATE TRUE
log_archive_dest_30			      IMMEDIATE TRUE
log_archive_dest_31			      IMMEDIATE TRUE
log_archive_dest_state_1		      IMMEDIATE TRUE
log_archive_dest_state_2		      IMMEDIATE TRUE
log_archive_dest_state_3		      IMMEDIATE TRUE
log_archive_dest_state_4		      IMMEDIATE TRUE
log_archive_dest_state_5		      IMMEDIATE TRUE
log_archive_dest_state_6		      IMMEDIATE TRUE
log_archive_dest_state_7		      IMMEDIATE TRUE
log_archive_dest_state_8		      IMMEDIATE TRUE
log_archive_dest_state_9		      IMMEDIATE TRUE
log_archive_dest_state_10		      IMMEDIATE TRUE
log_archive_dest_state_11		      IMMEDIATE TRUE
log_archive_dest_state_12		      IMMEDIATE TRUE
log_archive_dest_state_13		      IMMEDIATE TRUE
log_archive_dest_state_14		      IMMEDIATE TRUE
log_archive_dest_state_15		      IMMEDIATE TRUE
log_archive_dest_state_16		      IMMEDIATE TRUE
log_archive_dest_state_17		      IMMEDIATE TRUE
log_archive_dest_state_18		      IMMEDIATE TRUE
log_archive_dest_state_19		      IMMEDIATE TRUE
log_archive_dest_state_20		      IMMEDIATE TRUE
log_archive_dest_state_21		      IMMEDIATE TRUE
log_archive_dest_state_22		      IMMEDIATE TRUE
log_archive_dest_state_23		      IMMEDIATE TRUE
log_archive_dest_state_24		      IMMEDIATE TRUE
log_archive_dest_state_25		      IMMEDIATE TRUE
log_archive_dest_state_26		      IMMEDIATE TRUE
log_archive_dest_state_27		      IMMEDIATE TRUE
log_archive_dest_state_28		      IMMEDIATE TRUE
log_archive_dest_state_29		      IMMEDIATE TRUE
log_archive_dest_state_30		      IMMEDIATE TRUE
log_archive_dest_state_31		      IMMEDIATE TRUE
log_archive_start			      FALSE	FALSE
log_archive_dest			      IMMEDIATE FALSE
log_archive_duplex_dest 		      IMMEDIATE FALSE
log_archive_min_succeed_dest		      IMMEDIATE TRUE
fal_client				      IMMEDIATE FALSE
fal_server				      IMMEDIATE FALSE
log_archive_trace			      IMMEDIATE FALSE
data_guard_sync_latency 		      IMMEDIATE FALSE
log_archive_config			      IMMEDIATE FALSE
log_archive_format			      FALSE	FALSE
data_guard_max_io_time			      IMMEDIATE FALSE
data_guard_max_longio_time		      IMMEDIATE FALSE
redo_transport_user			      IMMEDIATE FALSE
log_archive_max_processes		      IMMEDIATE FALSE
log_buffer				      FALSE	FALSE
log_checkpoint_interval 		      IMMEDIATE FALSE
log_checkpoint_timeout			      IMMEDIATE FALSE
archive_lag_target			      IMMEDIATE FALSE
db_files				      FALSE	FALSE
db_file_multiblock_read_count		      IMMEDIATE TRUE
read_only_open_delayed			      FALSE	FALSE
cluster_database			      FALSE	FALSE
cluster_database_instances		      FALSE	FALSE
db_create_file_dest			      IMMEDIATE TRUE
db_create_online_log_dest_1		      IMMEDIATE TRUE
db_create_online_log_dest_2		      IMMEDIATE TRUE
db_create_online_log_dest_3		      IMMEDIATE TRUE
db_create_online_log_dest_4		      IMMEDIATE TRUE
db_create_online_log_dest_5		      IMMEDIATE TRUE
db_recovery_file_dest			      IMMEDIATE FALSE
db_recovery_file_dest_size		      IMMEDIATE FALSE
standby_file_management 		      IMMEDIATE FALSE
db_unrecoverable_scn_tracking		      IMMEDIATE TRUE
thread					      IMMEDIATE FALSE
enabled_PDBs_on_standby 		      IMMEDIATE FALSE
fast_start_io_target			      IMMEDIATE FALSE
fast_start_mttr_target			      IMMEDIATE FALSE
log_checkpoints_to_alert		      IMMEDIATE FALSE
db_lost_write_protect			      IMMEDIATE FALSE
recovery_parallelism			      IMMEDIATE FALSE
enable_goldengate_replication		      IMMEDIATE FALSE
inmemory_adg_enabled			      IMMEDIATE FALSE
db_flashback_retention_target		      IMMEDIATE FALSE
data_transfer_cache_size		      IMMEDIATE FALSE
enable_imc_with_mira			      IMMEDIATE FALSE
adg_account_info_tracking		      FALSE	FALSE
adg_redirect_dml			      IMMEDIATE FALSE
dml_locks				      FALSE	FALSE
replication_dependency_tracking 	      FALSE	FALSE
transactions				      FALSE	FALSE
transactions_per_rollback_segment	      FALSE	FALSE
temp_undo_enabled			      IMMEDIATE TRUE
rollback_segments			      FALSE	FALSE
undo_management 			      FALSE	FALSE
undo_tablespace 			      IMMEDIATE FALSE
undo_retention				      IMMEDIATE FALSE
fast_start_parallel_rollback		      IMMEDIATE FALSE
resumable_timeout			      IMMEDIATE TRUE
instance_number 			      FALSE	FALSE
heat_map				      IMMEDIATE TRUE
inmemory_size				      IMMEDIATE FALSE
inmemory_xmem_size			      IMMEDIATE FALSE
inmemory_prefer_xmem_memcompress	      IMMEDIATE FALSE
inmemory_prefer_xmem_priority		      IMMEDIATE FALSE
allow_rowid_column_type 		      IMMEDIATE TRUE
db_block_checking			      IMMEDIATE FALSE
recyclebin				      DEFERRED	TRUE
db_index_compression_inheritance	      IMMEDIATE TRUE
db_securefile				      IMMEDIATE TRUE
inmemory_clause_default 		      IMMEDIATE TRUE
inmemory_force				      IMMEDIATE FALSE
inmemory_query				      IMMEDIATE TRUE
inmemory_expressions_usage		      IMMEDIATE FALSE
inmemory_virtual_columns		      IMMEDIATE FALSE
inmemory_max_populate_servers		      IMMEDIATE FALSE
inmemory_trickle_repopulate_servers_percent   IMMEDIATE FALSE
inmemory_optimized_arithmetic		      IMMEDIATE FALSE
inmemory_automatic_level		      IMMEDIATE FALSE
create_stored_outlines			      IMMEDIATE TRUE
serial_reuse				      FALSE	FALSE
ldap_directory_access			      IMMEDIATE FALSE
ldap_directory_sysauth			      FALSE	FALSE
os_roles				      FALSE	FALSE
rdbms_server_dn 			      FALSE	FALSE
remote_os_authent			      FALSE	FALSE
remote_os_roles 			      FALSE	FALSE
sec_case_sensitive_logon		      IMMEDIATE FALSE
remote_login_passwordfile		      FALSE	FALSE
license_max_users			      IMMEDIATE FALSE
audit_sys_operations			      FALSE	FALSE
DBFIPS_140				      FALSE	FALSE
one_step_plugin_for_pdb_with_tde	      IMMEDIATE FALSE
external_keystore_credential_location	      FALSE	FALSE
unified_audit_sga_queue_size		      FALSE	FALSE
wallet_root				      FALSE	FALSE
tde_configuration			      IMMEDIATE FALSE
db_domain				      FALSE	FALSE
global_names				      IMMEDIATE TRUE
distributed_lock_timeout		      FALSE	FALSE
commit_point_strength			      FALSE	FALSE
global_txn_processes			      IMMEDIATE FALSE
instance_name				      FALSE	FALSE
dispatchers				      IMMEDIATE FALSE
shared_servers				      IMMEDIATE FALSE
max_shared_servers			      IMMEDIATE FALSE
max_dispatchers 			      IMMEDIATE FALSE
circuits				      IMMEDIATE FALSE
shared_server_sessions			      IMMEDIATE FALSE
use_dedicated_broker			      IMMEDIATE FALSE
connection_brokers			      IMMEDIATE FALSE
local_listener				      IMMEDIATE FALSE
forward_listener			      IMMEDIATE FALSE
remote_listener 			      IMMEDIATE FALSE
listener_networks			      IMMEDIATE FALSE
cursor_space_for_time			      FALSE	FALSE
session_cached_cursors			      DEFERRED	TRUE
remote_dependencies_mode		      IMMEDIATE TRUE
smtp_out_server 			      IMMEDIATE TRUE
plsql_v2_compatibility			      IMMEDIATE TRUE
plsql_warnings				      IMMEDIATE TRUE
plsql_code_type 			      IMMEDIATE TRUE
plsql_debug				      IMMEDIATE TRUE
plsql_optimize_level			      IMMEDIATE TRUE
plsql_ccflags				      IMMEDIATE TRUE
plscope_settings			      IMMEDIATE TRUE
permit_92_wrap_format			      FALSE	FALSE
java_jit_enabled			      IMMEDIATE TRUE
java_restrict				      FALSE	FALSE
job_queue_processes			      IMMEDIATE FALSE
scheduler_follow_pdbtz			      IMMEDIATE FALSE
parallel_min_percent			      FALSE	TRUE
create_bitmap_area_size 		      FALSE	FALSE
bitmap_merge_area_size			      FALSE	FALSE
cursor_sharing				      IMMEDIATE TRUE
result_cache_mode			      IMMEDIATE TRUE
parallel_min_servers			      IMMEDIATE FALSE
parallel_max_servers			      IMMEDIATE FALSE
parallel_instance_group 		      IMMEDIATE TRUE
parallel_execution_message_size 	      FALSE	FALSE
hash_area_size				      FALSE	TRUE
private_temp_table_prefix		      DEFERRED	FALSE
result_cache_max_size			      IMMEDIATE FALSE
result_cache_max_result 		      IMMEDIATE FALSE
result_cache_remote_expiration		      IMMEDIATE TRUE
shadow_core_dump			      IMMEDIATE FALSE
background_core_dump			      IMMEDIATE FALSE
background_dump_dest			      IMMEDIATE FALSE
user_dump_dest				      IMMEDIATE FALSE
core_dump_dest				      IMMEDIATE FALSE
audit_file_dest 			      DEFERRED	FALSE
audit_syslog_level			      FALSE	FALSE
unified_audit_systemlog 		      FALSE	FALSE
unified_audit_common_systemlog		      FALSE	FALSE
resource_manage_goldengate		      IMMEDIATE FALSE
object_cache_optimal_size		      DEFERRED	TRUE
object_cache_max_size_percent		      DEFERRED	TRUE
lob_signature_enable			      IMMEDIATE FALSE
session_max_open_files			      FALSE	FALSE
open_links				      FALSE	FALSE
open_links_per_instance 		      FALSE	FALSE
commit_write				      IMMEDIATE TRUE
commit_wait				      IMMEDIATE TRUE
commit_logging				      IMMEDIATE TRUE
optimizer_features_enable		      IMMEDIATE TRUE
fixed_date				      IMMEDIATE FALSE
audit_trail				      FALSE	FALSE
sort_area_size				      DEFERRED	TRUE
sort_area_retained_size 		      DEFERRED	TRUE
cell_offload_processing 		      IMMEDIATE TRUE
cell_offload_decryption 		      IMMEDIATE FALSE
cell_offload_parameters 		      IMMEDIATE TRUE
cell_offload_compaction 		      IMMEDIATE TRUE
cell_offload_plan_display		      IMMEDIATE TRUE
db_name 				      FALSE	FALSE
db_unique_name				      FALSE	FALSE
open_cursors				      IMMEDIATE FALSE
ifile					      FALSE	FALSE
sql_trace				      IMMEDIATE TRUE
os_authent_prefix			      FALSE	FALSE
optimizer_mode				      IMMEDIATE TRUE
sql92_security				      FALSE	FALSE
blank_trimming				      FALSE	FALSE
star_transformation_enabled		      IMMEDIATE TRUE
parallel_degree_policy			      IMMEDIATE TRUE
parallel_adaptive_multi_user		      IMMEDIATE FALSE
parallel_threads_per_cpu		      IMMEDIATE FALSE
optimizer_index_cost_adj		      IMMEDIATE TRUE
optimizer_index_caching 		      IMMEDIATE TRUE
query_rewrite_enabled			      IMMEDIATE TRUE
query_rewrite_integrity 		      IMMEDIATE TRUE
pga_aggregate_target			      IMMEDIATE FALSE
workarea_size_policy			      IMMEDIATE TRUE
optimizer_dynamic_sampling		      IMMEDIATE TRUE
statistics_level			      IMMEDIATE TRUE
cursor_bind_capture_destination 	      IMMEDIATE TRUE
skip_unusable_indexes			      IMMEDIATE TRUE
optimizer_ignore_hints			      IMMEDIATE TRUE
optimizer_secure_view_merging		      IMMEDIATE FALSE
ddl_lock_timeout			      IMMEDIATE TRUE
deferred_segment_creation		      IMMEDIATE TRUE
optimizer_use_pending_statistics	      IMMEDIATE TRUE
optimizer_capture_sql_plan_baselines	      IMMEDIATE TRUE
optimizer_use_sql_plan_baselines	      IMMEDIATE TRUE
parallel_min_time_threshold		      IMMEDIATE TRUE
parallel_degree_limit			      IMMEDIATE TRUE
parallel_force_local			      IMMEDIATE TRUE
optimizer_use_invisible_indexes 	      IMMEDIATE TRUE
dst_upgrade_insert_conv 		      IMMEDIATE TRUE
parallel_servers_target 		      IMMEDIATE FALSE
max_string_size 			      IMMEDIATE FALSE
optimizer_adaptive_reporting_only	      IMMEDIATE TRUE
optimizer_adaptive_plans		      IMMEDIATE TRUE
optimizer_inmemory_aware		      IMMEDIATE TRUE
cursor_invalidation			      IMMEDIATE TRUE
approx_for_aggregation			      IMMEDIATE TRUE
approx_for_count_distinct		      IMMEDIATE TRUE
approx_for_percentile			      IMMEDIATE TRUE
optimizer_adaptive_statistics		      IMMEDIATE TRUE
optimizer_ignore_parallel_hints 	      IMMEDIATE TRUE
parallel_min_degree			      IMMEDIATE TRUE
sec_protocol_error_trace_action 	      IMMEDIATE FALSE
sec_protocol_error_further_action	      IMMEDIATE FALSE
sec_max_failed_login_attempts		      FALSE	FALSE
sec_return_server_release_banner	      FALSE	FALSE
enable_ddl_logging			      IMMEDIATE TRUE
client_result_cache_size		      FALSE	FALSE
client_result_cache_lag 		      FALSE	FALSE
outbound_dblink_protocols		      IMMEDIATE FALSE
allow_global_dblinks			      IMMEDIATE FALSE
client_statistics_level 		      DEFERRED	FALSE
aq_tm_processes 			      IMMEDIATE TRUE
hs_autoregister 			      IMMEDIATE FALSE
xml_db_events				      IMMEDIATE TRUE
dg_broker_start 			      IMMEDIATE FALSE
dg_broker_config_file1			      IMMEDIATE FALSE
dg_broker_config_file2			      IMMEDIATE FALSE
olap_page_pool_size			      DEFERRED	TRUE
asm_diskstring				      IMMEDIATE TRUE
asm_preferred_read_failure_groups	      IMMEDIATE FALSE
control_management_pack_access		      IMMEDIATE FALSE
awr_pdb_autoflush_enabled		      IMMEDIATE FALSE
awr_pdb_max_parallel_slaves		      IMMEDIATE FALSE
awr_snapshot_time_offset		      IMMEDIATE FALSE
sqltune_category			      IMMEDIATE TRUE
autotask_max_active_pdbs		      IMMEDIATE FALSE
enable_automatic_maintenance_pdb	      IMMEDIATE FALSE
spatial_vector_acceleration		      IMMEDIATE TRUE
diagnostic_dest 			      IMMEDIATE FALSE
tracefile_identifier			      FALSE	TRUE
max_dump_file_size			      IMMEDIATE TRUE
trace_enabled				      IMMEDIATE FALSE
cell_offloadgroup_name			      IMMEDIATE TRUE
enable_pluggable_database		      FALSE	FALSE
pdb_os_credential			      FALSE	FALSE
pdb_file_name_convert			      IMMEDIATE TRUE
noncdb_compatible			      FALSE	FALSE
common_user_prefix			      FALSE	FALSE
target_pdbs				      FALSE	FALSE
max_pdbs				      IMMEDIATE FALSE
cdb_cluster				      FALSE	FALSE
cdb_cluster_name			      FALSE	FALSE
standby_pdb_source_file_directory	      IMMEDIATE FALSE
standby_pdb_source_file_dblink		      IMMEDIATE FALSE
remote_recovery_file_dest		      IMMEDIATE FALSE
disable_pdb_feature			      IMMEDIATE FALSE
containers_parallel_degree		      IMMEDIATE TRUE
default_sharing 			      IMMEDIATE TRUE
pdb_lockdown				      IMMEDIATE TRUE
pdb_template				      IMMEDIATE TRUE
shrd_dupl_table_refresh_rate		      IMMEDIATE FALSE
multishard_query_data_consistency	      IMMEDIATE TRUE
multishard_query_partial_results	      IMMEDIATE TRUE

445 rows selected.

SQL> 1
  1* select name,ISSYS_MODIFIABLE,ISSES_MODIFIABLE from v$parameter
SQL> /

NAME					      ISSYS_MOD ISSES
--------------------------------------------- --------- -----
lock_name_space 			      FALSE	FALSE
processes				      FALSE	FALSE
sessions				      IMMEDIATE FALSE
timed_statistics			      IMMEDIATE TRUE
timed_os_statistics			      IMMEDIATE TRUE
resource_limit				      IMMEDIATE FALSE
license_max_sessions			      IMMEDIATE FALSE
license_sessions_warning		      IMMEDIATE FALSE
long_module_action			      IMMEDIATE FALSE
standby_db_preserve_states		      FALSE	FALSE
instance_abort_delay_time		      IMMEDIATE FALSE
cpu_count				      IMMEDIATE FALSE
cpu_min_count				      IMMEDIATE FALSE
instance_groups 			      FALSE	FALSE
event					      FALSE	FALSE
sga_max_size				      FALSE	FALSE
use_large_pages 			      FALSE	FALSE
pre_page_sga				      FALSE	FALSE
shared_memory_address			      FALSE	FALSE
hi_shared_memory_address		      FALSE	FALSE
lock_sga				      FALSE	FALSE
processor_group_name			      FALSE	FALSE
allow_group_access_to_sga		      FALSE	FALSE
sga_min_size				      IMMEDIATE FALSE
shared_pool_size			      IMMEDIATE FALSE
large_pool_size 			      IMMEDIATE FALSE
java_pool_size				      IMMEDIATE FALSE
streams_pool_size			      IMMEDIATE FALSE
shared_pool_reserved_size		      FALSE	FALSE
java_soft_sessionspace_limit		      FALSE	FALSE
java_max_sessionspace_size		      FALSE	FALSE
pga_aggregate_limit			      IMMEDIATE FALSE
spfile					      IMMEDIATE FALSE
instance_type				      FALSE	FALSE
uniform_log_timestamp_format		      IMMEDIATE FALSE
nls_language				      FALSE	TRUE
nls_territory				      FALSE	TRUE
nls_sort				      FALSE	TRUE
nls_date_language			      FALSE	TRUE
nls_date_format 			      FALSE	TRUE
nls_currency				      FALSE	TRUE
nls_numeric_characters			      FALSE	TRUE
nls_iso_currency			      FALSE	TRUE
nls_calendar				      FALSE	TRUE
nls_time_format 			      FALSE	TRUE
nls_timestamp_format			      FALSE	TRUE
nls_time_tz_format			      FALSE	TRUE
nls_timestamp_tz_format 		      FALSE	TRUE
nls_dual_currency			      FALSE	TRUE
nls_comp				      FALSE	TRUE
nls_length_semantics			      IMMEDIATE TRUE
nls_nchar_conv_excp			      IMMEDIATE TRUE
disk_asynch_io				      FALSE	FALSE
tape_asynch_io				      FALSE	FALSE
dbwr_io_slaves				      FALSE	FALSE
backup_tape_io_slaves			      DEFERRED	FALSE
fileio_network_adapters 		      FALSE	FALSE
filesystemio_options			      FALSE	FALSE
dnfs_batch_size 			      FALSE	FALSE
clonedb 				      FALSE	FALSE
instant_restore 			      FALSE	FALSE
http_proxy				      IMMEDIATE FALSE
ssl_wallet				      IMMEDIATE FALSE
ofs_threads				      IMMEDIATE FALSE
resource_manager_cpu_allocation 	      IMMEDIATE FALSE
resource_manager_plan			      IMMEDIATE FALSE
db_performance_profile			      IMMEDIATE FALSE
max_iops				      IMMEDIATE FALSE
max_mbps				      IMMEDIATE FALSE
max_idle_time				      IMMEDIATE FALSE
max_idle_blocker_time			      IMMEDIATE FALSE
cluster_interconnects			      FALSE	FALSE
file_mapping				      IMMEDIATE FALSE
max_datapump_jobs_per_pdb		      IMMEDIATE FALSE
max_datapump_parallel_per_job		      IMMEDIATE FALSE
service_names				      IMMEDIATE FALSE
threaded_execution			      FALSE	FALSE
clonedb_dir				      FALSE	FALSE
enable_dnfs_dispatcher			      FALSE	FALSE
gcs_server_processes			      FALSE	FALSE
active_instance_count			      FALSE	FALSE
instance_mode				      FALSE	FALSE
sga_target				      IMMEDIATE FALSE
memory_target				      IMMEDIATE FALSE
memory_max_target			      FALSE	FALSE
control_files				      FALSE	FALSE
db_file_name_convert			      FALSE	TRUE
log_file_name_convert			      FALSE	FALSE
control_file_record_keep_time		      IMMEDIATE FALSE
db_block_buffers			      FALSE	FALSE
db_block_checksum			      IMMEDIATE FALSE
db_ultra_safe				      FALSE	FALSE
db_block_size				      FALSE	FALSE
db_cache_size				      IMMEDIATE FALSE
db_2k_cache_size			      IMMEDIATE FALSE
db_4k_cache_size			      IMMEDIATE FALSE
db_8k_cache_size			      IMMEDIATE FALSE
db_16k_cache_size			      IMMEDIATE FALSE
db_32k_cache_size			      IMMEDIATE FALSE
db_keep_cache_size			      IMMEDIATE FALSE
db_recycle_cache_size			      IMMEDIATE FALSE
memoptimize_pool_size			      IMMEDIATE FALSE
db_big_table_cache_percent_target	      IMMEDIATE FALSE
encrypt_new_tablespaces 		      IMMEDIATE FALSE
db_writer_processes			      FALSE	FALSE
buffer_pool_keep			      FALSE	FALSE
buffer_pool_recycle			      FALSE	FALSE
db_flash_cache_file			      IMMEDIATE FALSE
db_flash_cache_size			      IMMEDIATE FALSE
db_cache_advice 			      IMMEDIATE FALSE
compatible				      FALSE	FALSE
log_archive_dest_1			      IMMEDIATE TRUE
log_archive_dest_2			      IMMEDIATE TRUE
log_archive_dest_3			      IMMEDIATE TRUE
log_archive_dest_4			      IMMEDIATE TRUE
log_archive_dest_5			      IMMEDIATE TRUE
log_archive_dest_6			      IMMEDIATE TRUE
log_archive_dest_7			      IMMEDIATE TRUE
log_archive_dest_8			      IMMEDIATE TRUE
log_archive_dest_9			      IMMEDIATE TRUE
log_archive_dest_10			      IMMEDIATE TRUE
log_archive_dest_11			      IMMEDIATE TRUE
log_archive_dest_12			      IMMEDIATE TRUE
log_archive_dest_13			      IMMEDIATE TRUE
log_archive_dest_14			      IMMEDIATE TRUE
log_archive_dest_15			      IMMEDIATE TRUE
log_archive_dest_16			      IMMEDIATE TRUE
log_archive_dest_17			      IMMEDIATE TRUE
log_archive_dest_18			      IMMEDIATE TRUE
log_archive_dest_19			      IMMEDIATE TRUE
log_archive_dest_20			      IMMEDIATE TRUE
log_archive_dest_21			      IMMEDIATE TRUE
log_archive_dest_22			      IMMEDIATE TRUE
log_archive_dest_23			      IMMEDIATE TRUE
log_archive_dest_24			      IMMEDIATE TRUE
log_archive_dest_25			      IMMEDIATE TRUE
log_archive_dest_26			      IMMEDIATE TRUE
log_archive_dest_27			      IMMEDIATE TRUE
log_archive_dest_28			      IMMEDIATE TRUE
log_archive_dest_29			      IMMEDIATE TRUE
log_archive_dest_30			      IMMEDIATE TRUE
log_archive_dest_31			      IMMEDIATE TRUE
log_archive_dest_state_1		      IMMEDIATE TRUE
log_archive_dest_state_2		      IMMEDIATE TRUE
log_archive_dest_state_3		      IMMEDIATE TRUE
log_archive_dest_state_4		      IMMEDIATE TRUE
log_archive_dest_state_5		      IMMEDIATE TRUE
log_archive_dest_state_6		      IMMEDIATE TRUE
log_archive_dest_state_7		      IMMEDIATE TRUE
log_archive_dest_state_8		      IMMEDIATE TRUE
log_archive_dest_state_9		      IMMEDIATE TRUE
log_archive_dest_state_10		      IMMEDIATE TRUE
log_archive_dest_state_11		      IMMEDIATE TRUE
log_archive_dest_state_12		      IMMEDIATE TRUE
log_archive_dest_state_13		      IMMEDIATE TRUE
log_archive_dest_state_14		      IMMEDIATE TRUE
log_archive_dest_state_15		      IMMEDIATE TRUE
log_archive_dest_state_16		      IMMEDIATE TRUE
log_archive_dest_state_17		      IMMEDIATE TRUE
log_archive_dest_state_18		      IMMEDIATE TRUE
log_archive_dest_state_19		      IMMEDIATE TRUE
log_archive_dest_state_20		      IMMEDIATE TRUE
log_archive_dest_state_21		      IMMEDIATE TRUE
log_archive_dest_state_22		      IMMEDIATE TRUE
log_archive_dest_state_23		      IMMEDIATE TRUE
log_archive_dest_state_24		      IMMEDIATE TRUE
log_archive_dest_state_25		      IMMEDIATE TRUE
log_archive_dest_state_26		      IMMEDIATE TRUE
log_archive_dest_state_27		      IMMEDIATE TRUE
log_archive_dest_state_28		      IMMEDIATE TRUE
log_archive_dest_state_29		      IMMEDIATE TRUE
log_archive_dest_state_30		      IMMEDIATE TRUE
log_archive_dest_state_31		      IMMEDIATE TRUE
log_archive_start			      FALSE	FALSE
log_archive_dest			      IMMEDIATE FALSE
log_archive_duplex_dest 		      IMMEDIATE FALSE
log_archive_min_succeed_dest		      IMMEDIATE TRUE
fal_client				      IMMEDIATE FALSE
fal_server				      IMMEDIATE FALSE
log_archive_trace			      IMMEDIATE FALSE
data_guard_sync_latency 		      IMMEDIATE FALSE
log_archive_config			      IMMEDIATE FALSE
log_archive_format			      FALSE	FALSE
data_guard_max_io_time			      IMMEDIATE FALSE
data_guard_max_longio_time		      IMMEDIATE FALSE
redo_transport_user			      IMMEDIATE FALSE
log_archive_max_processes		      IMMEDIATE FALSE
log_buffer				      FALSE	FALSE
log_checkpoint_interval 		      IMMEDIATE FALSE
log_checkpoint_timeout			      IMMEDIATE FALSE
archive_lag_target			      IMMEDIATE FALSE
db_files				      FALSE	FALSE
db_file_multiblock_read_count		      IMMEDIATE TRUE
read_only_open_delayed			      FALSE	FALSE
cluster_database			      FALSE	FALSE
cluster_database_instances		      FALSE	FALSE
db_create_file_dest			      IMMEDIATE TRUE
db_create_online_log_dest_1		      IMMEDIATE TRUE
db_create_online_log_dest_2		      IMMEDIATE TRUE
db_create_online_log_dest_3		      IMMEDIATE TRUE
db_create_online_log_dest_4		      IMMEDIATE TRUE
db_create_online_log_dest_5		      IMMEDIATE TRUE
db_recovery_file_dest			      IMMEDIATE FALSE
db_recovery_file_dest_size		      IMMEDIATE FALSE
standby_file_management 		      IMMEDIATE FALSE
db_unrecoverable_scn_tracking		      IMMEDIATE TRUE
thread					      IMMEDIATE FALSE
enabled_PDBs_on_standby 		      IMMEDIATE FALSE
fast_start_io_target			      IMMEDIATE FALSE
fast_start_mttr_target			      IMMEDIATE FALSE
log_checkpoints_to_alert		      IMMEDIATE FALSE
db_lost_write_protect			      IMMEDIATE FALSE
recovery_parallelism			      IMMEDIATE FALSE
enable_goldengate_replication		      IMMEDIATE FALSE
inmemory_adg_enabled			      IMMEDIATE FALSE
db_flashback_retention_target		      IMMEDIATE FALSE
data_transfer_cache_size		      IMMEDIATE FALSE
enable_imc_with_mira			      IMMEDIATE FALSE
adg_account_info_tracking		      FALSE	FALSE
adg_redirect_dml			      IMMEDIATE FALSE
dml_locks				      FALSE	FALSE
replication_dependency_tracking 	      FALSE	FALSE
transactions				      FALSE	FALSE
transactions_per_rollback_segment	      FALSE	FALSE
temp_undo_enabled			      IMMEDIATE TRUE
rollback_segments			      FALSE	FALSE
undo_management 			      FALSE	FALSE
undo_tablespace 			      IMMEDIATE FALSE
undo_retention				      IMMEDIATE FALSE
fast_start_parallel_rollback		      IMMEDIATE FALSE
resumable_timeout			      IMMEDIATE TRUE
instance_number 			      FALSE	FALSE
heat_map				      IMMEDIATE TRUE
inmemory_size				      IMMEDIATE FALSE
inmemory_xmem_size			      IMMEDIATE FALSE
inmemory_prefer_xmem_memcompress	      IMMEDIATE FALSE
inmemory_prefer_xmem_priority		      IMMEDIATE FALSE
allow_rowid_column_type 		      IMMEDIATE TRUE
db_block_checking			      IMMEDIATE FALSE
recyclebin				      DEFERRED	TRUE
db_index_compression_inheritance	      IMMEDIATE TRUE
db_securefile				      IMMEDIATE TRUE
inmemory_clause_default 		      IMMEDIATE TRUE
inmemory_force				      IMMEDIATE FALSE
inmemory_query				      IMMEDIATE TRUE
inmemory_expressions_usage		      IMMEDIATE FALSE
inmemory_virtual_columns		      IMMEDIATE FALSE
inmemory_max_populate_servers		      IMMEDIATE FALSE
inmemory_trickle_repopulate_servers_percent   IMMEDIATE FALSE
inmemory_optimized_arithmetic		      IMMEDIATE FALSE
inmemory_automatic_level		      IMMEDIATE FALSE
create_stored_outlines			      IMMEDIATE TRUE
serial_reuse				      FALSE	FALSE
ldap_directory_access			      IMMEDIATE FALSE
ldap_directory_sysauth			      FALSE	FALSE
os_roles				      FALSE	FALSE
rdbms_server_dn 			      FALSE	FALSE
remote_os_authent			      FALSE	FALSE
remote_os_roles 			      FALSE	FALSE
sec_case_sensitive_logon		      IMMEDIATE FALSE
remote_login_passwordfile		      FALSE	FALSE
license_max_users			      IMMEDIATE FALSE
audit_sys_operations			      FALSE	FALSE
DBFIPS_140				      FALSE	FALSE
one_step_plugin_for_pdb_with_tde	      IMMEDIATE FALSE
external_keystore_credential_location	      FALSE	FALSE
unified_audit_sga_queue_size		      FALSE	FALSE
wallet_root				      FALSE	FALSE
tde_configuration			      IMMEDIATE FALSE
db_domain				      FALSE	FALSE
global_names				      IMMEDIATE TRUE
distributed_lock_timeout		      FALSE	FALSE
commit_point_strength			      FALSE	FALSE
global_txn_processes			      IMMEDIATE FALSE
instance_name				      FALSE	FALSE
dispatchers				      IMMEDIATE FALSE
shared_servers				      IMMEDIATE FALSE
max_shared_servers			      IMMEDIATE FALSE
max_dispatchers 			      IMMEDIATE FALSE
circuits				      IMMEDIATE FALSE
shared_server_sessions			      IMMEDIATE FALSE
use_dedicated_broker			      IMMEDIATE FALSE
connection_brokers			      IMMEDIATE FALSE
local_listener				      IMMEDIATE FALSE
forward_listener			      IMMEDIATE FALSE
remote_listener 			      IMMEDIATE FALSE
listener_networks			      IMMEDIATE FALSE
cursor_space_for_time			      FALSE	FALSE
session_cached_cursors			      DEFERRED	TRUE
remote_dependencies_mode		      IMMEDIATE TRUE
smtp_out_server 			      IMMEDIATE TRUE
plsql_v2_compatibility			      IMMEDIATE TRUE
plsql_warnings				      IMMEDIATE TRUE
plsql_code_type 			      IMMEDIATE TRUE
plsql_debug				      IMMEDIATE TRUE
plsql_optimize_level			      IMMEDIATE TRUE
plsql_ccflags				      IMMEDIATE TRUE
plscope_settings			      IMMEDIATE TRUE
permit_92_wrap_format			      FALSE	FALSE
java_jit_enabled			      IMMEDIATE TRUE
java_restrict				      FALSE	FALSE
job_queue_processes			      IMMEDIATE FALSE
scheduler_follow_pdbtz			      IMMEDIATE FALSE
parallel_min_percent			      FALSE	TRUE
create_bitmap_area_size 		      FALSE	FALSE
bitmap_merge_area_size			      FALSE	FALSE
cursor_sharing				      IMMEDIATE TRUE
result_cache_mode			      IMMEDIATE TRUE
parallel_min_servers			      IMMEDIATE FALSE
parallel_max_servers			      IMMEDIATE FALSE
parallel_instance_group 		      IMMEDIATE TRUE
parallel_execution_message_size 	      FALSE	FALSE
hash_area_size				      FALSE	TRUE
private_temp_table_prefix		      DEFERRED	FALSE
result_cache_max_size			      IMMEDIATE FALSE
result_cache_max_result 		      IMMEDIATE FALSE
result_cache_remote_expiration		      IMMEDIATE TRUE
shadow_core_dump			      IMMEDIATE FALSE
background_core_dump			      IMMEDIATE FALSE
background_dump_dest			      IMMEDIATE FALSE
user_dump_dest				      IMMEDIATE FALSE
core_dump_dest				      IMMEDIATE FALSE
audit_file_dest 			      DEFERRED	FALSE
audit_syslog_level			      FALSE	FALSE
unified_audit_systemlog 		      FALSE	FALSE
unified_audit_common_systemlog		      FALSE	FALSE
resource_manage_goldengate		      IMMEDIATE FALSE
object_cache_optimal_size		      DEFERRED	TRUE
object_cache_max_size_percent		      DEFERRED	TRUE
lob_signature_enable			      IMMEDIATE FALSE
session_max_open_files			      FALSE	FALSE
open_links				      FALSE	FALSE
open_links_per_instance 		      FALSE	FALSE
commit_write				      IMMEDIATE TRUE
commit_wait				      IMMEDIATE TRUE
commit_logging				      IMMEDIATE TRUE
optimizer_features_enable		      IMMEDIATE TRUE
fixed_date				      IMMEDIATE FALSE
audit_trail				      FALSE	FALSE
sort_area_size				      DEFERRED	TRUE
sort_area_retained_size 		      DEFERRED	TRUE
cell_offload_processing 		      IMMEDIATE TRUE
cell_offload_decryption 		      IMMEDIATE FALSE
cell_offload_parameters 		      IMMEDIATE TRUE
cell_offload_compaction 		      IMMEDIATE TRUE
cell_offload_plan_display		      IMMEDIATE TRUE
db_name 				      FALSE	FALSE
db_unique_name				      FALSE	FALSE
open_cursors				      IMMEDIATE FALSE
ifile					      FALSE	FALSE
sql_trace				      IMMEDIATE TRUE
os_authent_prefix			      FALSE	FALSE
optimizer_mode				      IMMEDIATE TRUE
sql92_security				      FALSE	FALSE
blank_trimming				      FALSE	FALSE
star_transformation_enabled		      IMMEDIATE TRUE
parallel_degree_policy			      IMMEDIATE TRUE
parallel_adaptive_multi_user		      IMMEDIATE FALSE
parallel_threads_per_cpu		      IMMEDIATE FALSE
optimizer_index_cost_adj		      IMMEDIATE TRUE
optimizer_index_caching 		      IMMEDIATE TRUE
query_rewrite_enabled			      IMMEDIATE TRUE
query_rewrite_integrity 		      IMMEDIATE TRUE
pga_aggregate_target			      IMMEDIATE FALSE
workarea_size_policy			      IMMEDIATE TRUE
optimizer_dynamic_sampling		      IMMEDIATE TRUE
statistics_level			      IMMEDIATE TRUE
cursor_bind_capture_destination 	      IMMEDIATE TRUE
skip_unusable_indexes			      IMMEDIATE TRUE
optimizer_ignore_hints			      IMMEDIATE TRUE
optimizer_secure_view_merging		      IMMEDIATE FALSE
ddl_lock_timeout			      IMMEDIATE TRUE
deferred_segment_creation		      IMMEDIATE TRUE
optimizer_use_pending_statistics	      IMMEDIATE TRUE
optimizer_capture_sql_plan_baselines	      IMMEDIATE TRUE
optimizer_use_sql_plan_baselines	      IMMEDIATE TRUE
parallel_min_time_threshold		      IMMEDIATE TRUE
parallel_degree_limit			      IMMEDIATE TRUE
parallel_force_local			      IMMEDIATE TRUE
optimizer_use_invisible_indexes 	      IMMEDIATE TRUE
dst_upgrade_insert_conv 		      IMMEDIATE TRUE
parallel_servers_target 		      IMMEDIATE FALSE
max_string_size 			      IMMEDIATE FALSE
optimizer_adaptive_reporting_only	      IMMEDIATE TRUE
optimizer_adaptive_plans		      IMMEDIATE TRUE
optimizer_inmemory_aware		      IMMEDIATE TRUE
cursor_invalidation			      IMMEDIATE TRUE
approx_for_aggregation			      IMMEDIATE TRUE
approx_for_count_distinct		      IMMEDIATE TRUE
approx_for_percentile			      IMMEDIATE TRUE
optimizer_adaptive_statistics		      IMMEDIATE TRUE
optimizer_ignore_parallel_hints 	      IMMEDIATE TRUE
parallel_min_degree			      IMMEDIATE TRUE
sec_protocol_error_trace_action 	      IMMEDIATE FALSE
sec_protocol_error_further_action	      IMMEDIATE FALSE
sec_max_failed_login_attempts		      FALSE	FALSE
sec_return_server_release_banner	      FALSE	FALSE
enable_ddl_logging			      IMMEDIATE TRUE
client_result_cache_size		      FALSE	FALSE
client_result_cache_lag 		      FALSE	FALSE
outbound_dblink_protocols		      IMMEDIATE FALSE
allow_global_dblinks			      IMMEDIATE FALSE
client_statistics_level 		      DEFERRED	FALSE
aq_tm_processes 			      IMMEDIATE TRUE
hs_autoregister 			      IMMEDIATE FALSE
xml_db_events				      IMMEDIATE TRUE
dg_broker_start 			      IMMEDIATE FALSE
dg_broker_config_file1			      IMMEDIATE FALSE
dg_broker_config_file2			      IMMEDIATE FALSE
olap_page_pool_size			      DEFERRED	TRUE
asm_diskstring				      IMMEDIATE TRUE
asm_preferred_read_failure_groups	      IMMEDIATE FALSE
control_management_pack_access		      IMMEDIATE FALSE
awr_pdb_autoflush_enabled		      IMMEDIATE FALSE
awr_pdb_max_parallel_slaves		      IMMEDIATE FALSE
awr_snapshot_time_offset		      IMMEDIATE FALSE
sqltune_category			      IMMEDIATE TRUE
autotask_max_active_pdbs		      IMMEDIATE FALSE
enable_automatic_maintenance_pdb	      IMMEDIATE FALSE
spatial_vector_acceleration		      IMMEDIATE TRUE
diagnostic_dest 			      IMMEDIATE FALSE
tracefile_identifier			      FALSE	TRUE
max_dump_file_size			      IMMEDIATE TRUE
trace_enabled				      IMMEDIATE FALSE
cell_offloadgroup_name			      IMMEDIATE TRUE
enable_pluggable_database		      FALSE	FALSE
pdb_os_credential			      FALSE	FALSE
pdb_file_name_convert			      IMMEDIATE TRUE
noncdb_compatible			      FALSE	FALSE
common_user_prefix			      FALSE	FALSE
target_pdbs				      FALSE	FALSE
max_pdbs				      IMMEDIATE FALSE
cdb_cluster				      FALSE	FALSE
cdb_cluster_name			      FALSE	FALSE
standby_pdb_source_file_directory	      IMMEDIATE FALSE
standby_pdb_source_file_dblink		      IMMEDIATE FALSE
remote_recovery_file_dest		      IMMEDIATE FALSE
disable_pdb_feature			      IMMEDIATE FALSE
containers_parallel_degree		      IMMEDIATE TRUE
default_sharing 			      IMMEDIATE TRUE
pdb_lockdown				      IMMEDIATE TRUE
pdb_template				      IMMEDIATE TRUE
shrd_dupl_table_refresh_rate		      IMMEDIATE FALSE
multishard_query_data_consistency	      IMMEDIATE TRUE
multishard_query_partial_results	      IMMEDIATE TRUE

445 rows selected.

SQL> select name,
CASE WHEN ISSYS_MODIFIABLE = 'FALSE' THEN 'STATIC_WRT_INST' 
when ISSYS_MODIFIABLE = 'IMMEDIATE' then 'DYNAMIC_WRT_INST' end as instance_level,
ISSES_MODIFIABLE from v$parameter WHERE NAME = 
  2    3    4    5  
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> select name,
CASE WHEN ISSYS_MODIFIABLE = 'FALSE' THEN 'STATIC_WRT_INST' 
when ISSYS_MODIFIABLE = 'IMMEDIATE' then 'DYNAMIC_WRT_INST' end as instance_level,
ISSES_MODIFIABLE from v$parameter  2    3    4  ;

NAME					      INSTANCE_LEVEL   ISSES
--------------------------------------------- ---------------- -----
lock_name_space 			      STATIC_WRT_INST  FALSE
processes				      STATIC_WRT_INST  FALSE
sessions				      DYNAMIC_WRT_INST FALSE
timed_statistics			      DYNAMIC_WRT_INST TRUE
timed_os_statistics			      DYNAMIC_WRT_INST TRUE
resource_limit				      DYNAMIC_WRT_INST FALSE
license_max_sessions			      DYNAMIC_WRT_INST FALSE
license_sessions_warning		      DYNAMIC_WRT_INST FALSE
long_module_action			      DYNAMIC_WRT_INST FALSE
standby_db_preserve_states		      STATIC_WRT_INST  FALSE
instance_abort_delay_time		      DYNAMIC_WRT_INST FALSE
cpu_count				      DYNAMIC_WRT_INST FALSE
cpu_min_count				      DYNAMIC_WRT_INST FALSE
instance_groups 			      STATIC_WRT_INST  FALSE
event					      STATIC_WRT_INST  FALSE
sga_max_size				      STATIC_WRT_INST  FALSE
use_large_pages 			      STATIC_WRT_INST  FALSE
pre_page_sga				      STATIC_WRT_INST  FALSE
shared_memory_address			      STATIC_WRT_INST  FALSE
hi_shared_memory_address		      STATIC_WRT_INST  FALSE
lock_sga				      STATIC_WRT_INST  FALSE
processor_group_name			      STATIC_WRT_INST  FALSE
allow_group_access_to_sga		      STATIC_WRT_INST  FALSE
sga_min_size				      DYNAMIC_WRT_INST FALSE
shared_pool_size			      DYNAMIC_WRT_INST FALSE
large_pool_size 			      DYNAMIC_WRT_INST FALSE
java_pool_size				      DYNAMIC_WRT_INST FALSE
streams_pool_size			      DYNAMIC_WRT_INST FALSE
shared_pool_reserved_size		      STATIC_WRT_INST  FALSE
java_soft_sessionspace_limit		      STATIC_WRT_INST  FALSE
java_max_sessionspace_size		      STATIC_WRT_INST  FALSE
pga_aggregate_limit			      DYNAMIC_WRT_INST FALSE
spfile					      DYNAMIC_WRT_INST FALSE
instance_type				      STATIC_WRT_INST  FALSE
uniform_log_timestamp_format		      DYNAMIC_WRT_INST FALSE
nls_language				      STATIC_WRT_INST  TRUE
nls_territory				      STATIC_WRT_INST  TRUE
nls_sort				      STATIC_WRT_INST  TRUE
nls_date_language			      STATIC_WRT_INST  TRUE
nls_date_format 			      STATIC_WRT_INST  TRUE
nls_currency				      STATIC_WRT_INST  TRUE
nls_numeric_characters			      STATIC_WRT_INST  TRUE
nls_iso_currency			      STATIC_WRT_INST  TRUE
nls_calendar				      STATIC_WRT_INST  TRUE
nls_time_format 			      STATIC_WRT_INST  TRUE
nls_timestamp_format			      STATIC_WRT_INST  TRUE
nls_time_tz_format			      STATIC_WRT_INST  TRUE
nls_timestamp_tz_format 		      STATIC_WRT_INST  TRUE
nls_dual_currency			      STATIC_WRT_INST  TRUE
nls_comp				      STATIC_WRT_INST  TRUE
nls_length_semantics			      DYNAMIC_WRT_INST TRUE
nls_nchar_conv_excp			      DYNAMIC_WRT_INST TRUE
disk_asynch_io				      STATIC_WRT_INST  FALSE
tape_asynch_io				      STATIC_WRT_INST  FALSE
dbwr_io_slaves				      STATIC_WRT_INST  FALSE
backup_tape_io_slaves					       FALSE
fileio_network_adapters 		      STATIC_WRT_INST  FALSE
filesystemio_options			      STATIC_WRT_INST  FALSE
dnfs_batch_size 			      STATIC_WRT_INST  FALSE
clonedb 				      STATIC_WRT_INST  FALSE
instant_restore 			      STATIC_WRT_INST  FALSE
http_proxy				      DYNAMIC_WRT_INST FALSE
ssl_wallet				      DYNAMIC_WRT_INST FALSE
ofs_threads				      DYNAMIC_WRT_INST FALSE
resource_manager_cpu_allocation 	      DYNAMIC_WRT_INST FALSE
resource_manager_plan			      DYNAMIC_WRT_INST FALSE
db_performance_profile			      DYNAMIC_WRT_INST FALSE
max_iops				      DYNAMIC_WRT_INST FALSE
max_mbps				      DYNAMIC_WRT_INST FALSE
max_idle_time				      DYNAMIC_WRT_INST FALSE
max_idle_blocker_time			      DYNAMIC_WRT_INST FALSE
cluster_interconnects			      STATIC_WRT_INST  FALSE
file_mapping				      DYNAMIC_WRT_INST FALSE
max_datapump_jobs_per_pdb		      DYNAMIC_WRT_INST FALSE
max_datapump_parallel_per_job		      DYNAMIC_WRT_INST FALSE
service_names				      DYNAMIC_WRT_INST FALSE
threaded_execution			      STATIC_WRT_INST  FALSE
clonedb_dir				      STATIC_WRT_INST  FALSE
enable_dnfs_dispatcher			      STATIC_WRT_INST  FALSE
gcs_server_processes			      STATIC_WRT_INST  FALSE
active_instance_count			      STATIC_WRT_INST  FALSE
instance_mode				      STATIC_WRT_INST  FALSE
sga_target				      DYNAMIC_WRT_INST FALSE
memory_target				      DYNAMIC_WRT_INST FALSE
memory_max_target			      STATIC_WRT_INST  FALSE
control_files				      STATIC_WRT_INST  FALSE
db_file_name_convert			      STATIC_WRT_INST  TRUE
log_file_name_convert			      STATIC_WRT_INST  FALSE
control_file_record_keep_time		      DYNAMIC_WRT_INST FALSE
db_block_buffers			      STATIC_WRT_INST  FALSE
db_block_checksum			      DYNAMIC_WRT_INST FALSE
db_ultra_safe				      STATIC_WRT_INST  FALSE
db_block_size				      STATIC_WRT_INST  FALSE
db_cache_size				      DYNAMIC_WRT_INST FALSE
db_2k_cache_size			      DYNAMIC_WRT_INST FALSE
db_4k_cache_size			      DYNAMIC_WRT_INST FALSE
db_8k_cache_size			      DYNAMIC_WRT_INST FALSE
db_16k_cache_size			      DYNAMIC_WRT_INST FALSE
db_32k_cache_size			      DYNAMIC_WRT_INST FALSE
db_keep_cache_size			      DYNAMIC_WRT_INST FALSE
db_recycle_cache_size			      DYNAMIC_WRT_INST FALSE
memoptimize_pool_size			      DYNAMIC_WRT_INST FALSE
db_big_table_cache_percent_target	      DYNAMIC_WRT_INST FALSE
encrypt_new_tablespaces 		      DYNAMIC_WRT_INST FALSE
db_writer_processes			      STATIC_WRT_INST  FALSE
buffer_pool_keep			      STATIC_WRT_INST  FALSE
buffer_pool_recycle			      STATIC_WRT_INST  FALSE
db_flash_cache_file			      DYNAMIC_WRT_INST FALSE
db_flash_cache_size			      DYNAMIC_WRT_INST FALSE
db_cache_advice 			      DYNAMIC_WRT_INST FALSE
compatible				      STATIC_WRT_INST  FALSE
log_archive_dest_1			      DYNAMIC_WRT_INST TRUE
log_archive_dest_2			      DYNAMIC_WRT_INST TRUE
log_archive_dest_3			      DYNAMIC_WRT_INST TRUE
log_archive_dest_4			      DYNAMIC_WRT_INST TRUE
log_archive_dest_5			      DYNAMIC_WRT_INST TRUE
log_archive_dest_6			      DYNAMIC_WRT_INST TRUE
log_archive_dest_7			      DYNAMIC_WRT_INST TRUE
log_archive_dest_8			      DYNAMIC_WRT_INST TRUE
log_archive_dest_9			      DYNAMIC_WRT_INST TRUE
log_archive_dest_10			      DYNAMIC_WRT_INST TRUE
log_archive_dest_11			      DYNAMIC_WRT_INST TRUE
log_archive_dest_12			      DYNAMIC_WRT_INST TRUE
log_archive_dest_13			      DYNAMIC_WRT_INST TRUE
log_archive_dest_14			      DYNAMIC_WRT_INST TRUE
log_archive_dest_15			      DYNAMIC_WRT_INST TRUE
log_archive_dest_16			      DYNAMIC_WRT_INST TRUE
log_archive_dest_17			      DYNAMIC_WRT_INST TRUE
log_archive_dest_18			      DYNAMIC_WRT_INST TRUE
log_archive_dest_19			      DYNAMIC_WRT_INST TRUE
log_archive_dest_20			      DYNAMIC_WRT_INST TRUE
log_archive_dest_21			      DYNAMIC_WRT_INST TRUE
log_archive_dest_22			      DYNAMIC_WRT_INST TRUE
log_archive_dest_23			      DYNAMIC_WRT_INST TRUE
log_archive_dest_24			      DYNAMIC_WRT_INST TRUE
log_archive_dest_25			      DYNAMIC_WRT_INST TRUE
log_archive_dest_26			      DYNAMIC_WRT_INST TRUE
log_archive_dest_27			      DYNAMIC_WRT_INST TRUE
log_archive_dest_28			      DYNAMIC_WRT_INST TRUE
log_archive_dest_29			      DYNAMIC_WRT_INST TRUE
log_archive_dest_30			      DYNAMIC_WRT_INST TRUE
log_archive_dest_31			      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_1		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_2		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_3		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_4		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_5		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_6		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_7		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_8		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_9		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_10		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_11		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_12		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_13		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_14		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_15		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_16		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_17		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_18		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_19		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_20		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_21		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_22		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_23		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_24		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_25		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_26		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_27		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_28		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_29		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_30		      DYNAMIC_WRT_INST TRUE
log_archive_dest_state_31		      DYNAMIC_WRT_INST TRUE
log_archive_start			      STATIC_WRT_INST  FALSE
log_archive_dest			      DYNAMIC_WRT_INST FALSE
log_archive_duplex_dest 		      DYNAMIC_WRT_INST FALSE
log_archive_min_succeed_dest		      DYNAMIC_WRT_INST TRUE
fal_client				      DYNAMIC_WRT_INST FALSE
fal_server				      DYNAMIC_WRT_INST FALSE
log_archive_trace			      DYNAMIC_WRT_INST FALSE
data_guard_sync_latency 		      DYNAMIC_WRT_INST FALSE
log_archive_config			      DYNAMIC_WRT_INST FALSE
log_archive_format			      STATIC_WRT_INST  FALSE
data_guard_max_io_time			      DYNAMIC_WRT_INST FALSE
data_guard_max_longio_time		      DYNAMIC_WRT_INST FALSE
redo_transport_user			      DYNAMIC_WRT_INST FALSE
log_archive_max_processes		      DYNAMIC_WRT_INST FALSE
log_buffer				      STATIC_WRT_INST  FALSE
log_checkpoint_interval 		      DYNAMIC_WRT_INST FALSE
log_checkpoint_timeout			      DYNAMIC_WRT_INST FALSE
archive_lag_target			      DYNAMIC_WRT_INST FALSE
db_files				      STATIC_WRT_INST  FALSE
db_file_multiblock_read_count		      DYNAMIC_WRT_INST TRUE
read_only_open_delayed			      STATIC_WRT_INST  FALSE
cluster_database			      STATIC_WRT_INST  FALSE
cluster_database_instances		      STATIC_WRT_INST  FALSE
db_create_file_dest			      DYNAMIC_WRT_INST TRUE
db_create_online_log_dest_1		      DYNAMIC_WRT_INST TRUE
db_create_online_log_dest_2		      DYNAMIC_WRT_INST TRUE
db_create_online_log_dest_3		      DYNAMIC_WRT_INST TRUE
db_create_online_log_dest_4		      DYNAMIC_WRT_INST TRUE
db_create_online_log_dest_5		      DYNAMIC_WRT_INST TRUE
db_recovery_file_dest			      DYNAMIC_WRT_INST FALSE
db_recovery_file_dest_size		      DYNAMIC_WRT_INST FALSE
standby_file_management 		      DYNAMIC_WRT_INST FALSE
db_unrecoverable_scn_tracking		      DYNAMIC_WRT_INST TRUE
thread					      DYNAMIC_WRT_INST FALSE
enabled_PDBs_on_standby 		      DYNAMIC_WRT_INST FALSE
fast_start_io_target			      DYNAMIC_WRT_INST FALSE
fast_start_mttr_target			      DYNAMIC_WRT_INST FALSE
log_checkpoints_to_alert		      DYNAMIC_WRT_INST FALSE
db_lost_write_protect			      DYNAMIC_WRT_INST FALSE
recovery_parallelism			      DYNAMIC_WRT_INST FALSE
enable_goldengate_replication		      DYNAMIC_WRT_INST FALSE
inmemory_adg_enabled			      DYNAMIC_WRT_INST FALSE
db_flashback_retention_target		      DYNAMIC_WRT_INST FALSE
data_transfer_cache_size		      DYNAMIC_WRT_INST FALSE
enable_imc_with_mira			      DYNAMIC_WRT_INST FALSE
adg_account_info_tracking		      STATIC_WRT_INST  FALSE
adg_redirect_dml			      DYNAMIC_WRT_INST FALSE
dml_locks				      STATIC_WRT_INST  FALSE
replication_dependency_tracking 	      STATIC_WRT_INST  FALSE
transactions				      STATIC_WRT_INST  FALSE
transactions_per_rollback_segment	      STATIC_WRT_INST  FALSE
temp_undo_enabled			      DYNAMIC_WRT_INST TRUE
rollback_segments			      STATIC_WRT_INST  FALSE
undo_management 			      STATIC_WRT_INST  FALSE
undo_tablespace 			      DYNAMIC_WRT_INST FALSE
undo_retention				      DYNAMIC_WRT_INST FALSE
fast_start_parallel_rollback		      DYNAMIC_WRT_INST FALSE
resumable_timeout			      DYNAMIC_WRT_INST TRUE
instance_number 			      STATIC_WRT_INST  FALSE
heat_map				      DYNAMIC_WRT_INST TRUE
inmemory_size				      DYNAMIC_WRT_INST FALSE
inmemory_xmem_size			      DYNAMIC_WRT_INST FALSE
inmemory_prefer_xmem_memcompress	      DYNAMIC_WRT_INST FALSE
inmemory_prefer_xmem_priority		      DYNAMIC_WRT_INST FALSE
allow_rowid_column_type 		      DYNAMIC_WRT_INST TRUE
db_block_checking			      DYNAMIC_WRT_INST FALSE
recyclebin						       TRUE
db_index_compression_inheritance	      DYNAMIC_WRT_INST TRUE
db_securefile				      DYNAMIC_WRT_INST TRUE
inmemory_clause_default 		      DYNAMIC_WRT_INST TRUE
inmemory_force				      DYNAMIC_WRT_INST FALSE
inmemory_query				      DYNAMIC_WRT_INST TRUE
inmemory_expressions_usage		      DYNAMIC_WRT_INST FALSE
inmemory_virtual_columns		      DYNAMIC_WRT_INST FALSE
inmemory_max_populate_servers		      DYNAMIC_WRT_INST FALSE
inmemory_trickle_repopulate_servers_percent   DYNAMIC_WRT_INST FALSE
inmemory_optimized_arithmetic		      DYNAMIC_WRT_INST FALSE
inmemory_automatic_level		      DYNAMIC_WRT_INST FALSE
create_stored_outlines			      DYNAMIC_WRT_INST TRUE
serial_reuse				      STATIC_WRT_INST  FALSE
ldap_directory_access			      DYNAMIC_WRT_INST FALSE
ldap_directory_sysauth			      STATIC_WRT_INST  FALSE
os_roles				      STATIC_WRT_INST  FALSE
rdbms_server_dn 			      STATIC_WRT_INST  FALSE
remote_os_authent			      STATIC_WRT_INST  FALSE
remote_os_roles 			      STATIC_WRT_INST  FALSE
sec_case_sensitive_logon		      DYNAMIC_WRT_INST FALSE
remote_login_passwordfile		      STATIC_WRT_INST  FALSE
license_max_users			      DYNAMIC_WRT_INST FALSE
audit_sys_operations			      STATIC_WRT_INST  FALSE
DBFIPS_140				      STATIC_WRT_INST  FALSE
one_step_plugin_for_pdb_with_tde	      DYNAMIC_WRT_INST FALSE
external_keystore_credential_location	      STATIC_WRT_INST  FALSE
unified_audit_sga_queue_size		      STATIC_WRT_INST  FALSE
wallet_root				      STATIC_WRT_INST  FALSE
tde_configuration			      DYNAMIC_WRT_INST FALSE
db_domain				      STATIC_WRT_INST  FALSE
global_names				      DYNAMIC_WRT_INST TRUE
distributed_lock_timeout		      STATIC_WRT_INST  FALSE
commit_point_strength			      STATIC_WRT_INST  FALSE
global_txn_processes			      DYNAMIC_WRT_INST FALSE
instance_name				      STATIC_WRT_INST  FALSE
dispatchers				      DYNAMIC_WRT_INST FALSE
shared_servers				      DYNAMIC_WRT_INST FALSE
max_shared_servers			      DYNAMIC_WRT_INST FALSE
max_dispatchers 			      DYNAMIC_WRT_INST FALSE
circuits				      DYNAMIC_WRT_INST FALSE
shared_server_sessions			      DYNAMIC_WRT_INST FALSE
use_dedicated_broker			      DYNAMIC_WRT_INST FALSE
connection_brokers			      DYNAMIC_WRT_INST FALSE
local_listener				      DYNAMIC_WRT_INST FALSE
forward_listener			      DYNAMIC_WRT_INST FALSE
remote_listener 			      DYNAMIC_WRT_INST FALSE
listener_networks			      DYNAMIC_WRT_INST FALSE
cursor_space_for_time			      STATIC_WRT_INST  FALSE
session_cached_cursors					       TRUE
remote_dependencies_mode		      DYNAMIC_WRT_INST TRUE
smtp_out_server 			      DYNAMIC_WRT_INST TRUE
plsql_v2_compatibility			      DYNAMIC_WRT_INST TRUE
plsql_warnings				      DYNAMIC_WRT_INST TRUE
plsql_code_type 			      DYNAMIC_WRT_INST TRUE
plsql_debug				      DYNAMIC_WRT_INST TRUE
plsql_optimize_level			      DYNAMIC_WRT_INST TRUE
plsql_ccflags				      DYNAMIC_WRT_INST TRUE
plscope_settings			      DYNAMIC_WRT_INST TRUE
permit_92_wrap_format			      STATIC_WRT_INST  FALSE
java_jit_enabled			      DYNAMIC_WRT_INST TRUE
java_restrict				      STATIC_WRT_INST  FALSE
job_queue_processes			      DYNAMIC_WRT_INST FALSE
scheduler_follow_pdbtz			      DYNAMIC_WRT_INST FALSE
parallel_min_percent			      STATIC_WRT_INST  TRUE
create_bitmap_area_size 		      STATIC_WRT_INST  FALSE
bitmap_merge_area_size			      STATIC_WRT_INST  FALSE
cursor_sharing				      DYNAMIC_WRT_INST TRUE
result_cache_mode			      DYNAMIC_WRT_INST TRUE
parallel_min_servers			      DYNAMIC_WRT_INST FALSE
parallel_max_servers			      DYNAMIC_WRT_INST FALSE
parallel_instance_group 		      DYNAMIC_WRT_INST TRUE
parallel_execution_message_size 	      STATIC_WRT_INST  FALSE
hash_area_size				      STATIC_WRT_INST  TRUE
private_temp_table_prefix				       FALSE
result_cache_max_size			      DYNAMIC_WRT_INST FALSE
result_cache_max_result 		      DYNAMIC_WRT_INST FALSE
result_cache_remote_expiration		      DYNAMIC_WRT_INST TRUE
shadow_core_dump			      DYNAMIC_WRT_INST FALSE
background_core_dump			      DYNAMIC_WRT_INST FALSE
background_dump_dest			      DYNAMIC_WRT_INST FALSE
user_dump_dest				      DYNAMIC_WRT_INST FALSE
core_dump_dest				      DYNAMIC_WRT_INST FALSE
audit_file_dest 					       FALSE
audit_syslog_level			      STATIC_WRT_INST  FALSE
unified_audit_systemlog 		      STATIC_WRT_INST  FALSE
unified_audit_common_systemlog		      STATIC_WRT_INST  FALSE
resource_manage_goldengate		      DYNAMIC_WRT_INST FALSE
object_cache_optimal_size				       TRUE
object_cache_max_size_percent				       TRUE
lob_signature_enable			      DYNAMIC_WRT_INST FALSE
session_max_open_files			      STATIC_WRT_INST  FALSE
open_links				      STATIC_WRT_INST  FALSE
open_links_per_instance 		      STATIC_WRT_INST  FALSE
commit_write				      DYNAMIC_WRT_INST TRUE
commit_wait				      DYNAMIC_WRT_INST TRUE
commit_logging				      DYNAMIC_WRT_INST TRUE
optimizer_features_enable		      DYNAMIC_WRT_INST TRUE
fixed_date				      DYNAMIC_WRT_INST FALSE
audit_trail				      STATIC_WRT_INST  FALSE
sort_area_size						       TRUE
sort_area_retained_size 				       TRUE
cell_offload_processing 		      DYNAMIC_WRT_INST TRUE
cell_offload_decryption 		      DYNAMIC_WRT_INST FALSE
cell_offload_parameters 		      DYNAMIC_WRT_INST TRUE
cell_offload_compaction 		      DYNAMIC_WRT_INST TRUE
cell_offload_plan_display		      DYNAMIC_WRT_INST TRUE
db_name 				      STATIC_WRT_INST  FALSE
db_unique_name				      STATIC_WRT_INST  FALSE
open_cursors				      DYNAMIC_WRT_INST FALSE
ifile					      STATIC_WRT_INST  FALSE
sql_trace				      DYNAMIC_WRT_INST TRUE
os_authent_prefix			      STATIC_WRT_INST  FALSE
optimizer_mode				      DYNAMIC_WRT_INST TRUE
sql92_security				      STATIC_WRT_INST  FALSE
blank_trimming				      STATIC_WRT_INST  FALSE
star_transformation_enabled		      DYNAMIC_WRT_INST TRUE
parallel_degree_policy			      DYNAMIC_WRT_INST TRUE
parallel_adaptive_multi_user		      DYNAMIC_WRT_INST FALSE
parallel_threads_per_cpu		      DYNAMIC_WRT_INST FALSE
optimizer_index_cost_adj		      DYNAMIC_WRT_INST TRUE
optimizer_index_caching 		      DYNAMIC_WRT_INST TRUE
query_rewrite_enabled			      DYNAMIC_WRT_INST TRUE
query_rewrite_integrity 		      DYNAMIC_WRT_INST TRUE
pga_aggregate_target			      DYNAMIC_WRT_INST FALSE
workarea_size_policy			      DYNAMIC_WRT_INST TRUE
optimizer_dynamic_sampling		      DYNAMIC_WRT_INST TRUE
statistics_level			      DYNAMIC_WRT_INST TRUE
cursor_bind_capture_destination 	      DYNAMIC_WRT_INST TRUE
skip_unusable_indexes			      DYNAMIC_WRT_INST TRUE
optimizer_ignore_hints			      DYNAMIC_WRT_INST TRUE
optimizer_secure_view_merging		      DYNAMIC_WRT_INST FALSE
ddl_lock_timeout			      DYNAMIC_WRT_INST TRUE
deferred_segment_creation		      DYNAMIC_WRT_INST TRUE
optimizer_use_pending_statistics	      DYNAMIC_WRT_INST TRUE
optimizer_capture_sql_plan_baselines	      DYNAMIC_WRT_INST TRUE
optimizer_use_sql_plan_baselines	      DYNAMIC_WRT_INST TRUE
parallel_min_time_threshold		      DYNAMIC_WRT_INST TRUE
parallel_degree_limit			      DYNAMIC_WRT_INST TRUE
parallel_force_local			      DYNAMIC_WRT_INST TRUE
optimizer_use_invisible_indexes 	      DYNAMIC_WRT_INST TRUE
dst_upgrade_insert_conv 		      DYNAMIC_WRT_INST TRUE
parallel_servers_target 		      DYNAMIC_WRT_INST FALSE
max_string_size 			      DYNAMIC_WRT_INST FALSE
optimizer_adaptive_reporting_only	      DYNAMIC_WRT_INST TRUE
optimizer_adaptive_plans		      DYNAMIC_WRT_INST TRUE
optimizer_inmemory_aware		      DYNAMIC_WRT_INST TRUE
cursor_invalidation			      DYNAMIC_WRT_INST TRUE
approx_for_aggregation			      DYNAMIC_WRT_INST TRUE
approx_for_count_distinct		      DYNAMIC_WRT_INST TRUE
approx_for_percentile			      DYNAMIC_WRT_INST TRUE
optimizer_adaptive_statistics		      DYNAMIC_WRT_INST TRUE
optimizer_ignore_parallel_hints 	      DYNAMIC_WRT_INST TRUE
parallel_min_degree			      DYNAMIC_WRT_INST TRUE
sec_protocol_error_trace_action 	      DYNAMIC_WRT_INST FALSE
sec_protocol_error_further_action	      DYNAMIC_WRT_INST FALSE
sec_max_failed_login_attempts		      STATIC_WRT_INST  FALSE
sec_return_server_release_banner	      STATIC_WRT_INST  FALSE
enable_ddl_logging			      DYNAMIC_WRT_INST TRUE
client_result_cache_size		      STATIC_WRT_INST  FALSE
client_result_cache_lag 		      STATIC_WRT_INST  FALSE
outbound_dblink_protocols		      DYNAMIC_WRT_INST FALSE
allow_global_dblinks			      DYNAMIC_WRT_INST FALSE
client_statistics_level 				       FALSE
aq_tm_processes 			      DYNAMIC_WRT_INST TRUE
hs_autoregister 			      DYNAMIC_WRT_INST FALSE
xml_db_events				      DYNAMIC_WRT_INST TRUE
dg_broker_start 			      DYNAMIC_WRT_INST FALSE
dg_broker_config_file1			      DYNAMIC_WRT_INST FALSE
dg_broker_config_file2			      DYNAMIC_WRT_INST FALSE
olap_page_pool_size					       TRUE
asm_diskstring				      DYNAMIC_WRT_INST TRUE
asm_preferred_read_failure_groups	      DYNAMIC_WRT_INST FALSE
control_management_pack_access		      DYNAMIC_WRT_INST FALSE
awr_pdb_autoflush_enabled		      DYNAMIC_WRT_INST FALSE
awr_pdb_max_parallel_slaves		      DYNAMIC_WRT_INST FALSE
awr_snapshot_time_offset		      DYNAMIC_WRT_INST FALSE
sqltune_category			      DYNAMIC_WRT_INST TRUE
autotask_max_active_pdbs		      DYNAMIC_WRT_INST FALSE
enable_automatic_maintenance_pdb	      DYNAMIC_WRT_INST FALSE
spatial_vector_acceleration		      DYNAMIC_WRT_INST TRUE
diagnostic_dest 			      DYNAMIC_WRT_INST FALSE
tracefile_identifier			      STATIC_WRT_INST  TRUE
max_dump_file_size			      DYNAMIC_WRT_INST TRUE
trace_enabled				      DYNAMIC_WRT_INST FALSE
cell_offloadgroup_name			      DYNAMIC_WRT_INST TRUE
enable_pluggable_database		      STATIC_WRT_INST  FALSE
pdb_os_credential			      STATIC_WRT_INST  FALSE
pdb_file_name_convert			      DYNAMIC_WRT_INST TRUE
noncdb_compatible			      STATIC_WRT_INST  FALSE
common_user_prefix			      STATIC_WRT_INST  FALSE
target_pdbs				      STATIC_WRT_INST  FALSE
max_pdbs				      DYNAMIC_WRT_INST FALSE
cdb_cluster				      STATIC_WRT_INST  FALSE
cdb_cluster_name			      STATIC_WRT_INST  FALSE
standby_pdb_source_file_directory	      DYNAMIC_WRT_INST FALSE
standby_pdb_source_file_dblink		      DYNAMIC_WRT_INST FALSE
remote_recovery_file_dest		      DYNAMIC_WRT_INST FALSE
disable_pdb_feature			      DYNAMIC_WRT_INST FALSE
containers_parallel_degree		      DYNAMIC_WRT_INST TRUE
default_sharing 			      DYNAMIC_WRT_INST TRUE
pdb_lockdown				      DYNAMIC_WRT_INST TRUE
pdb_template				      DYNAMIC_WRT_INST TRUE
shrd_dupl_table_refresh_rate		      DYNAMIC_WRT_INST FALSE
multishard_query_data_consistency	      DYNAMIC_WRT_INST TRUE
multishard_query_partial_results	      DYNAMIC_WRT_INST TRUE

445 rows selected.

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> select name,
CASE WHEN ISSYS_MODIFIABLE = 'FALSE' THEN 'STATIC_WRT_INST' 
when ISSYS_MODIFIABLE = 'IMMEDIATE' then 'DYNAMIC_WRT_INST' end as instance_level,
case when ISSES_MODIFIABLE = 'FALSE' THEN 'STATIC_WRT_SESSION' when ISSES_MODIFIABLE ='TRUE' THEN 'DYNAMIC_WRT_SESSION' end as session level 
from v$parameter  2    3    4    5  ;
case when ISSES_MODIFIABLE = 'FALSE' THEN 'STATIC_WRT_SESSION' when ISSES_MODIFIABLE ='TRUE' THEN 'DYNAMIC_WRT_SESSION' end as session level
                                                                                                                               *
ERROR at line 4:
ORA-00923: FROM keyword not found where expected


SQL> select name,
CASE WHEN ISSYS_MODIFIABLE = 'FALSE' THEN 'STATIC_WRT_INST' 
when ISSYS_MODIFIABLE = 'IMMEDIATE' then 'DYNAMIC_WRT_INST' end as instance_level,
case when ISSES_MODIFIABLE = 'FALSE' THEN 'STATIC_WRT_SESSION' when ISSES_MODIFIABLE ='TRUE' THEN 'DYNAMIC_WRT_SESSION' end as session_level 
from v$parameter  2    3    4    5  ;

NAME					      INSTANCE_LEVEL   SESSION_LEVEL
--------------------------------------------- ---------------- -------------------
lock_name_space 			      STATIC_WRT_INST  STATIC_WRT_SESSION
processes				      STATIC_WRT_INST  STATIC_WRT_SESSION
sessions				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
timed_statistics			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
timed_os_statistics			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
resource_limit				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
license_max_sessions			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
license_sessions_warning		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
long_module_action			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
standby_db_preserve_states		      STATIC_WRT_INST  STATIC_WRT_SESSION
instance_abort_delay_time		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
cpu_count				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
cpu_min_count				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
instance_groups 			      STATIC_WRT_INST  STATIC_WRT_SESSION
event					      STATIC_WRT_INST  STATIC_WRT_SESSION
sga_max_size				      STATIC_WRT_INST  STATIC_WRT_SESSION
use_large_pages 			      STATIC_WRT_INST  STATIC_WRT_SESSION
pre_page_sga				      STATIC_WRT_INST  STATIC_WRT_SESSION
shared_memory_address			      STATIC_WRT_INST  STATIC_WRT_SESSION
hi_shared_memory_address		      STATIC_WRT_INST  STATIC_WRT_SESSION
lock_sga				      STATIC_WRT_INST  STATIC_WRT_SESSION
processor_group_name			      STATIC_WRT_INST  STATIC_WRT_SESSION
allow_group_access_to_sga		      STATIC_WRT_INST  STATIC_WRT_SESSION
sga_min_size				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
shared_pool_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
large_pool_size 			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
java_pool_size				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
streams_pool_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
shared_pool_reserved_size		      STATIC_WRT_INST  STATIC_WRT_SESSION
java_soft_sessionspace_limit		      STATIC_WRT_INST  STATIC_WRT_SESSION
java_max_sessionspace_size		      STATIC_WRT_INST  STATIC_WRT_SESSION
pga_aggregate_limit			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
spfile					      DYNAMIC_WRT_INST STATIC_WRT_SESSION
instance_type				      STATIC_WRT_INST  STATIC_WRT_SESSION
uniform_log_timestamp_format		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
nls_language				      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_territory				      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_sort				      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_date_language			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_date_format 			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_currency				      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_numeric_characters			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_iso_currency			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_calendar				      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_time_format 			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_timestamp_format			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_time_tz_format			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_timestamp_tz_format 		      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_dual_currency			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_comp				      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
nls_length_semantics			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
nls_nchar_conv_excp			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
disk_asynch_io				      STATIC_WRT_INST  STATIC_WRT_SESSION
tape_asynch_io				      STATIC_WRT_INST  STATIC_WRT_SESSION
dbwr_io_slaves				      STATIC_WRT_INST  STATIC_WRT_SESSION
backup_tape_io_slaves					       STATIC_WRT_SESSION
fileio_network_adapters 		      STATIC_WRT_INST  STATIC_WRT_SESSION
filesystemio_options			      STATIC_WRT_INST  STATIC_WRT_SESSION
dnfs_batch_size 			      STATIC_WRT_INST  STATIC_WRT_SESSION
clonedb 				      STATIC_WRT_INST  STATIC_WRT_SESSION
instant_restore 			      STATIC_WRT_INST  STATIC_WRT_SESSION
http_proxy				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
ssl_wallet				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
ofs_threads				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
resource_manager_cpu_allocation 	      DYNAMIC_WRT_INST STATIC_WRT_SESSION
resource_manager_plan			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_performance_profile			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
max_iops				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
max_mbps				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
max_idle_time				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
max_idle_blocker_time			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
cluster_interconnects			      STATIC_WRT_INST  STATIC_WRT_SESSION
file_mapping				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
max_datapump_jobs_per_pdb		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
max_datapump_parallel_per_job		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
service_names				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
threaded_execution			      STATIC_WRT_INST  STATIC_WRT_SESSION
clonedb_dir				      STATIC_WRT_INST  STATIC_WRT_SESSION
enable_dnfs_dispatcher			      STATIC_WRT_INST  STATIC_WRT_SESSION
gcs_server_processes			      STATIC_WRT_INST  STATIC_WRT_SESSION
active_instance_count			      STATIC_WRT_INST  STATIC_WRT_SESSION
instance_mode				      STATIC_WRT_INST  STATIC_WRT_SESSION
sga_target				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
memory_target				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
memory_max_target			      STATIC_WRT_INST  STATIC_WRT_SESSION
control_files				      STATIC_WRT_INST  STATIC_WRT_SESSION
db_file_name_convert			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
log_file_name_convert			      STATIC_WRT_INST  STATIC_WRT_SESSION
control_file_record_keep_time		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_block_buffers			      STATIC_WRT_INST  STATIC_WRT_SESSION
db_block_checksum			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_ultra_safe				      STATIC_WRT_INST  STATIC_WRT_SESSION
db_block_size				      STATIC_WRT_INST  STATIC_WRT_SESSION
db_cache_size				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_2k_cache_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_4k_cache_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_8k_cache_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_16k_cache_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_32k_cache_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_keep_cache_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_recycle_cache_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
memoptimize_pool_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_big_table_cache_percent_target	      DYNAMIC_WRT_INST STATIC_WRT_SESSION
encrypt_new_tablespaces 		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_writer_processes			      STATIC_WRT_INST  STATIC_WRT_SESSION
buffer_pool_keep			      STATIC_WRT_INST  STATIC_WRT_SESSION
buffer_pool_recycle			      STATIC_WRT_INST  STATIC_WRT_SESSION
db_flash_cache_file			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_flash_cache_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_cache_advice 			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
compatible				      STATIC_WRT_INST  STATIC_WRT_SESSION
log_archive_dest_1			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_2			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_3			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_4			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_5			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_6			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_7			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_8			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_9			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_10			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_11			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_12			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_13			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_14			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_15			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_16			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_17			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_18			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_19			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_20			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_21			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_22			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_23			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_24			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_25			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_26			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_27			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_28			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_29			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_30			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_31			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_1		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_2		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_3		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_4		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_5		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_6		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_7		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_8		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_9		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_10		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_11		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_12		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_13		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_14		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_15		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_16		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_17		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_18		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_19		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_20		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_21		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_22		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_23		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_24		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_25		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_26		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_27		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_28		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_29		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_30		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_dest_state_31		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
log_archive_start			      STATIC_WRT_INST  STATIC_WRT_SESSION
log_archive_dest			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
log_archive_duplex_dest 		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
log_archive_min_succeed_dest		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
fal_client				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
fal_server				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
log_archive_trace			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
data_guard_sync_latency 		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
log_archive_config			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
log_archive_format			      STATIC_WRT_INST  STATIC_WRT_SESSION
data_guard_max_io_time			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
data_guard_max_longio_time		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
redo_transport_user			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
log_archive_max_processes		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
log_buffer				      STATIC_WRT_INST  STATIC_WRT_SESSION
log_checkpoint_interval 		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
log_checkpoint_timeout			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
archive_lag_target			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_files				      STATIC_WRT_INST  STATIC_WRT_SESSION
db_file_multiblock_read_count		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
read_only_open_delayed			      STATIC_WRT_INST  STATIC_WRT_SESSION
cluster_database			      STATIC_WRT_INST  STATIC_WRT_SESSION
cluster_database_instances		      STATIC_WRT_INST  STATIC_WRT_SESSION
db_create_file_dest			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
db_create_online_log_dest_1		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
db_create_online_log_dest_2		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
db_create_online_log_dest_3		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
db_create_online_log_dest_4		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
db_create_online_log_dest_5		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
db_recovery_file_dest			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_recovery_file_dest_size		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
standby_file_management 		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_unrecoverable_scn_tracking		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
thread					      DYNAMIC_WRT_INST STATIC_WRT_SESSION
enabled_PDBs_on_standby 		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
fast_start_io_target			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
fast_start_mttr_target			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
log_checkpoints_to_alert		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_lost_write_protect			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
recovery_parallelism			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
enable_goldengate_replication		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
inmemory_adg_enabled			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_flashback_retention_target		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
data_transfer_cache_size		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
enable_imc_with_mira			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
adg_account_info_tracking		      STATIC_WRT_INST  STATIC_WRT_SESSION
adg_redirect_dml			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
dml_locks				      STATIC_WRT_INST  STATIC_WRT_SESSION
replication_dependency_tracking 	      STATIC_WRT_INST  STATIC_WRT_SESSION
transactions				      STATIC_WRT_INST  STATIC_WRT_SESSION
transactions_per_rollback_segment	      STATIC_WRT_INST  STATIC_WRT_SESSION
temp_undo_enabled			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
rollback_segments			      STATIC_WRT_INST  STATIC_WRT_SESSION
undo_management 			      STATIC_WRT_INST  STATIC_WRT_SESSION
undo_tablespace 			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
undo_retention				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
fast_start_parallel_rollback		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
resumable_timeout			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
instance_number 			      STATIC_WRT_INST  STATIC_WRT_SESSION
heat_map				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
inmemory_size				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
inmemory_xmem_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
inmemory_prefer_xmem_memcompress	      DYNAMIC_WRT_INST STATIC_WRT_SESSION
inmemory_prefer_xmem_priority		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
allow_rowid_column_type 		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
db_block_checking			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
recyclebin						       DYNAMIC_WRT_SESSION
db_index_compression_inheritance	      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
db_securefile				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
inmemory_clause_default 		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
inmemory_force				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
inmemory_query				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
inmemory_expressions_usage		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
inmemory_virtual_columns		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
inmemory_max_populate_servers		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
inmemory_trickle_repopulate_servers_percent   DYNAMIC_WRT_INST STATIC_WRT_SESSION
inmemory_optimized_arithmetic		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
inmemory_automatic_level		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
create_stored_outlines			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
serial_reuse				      STATIC_WRT_INST  STATIC_WRT_SESSION
ldap_directory_access			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
ldap_directory_sysauth			      STATIC_WRT_INST  STATIC_WRT_SESSION
os_roles				      STATIC_WRT_INST  STATIC_WRT_SESSION
rdbms_server_dn 			      STATIC_WRT_INST  STATIC_WRT_SESSION
remote_os_authent			      STATIC_WRT_INST  STATIC_WRT_SESSION
remote_os_roles 			      STATIC_WRT_INST  STATIC_WRT_SESSION
sec_case_sensitive_logon		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
remote_login_passwordfile		      STATIC_WRT_INST  STATIC_WRT_SESSION
license_max_users			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
audit_sys_operations			      STATIC_WRT_INST  STATIC_WRT_SESSION
DBFIPS_140				      STATIC_WRT_INST  STATIC_WRT_SESSION
one_step_plugin_for_pdb_with_tde	      DYNAMIC_WRT_INST STATIC_WRT_SESSION
external_keystore_credential_location	      STATIC_WRT_INST  STATIC_WRT_SESSION
unified_audit_sga_queue_size		      STATIC_WRT_INST  STATIC_WRT_SESSION
wallet_root				      STATIC_WRT_INST  STATIC_WRT_SESSION
tde_configuration			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
db_domain				      STATIC_WRT_INST  STATIC_WRT_SESSION
global_names				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
distributed_lock_timeout		      STATIC_WRT_INST  STATIC_WRT_SESSION
commit_point_strength			      STATIC_WRT_INST  STATIC_WRT_SESSION
global_txn_processes			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
instance_name				      STATIC_WRT_INST  STATIC_WRT_SESSION
dispatchers				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
shared_servers				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
max_shared_servers			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
max_dispatchers 			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
circuits				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
shared_server_sessions			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
use_dedicated_broker			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
connection_brokers			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
local_listener				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
forward_listener			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
remote_listener 			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
listener_networks			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
cursor_space_for_time			      STATIC_WRT_INST  STATIC_WRT_SESSION
session_cached_cursors					       DYNAMIC_WRT_SESSION
remote_dependencies_mode		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
smtp_out_server 			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
plsql_v2_compatibility			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
plsql_warnings				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
plsql_code_type 			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
plsql_debug				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
plsql_optimize_level			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
plsql_ccflags				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
plscope_settings			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
permit_92_wrap_format			      STATIC_WRT_INST  STATIC_WRT_SESSION
java_jit_enabled			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
java_restrict				      STATIC_WRT_INST  STATIC_WRT_SESSION
job_queue_processes			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
scheduler_follow_pdbtz			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
parallel_min_percent			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
create_bitmap_area_size 		      STATIC_WRT_INST  STATIC_WRT_SESSION
bitmap_merge_area_size			      STATIC_WRT_INST  STATIC_WRT_SESSION
cursor_sharing				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
result_cache_mode			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
parallel_min_servers			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
parallel_max_servers			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
parallel_instance_group 		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
parallel_execution_message_size 	      STATIC_WRT_INST  STATIC_WRT_SESSION
hash_area_size				      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
private_temp_table_prefix				       STATIC_WRT_SESSION
result_cache_max_size			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
result_cache_max_result 		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
result_cache_remote_expiration		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
shadow_core_dump			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
background_core_dump			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
background_dump_dest			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
user_dump_dest				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
core_dump_dest				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
audit_file_dest 					       STATIC_WRT_SESSION
audit_syslog_level			      STATIC_WRT_INST  STATIC_WRT_SESSION
unified_audit_systemlog 		      STATIC_WRT_INST  STATIC_WRT_SESSION
unified_audit_common_systemlog		      STATIC_WRT_INST  STATIC_WRT_SESSION
resource_manage_goldengate		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
object_cache_optimal_size				       DYNAMIC_WRT_SESSION
object_cache_max_size_percent				       DYNAMIC_WRT_SESSION
lob_signature_enable			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
session_max_open_files			      STATIC_WRT_INST  STATIC_WRT_SESSION
open_links				      STATIC_WRT_INST  STATIC_WRT_SESSION
open_links_per_instance 		      STATIC_WRT_INST  STATIC_WRT_SESSION
commit_write				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
commit_wait				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
commit_logging				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_features_enable		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
fixed_date				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
audit_trail				      STATIC_WRT_INST  STATIC_WRT_SESSION
sort_area_size						       DYNAMIC_WRT_SESSION
sort_area_retained_size 				       DYNAMIC_WRT_SESSION
cell_offload_processing 		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
cell_offload_decryption 		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
cell_offload_parameters 		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
cell_offload_compaction 		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
cell_offload_plan_display		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
db_name 				      STATIC_WRT_INST  STATIC_WRT_SESSION
db_unique_name				      STATIC_WRT_INST  STATIC_WRT_SESSION
open_cursors				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
ifile					      STATIC_WRT_INST  STATIC_WRT_SESSION
sql_trace				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
os_authent_prefix			      STATIC_WRT_INST  STATIC_WRT_SESSION
optimizer_mode				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
sql92_security				      STATIC_WRT_INST  STATIC_WRT_SESSION
blank_trimming				      STATIC_WRT_INST  STATIC_WRT_SESSION
star_transformation_enabled		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
parallel_degree_policy			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
parallel_adaptive_multi_user		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
parallel_threads_per_cpu		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
optimizer_index_cost_adj		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_index_caching 		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
query_rewrite_enabled			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
query_rewrite_integrity 		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
pga_aggregate_target			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
workarea_size_policy			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_dynamic_sampling		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
statistics_level			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
cursor_bind_capture_destination 	      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
skip_unusable_indexes			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_ignore_hints			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_secure_view_merging		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
ddl_lock_timeout			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
deferred_segment_creation		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_use_pending_statistics	      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_capture_sql_plan_baselines	      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_use_sql_plan_baselines	      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
parallel_min_time_threshold		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
parallel_degree_limit			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
parallel_force_local			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_use_invisible_indexes 	      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
dst_upgrade_insert_conv 		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
parallel_servers_target 		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
max_string_size 			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
optimizer_adaptive_reporting_only	      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_adaptive_plans		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_inmemory_aware		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
cursor_invalidation			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
approx_for_aggregation			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
approx_for_count_distinct		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
approx_for_percentile			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_adaptive_statistics		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
optimizer_ignore_parallel_hints 	      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
parallel_min_degree			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
sec_protocol_error_trace_action 	      DYNAMIC_WRT_INST STATIC_WRT_SESSION
sec_protocol_error_further_action	      DYNAMIC_WRT_INST STATIC_WRT_SESSION
sec_max_failed_login_attempts		      STATIC_WRT_INST  STATIC_WRT_SESSION
sec_return_server_release_banner	      STATIC_WRT_INST  STATIC_WRT_SESSION
enable_ddl_logging			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
client_result_cache_size		      STATIC_WRT_INST  STATIC_WRT_SESSION
client_result_cache_lag 		      STATIC_WRT_INST  STATIC_WRT_SESSION
outbound_dblink_protocols		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
allow_global_dblinks			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
client_statistics_level 				       STATIC_WRT_SESSION
aq_tm_processes 			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
hs_autoregister 			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
xml_db_events				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
dg_broker_start 			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
dg_broker_config_file1			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
dg_broker_config_file2			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
olap_page_pool_size					       DYNAMIC_WRT_SESSION
asm_diskstring				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
asm_preferred_read_failure_groups	      DYNAMIC_WRT_INST STATIC_WRT_SESSION
control_management_pack_access		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
awr_pdb_autoflush_enabled		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
awr_pdb_max_parallel_slaves		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
awr_snapshot_time_offset		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
sqltune_category			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
autotask_max_active_pdbs		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
enable_automatic_maintenance_pdb	      DYNAMIC_WRT_INST STATIC_WRT_SESSION
spatial_vector_acceleration		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
diagnostic_dest 			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
tracefile_identifier			      STATIC_WRT_INST  DYNAMIC_WRT_SESSION
max_dump_file_size			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
trace_enabled				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
cell_offloadgroup_name			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
enable_pluggable_database		      STATIC_WRT_INST  STATIC_WRT_SESSION
pdb_os_credential			      STATIC_WRT_INST  STATIC_WRT_SESSION
pdb_file_name_convert			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
noncdb_compatible			      STATIC_WRT_INST  STATIC_WRT_SESSION
common_user_prefix			      STATIC_WRT_INST  STATIC_WRT_SESSION
target_pdbs				      STATIC_WRT_INST  STATIC_WRT_SESSION
max_pdbs				      DYNAMIC_WRT_INST STATIC_WRT_SESSION
cdb_cluster				      STATIC_WRT_INST  STATIC_WRT_SESSION
cdb_cluster_name			      STATIC_WRT_INST  STATIC_WRT_SESSION
standby_pdb_source_file_directory	      DYNAMIC_WRT_INST STATIC_WRT_SESSION
standby_pdb_source_file_dblink		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
remote_recovery_file_dest		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
disable_pdb_feature			      DYNAMIC_WRT_INST STATIC_WRT_SESSION
containers_parallel_degree		      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
default_sharing 			      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
pdb_lockdown				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
pdb_template				      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
shrd_dupl_table_refresh_rate		      DYNAMIC_WRT_INST STATIC_WRT_SESSION
multishard_query_data_consistency	      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION
multishard_query_partial_results	      DYNAMIC_WRT_INST DYNAMIC_WRT_SESSION

445 rows selected.

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> select name,
CASE WHEN ISSYS_MODIFIABLE = 'FALSE' THEN 'STATIC' 
when ISSYS_MODIFIABLE = 'IMMEDIATE' then 'DYNAMIC' end as instance_level,
case when ISSES_MODIFIABLE = 'FALSE' THEN 'STATIC' when ISSES_MODIFIABLE ='TRUE' THEN 'DYNAMIC' end as session_level 
from v$parameter
  2    3    4    5    6  
SQL> /

NAME					      INSTANC SESSION
--------------------------------------------- ------- -------
lock_name_space 			      STATIC  STATIC
processes				      STATIC  STATIC
sessions				      DYNAMIC STATIC
timed_statistics			      DYNAMIC DYNAMIC
timed_os_statistics			      DYNAMIC DYNAMIC
resource_limit				      DYNAMIC STATIC
license_max_sessions			      DYNAMIC STATIC
license_sessions_warning		      DYNAMIC STATIC
long_module_action			      DYNAMIC STATIC
standby_db_preserve_states		      STATIC  STATIC
instance_abort_delay_time		      DYNAMIC STATIC
cpu_count				      DYNAMIC STATIC
cpu_min_count				      DYNAMIC STATIC
instance_groups 			      STATIC  STATIC
event					      STATIC  STATIC
sga_max_size				      STATIC  STATIC
use_large_pages 			      STATIC  STATIC
pre_page_sga				      STATIC  STATIC
shared_memory_address			      STATIC  STATIC
hi_shared_memory_address		      STATIC  STATIC
lock_sga				      STATIC  STATIC
processor_group_name			      STATIC  STATIC
allow_group_access_to_sga		      STATIC  STATIC
sga_min_size				      DYNAMIC STATIC
shared_pool_size			      DYNAMIC STATIC
large_pool_size 			      DYNAMIC STATIC
java_pool_size				      DYNAMIC STATIC
streams_pool_size			      DYNAMIC STATIC
shared_pool_reserved_size		      STATIC  STATIC
java_soft_sessionspace_limit		      STATIC  STATIC
java_max_sessionspace_size		      STATIC  STATIC
pga_aggregate_limit			      DYNAMIC STATIC
spfile					      DYNAMIC STATIC
instance_type				      STATIC  STATIC
uniform_log_timestamp_format		      DYNAMIC STATIC
nls_language				      STATIC  DYNAMIC
nls_territory				      STATIC  DYNAMIC
nls_sort				      STATIC  DYNAMIC
nls_date_language			      STATIC  DYNAMIC
nls_date_format 			      STATIC  DYNAMIC
nls_currency				      STATIC  DYNAMIC
nls_numeric_characters			      STATIC  DYNAMIC
nls_iso_currency			      STATIC  DYNAMIC
nls_calendar				      STATIC  DYNAMIC
nls_time_format 			      STATIC  DYNAMIC
nls_timestamp_format			      STATIC  DYNAMIC
nls_time_tz_format			      STATIC  DYNAMIC
nls_timestamp_tz_format 		      STATIC  DYNAMIC
nls_dual_currency			      STATIC  DYNAMIC
nls_comp				      STATIC  DYNAMIC
nls_length_semantics			      DYNAMIC DYNAMIC
nls_nchar_conv_excp			      DYNAMIC DYNAMIC
disk_asynch_io				      STATIC  STATIC
tape_asynch_io				      STATIC  STATIC
dbwr_io_slaves				      STATIC  STATIC
backup_tape_io_slaves				      STATIC
fileio_network_adapters 		      STATIC  STATIC
filesystemio_options			      STATIC  STATIC
dnfs_batch_size 			      STATIC  STATIC
clonedb 				      STATIC  STATIC
instant_restore 			      STATIC  STATIC
http_proxy				      DYNAMIC STATIC
ssl_wallet				      DYNAMIC STATIC
ofs_threads				      DYNAMIC STATIC
resource_manager_cpu_allocation 	      DYNAMIC STATIC
resource_manager_plan			      DYNAMIC STATIC
db_performance_profile			      DYNAMIC STATIC
max_iops				      DYNAMIC STATIC
max_mbps				      DYNAMIC STATIC
max_idle_time				      DYNAMIC STATIC
max_idle_blocker_time			      DYNAMIC STATIC
cluster_interconnects			      STATIC  STATIC
file_mapping				      DYNAMIC STATIC
max_datapump_jobs_per_pdb		      DYNAMIC STATIC
max_datapump_parallel_per_job		      DYNAMIC STATIC
service_names				      DYNAMIC STATIC
threaded_execution			      STATIC  STATIC
clonedb_dir				      STATIC  STATIC
enable_dnfs_dispatcher			      STATIC  STATIC
gcs_server_processes			      STATIC  STATIC
active_instance_count			      STATIC  STATIC
instance_mode				      STATIC  STATIC
sga_target				      DYNAMIC STATIC
memory_target				      DYNAMIC STATIC
memory_max_target			      STATIC  STATIC
control_files				      STATIC  STATIC
db_file_name_convert			      STATIC  DYNAMIC
log_file_name_convert			      STATIC  STATIC
control_file_record_keep_time		      DYNAMIC STATIC
db_block_buffers			      STATIC  STATIC
db_block_checksum			      DYNAMIC STATIC
db_ultra_safe				      STATIC  STATIC
db_block_size				      STATIC  STATIC
db_cache_size				      DYNAMIC STATIC
db_2k_cache_size			      DYNAMIC STATIC
db_4k_cache_size			      DYNAMIC STATIC
db_8k_cache_size			      DYNAMIC STATIC
db_16k_cache_size			      DYNAMIC STATIC
db_32k_cache_size			      DYNAMIC STATIC
db_keep_cache_size			      DYNAMIC STATIC
db_recycle_cache_size			      DYNAMIC STATIC
memoptimize_pool_size			      DYNAMIC STATIC
db_big_table_cache_percent_target	      DYNAMIC STATIC
encrypt_new_tablespaces 		      DYNAMIC STATIC
db_writer_processes			      STATIC  STATIC
buffer_pool_keep			      STATIC  STATIC
buffer_pool_recycle			      STATIC  STATIC
db_flash_cache_file			      DYNAMIC STATIC
db_flash_cache_size			      DYNAMIC STATIC
db_cache_advice 			      DYNAMIC STATIC
compatible				      STATIC  STATIC
log_archive_dest_1			      DYNAMIC DYNAMIC
log_archive_dest_2			      DYNAMIC DYNAMIC
log_archive_dest_3			      DYNAMIC DYNAMIC
log_archive_dest_4			      DYNAMIC DYNAMIC
log_archive_dest_5			      DYNAMIC DYNAMIC
log_archive_dest_6			      DYNAMIC DYNAMIC
log_archive_dest_7			      DYNAMIC DYNAMIC
log_archive_dest_8			      DYNAMIC DYNAMIC
log_archive_dest_9			      DYNAMIC DYNAMIC
log_archive_dest_10			      DYNAMIC DYNAMIC
log_archive_dest_11			      DYNAMIC DYNAMIC
log_archive_dest_12			      DYNAMIC DYNAMIC
log_archive_dest_13			      DYNAMIC DYNAMIC
log_archive_dest_14			      DYNAMIC DYNAMIC
log_archive_dest_15			      DYNAMIC DYNAMIC
log_archive_dest_16			      DYNAMIC DYNAMIC
log_archive_dest_17			      DYNAMIC DYNAMIC
log_archive_dest_18			      DYNAMIC DYNAMIC
log_archive_dest_19			      DYNAMIC DYNAMIC
log_archive_dest_20			      DYNAMIC DYNAMIC
log_archive_dest_21			      DYNAMIC DYNAMIC
log_archive_dest_22			      DYNAMIC DYNAMIC
log_archive_dest_23			      DYNAMIC DYNAMIC
log_archive_dest_24			      DYNAMIC DYNAMIC
log_archive_dest_25			      DYNAMIC DYNAMIC
log_archive_dest_26			      DYNAMIC DYNAMIC
log_archive_dest_27			      DYNAMIC DYNAMIC
log_archive_dest_28			      DYNAMIC DYNAMIC
log_archive_dest_29			      DYNAMIC DYNAMIC
log_archive_dest_30			      DYNAMIC DYNAMIC
log_archive_dest_31			      DYNAMIC DYNAMIC
log_archive_dest_state_1		      DYNAMIC DYNAMIC
log_archive_dest_state_2		      DYNAMIC DYNAMIC
log_archive_dest_state_3		      DYNAMIC DYNAMIC
log_archive_dest_state_4		      DYNAMIC DYNAMIC
log_archive_dest_state_5		      DYNAMIC DYNAMIC
log_archive_dest_state_6		      DYNAMIC DYNAMIC
log_archive_dest_state_7		      DYNAMIC DYNAMIC
log_archive_dest_state_8		      DYNAMIC DYNAMIC
log_archive_dest_state_9		      DYNAMIC DYNAMIC
log_archive_dest_state_10		      DYNAMIC DYNAMIC
log_archive_dest_state_11		      DYNAMIC DYNAMIC
log_archive_dest_state_12		      DYNAMIC DYNAMIC
log_archive_dest_state_13		      DYNAMIC DYNAMIC
log_archive_dest_state_14		      DYNAMIC DYNAMIC
log_archive_dest_state_15		      DYNAMIC DYNAMIC
log_archive_dest_state_16		      DYNAMIC DYNAMIC
log_archive_dest_state_17		      DYNAMIC DYNAMIC
log_archive_dest_state_18		      DYNAMIC DYNAMIC
log_archive_dest_state_19		      DYNAMIC DYNAMIC
log_archive_dest_state_20		      DYNAMIC DYNAMIC
log_archive_dest_state_21		      DYNAMIC DYNAMIC
log_archive_dest_state_22		      DYNAMIC DYNAMIC
log_archive_dest_state_23		      DYNAMIC DYNAMIC
log_archive_dest_state_24		      DYNAMIC DYNAMIC
log_archive_dest_state_25		      DYNAMIC DYNAMIC
log_archive_dest_state_26		      DYNAMIC DYNAMIC
log_archive_dest_state_27		      DYNAMIC DYNAMIC
log_archive_dest_state_28		      DYNAMIC DYNAMIC
log_archive_dest_state_29		      DYNAMIC DYNAMIC
log_archive_dest_state_30		      DYNAMIC DYNAMIC
log_archive_dest_state_31		      DYNAMIC DYNAMIC
log_archive_start			      STATIC  STATIC
log_archive_dest			      DYNAMIC STATIC
log_archive_duplex_dest 		      DYNAMIC STATIC
log_archive_min_succeed_dest		      DYNAMIC DYNAMIC
fal_client				      DYNAMIC STATIC
fal_server				      DYNAMIC STATIC
log_archive_trace			      DYNAMIC STATIC
data_guard_sync_latency 		      DYNAMIC STATIC
log_archive_config			      DYNAMIC STATIC
log_archive_format			      STATIC  STATIC
data_guard_max_io_time			      DYNAMIC STATIC
data_guard_max_longio_time		      DYNAMIC STATIC
redo_transport_user			      DYNAMIC STATIC
log_archive_max_processes		      DYNAMIC STATIC
log_buffer				      STATIC  STATIC
log_checkpoint_interval 		      DYNAMIC STATIC
log_checkpoint_timeout			      DYNAMIC STATIC
archive_lag_target			      DYNAMIC STATIC
db_files				      STATIC  STATIC
db_file_multiblock_read_count		      DYNAMIC DYNAMIC
read_only_open_delayed			      STATIC  STATIC
cluster_database			      STATIC  STATIC
cluster_database_instances		      STATIC  STATIC
db_create_file_dest			      DYNAMIC DYNAMIC
db_create_online_log_dest_1		      DYNAMIC DYNAMIC
db_create_online_log_dest_2		      DYNAMIC DYNAMIC
db_create_online_log_dest_3		      DYNAMIC DYNAMIC
db_create_online_log_dest_4		      DYNAMIC DYNAMIC
db_create_online_log_dest_5		      DYNAMIC DYNAMIC
db_recovery_file_dest			      DYNAMIC STATIC
db_recovery_file_dest_size		      DYNAMIC STATIC
standby_file_management 		      DYNAMIC STATIC
db_unrecoverable_scn_tracking		      DYNAMIC DYNAMIC
thread					      DYNAMIC STATIC
enabled_PDBs_on_standby 		      DYNAMIC STATIC
fast_start_io_target			      DYNAMIC STATIC
fast_start_mttr_target			      DYNAMIC STATIC
log_checkpoints_to_alert		      DYNAMIC STATIC
db_lost_write_protect			      DYNAMIC STATIC
recovery_parallelism			      DYNAMIC STATIC
enable_goldengate_replication		      DYNAMIC STATIC
inmemory_adg_enabled			      DYNAMIC STATIC
db_flashback_retention_target		      DYNAMIC STATIC
data_transfer_cache_size		      DYNAMIC STATIC
enable_imc_with_mira			      DYNAMIC STATIC
adg_account_info_tracking		      STATIC  STATIC
adg_redirect_dml			      DYNAMIC STATIC
dml_locks				      STATIC  STATIC
replication_dependency_tracking 	      STATIC  STATIC
transactions				      STATIC  STATIC
transactions_per_rollback_segment	      STATIC  STATIC
temp_undo_enabled			      DYNAMIC DYNAMIC
rollback_segments			      STATIC  STATIC
undo_management 			      STATIC  STATIC
undo_tablespace 			      DYNAMIC STATIC
undo_retention				      DYNAMIC STATIC
fast_start_parallel_rollback		      DYNAMIC STATIC
resumable_timeout			      DYNAMIC DYNAMIC
instance_number 			      STATIC  STATIC
heat_map				      DYNAMIC DYNAMIC
inmemory_size				      DYNAMIC STATIC
inmemory_xmem_size			      DYNAMIC STATIC
inmemory_prefer_xmem_memcompress	      DYNAMIC STATIC
inmemory_prefer_xmem_priority		      DYNAMIC STATIC
allow_rowid_column_type 		      DYNAMIC DYNAMIC
db_block_checking			      DYNAMIC STATIC
recyclebin					      DYNAMIC
db_index_compression_inheritance	      DYNAMIC DYNAMIC
db_securefile				      DYNAMIC DYNAMIC
inmemory_clause_default 		      DYNAMIC DYNAMIC
inmemory_force				      DYNAMIC STATIC
inmemory_query				      DYNAMIC DYNAMIC
inmemory_expressions_usage		      DYNAMIC STATIC
inmemory_virtual_columns		      DYNAMIC STATIC
inmemory_max_populate_servers		      DYNAMIC STATIC
inmemory_trickle_repopulate_servers_percent   DYNAMIC STATIC
inmemory_optimized_arithmetic		      DYNAMIC STATIC
inmemory_automatic_level		      DYNAMIC STATIC
create_stored_outlines			      DYNAMIC DYNAMIC
serial_reuse				      STATIC  STATIC
ldap_directory_access			      DYNAMIC STATIC
ldap_directory_sysauth			      STATIC  STATIC
os_roles				      STATIC  STATIC
rdbms_server_dn 			      STATIC  STATIC
remote_os_authent			      STATIC  STATIC
remote_os_roles 			      STATIC  STATIC
sec_case_sensitive_logon		      DYNAMIC STATIC
remote_login_passwordfile		      STATIC  STATIC
license_max_users			      DYNAMIC STATIC
audit_sys_operations			      STATIC  STATIC
DBFIPS_140				      STATIC  STATIC
one_step_plugin_for_pdb_with_tde	      DYNAMIC STATIC
external_keystore_credential_location	      STATIC  STATIC
unified_audit_sga_queue_size		      STATIC  STATIC
wallet_root				      STATIC  STATIC
tde_configuration			      DYNAMIC STATIC
db_domain				      STATIC  STATIC
global_names				      DYNAMIC DYNAMIC
distributed_lock_timeout		      STATIC  STATIC
commit_point_strength			      STATIC  STATIC
global_txn_processes			      DYNAMIC STATIC
instance_name				      STATIC  STATIC
dispatchers				      DYNAMIC STATIC
shared_servers				      DYNAMIC STATIC
max_shared_servers			      DYNAMIC STATIC
max_dispatchers 			      DYNAMIC STATIC
circuits				      DYNAMIC STATIC
shared_server_sessions			      DYNAMIC STATIC
use_dedicated_broker			      DYNAMIC STATIC
connection_brokers			      DYNAMIC STATIC
local_listener				      DYNAMIC STATIC
forward_listener			      DYNAMIC STATIC
remote_listener 			      DYNAMIC STATIC
listener_networks			      DYNAMIC STATIC
cursor_space_for_time			      STATIC  STATIC
session_cached_cursors				      DYNAMIC
remote_dependencies_mode		      DYNAMIC DYNAMIC
smtp_out_server 			      DYNAMIC DYNAMIC
plsql_v2_compatibility			      DYNAMIC DYNAMIC
plsql_warnings				      DYNAMIC DYNAMIC
plsql_code_type 			      DYNAMIC DYNAMIC
plsql_debug				      DYNAMIC DYNAMIC
plsql_optimize_level			      DYNAMIC DYNAMIC
plsql_ccflags				      DYNAMIC DYNAMIC
plscope_settings			      DYNAMIC DYNAMIC
permit_92_wrap_format			      STATIC  STATIC
java_jit_enabled			      DYNAMIC DYNAMIC
java_restrict				      STATIC  STATIC
job_queue_processes			      DYNAMIC STATIC
scheduler_follow_pdbtz			      DYNAMIC STATIC
parallel_min_percent			      STATIC  DYNAMIC
create_bitmap_area_size 		      STATIC  STATIC
bitmap_merge_area_size			      STATIC  STATIC
cursor_sharing				      DYNAMIC DYNAMIC
result_cache_mode			      DYNAMIC DYNAMIC
parallel_min_servers			      DYNAMIC STATIC
parallel_max_servers			      DYNAMIC STATIC
parallel_instance_group 		      DYNAMIC DYNAMIC
parallel_execution_message_size 	      STATIC  STATIC
hash_area_size				      STATIC  DYNAMIC
private_temp_table_prefix			      STATIC
result_cache_max_size			      DYNAMIC STATIC
result_cache_max_result 		      DYNAMIC STATIC
result_cache_remote_expiration		      DYNAMIC DYNAMIC
shadow_core_dump			      DYNAMIC STATIC
background_core_dump			      DYNAMIC STATIC
background_dump_dest			      DYNAMIC STATIC
user_dump_dest				      DYNAMIC STATIC
core_dump_dest				      DYNAMIC STATIC
audit_file_dest 				      STATIC
audit_syslog_level			      STATIC  STATIC
unified_audit_systemlog 		      STATIC  STATIC
unified_audit_common_systemlog		      STATIC  STATIC
resource_manage_goldengate		      DYNAMIC STATIC
object_cache_optimal_size			      DYNAMIC
object_cache_max_size_percent			      DYNAMIC
lob_signature_enable			      DYNAMIC STATIC
session_max_open_files			      STATIC  STATIC
open_links				      STATIC  STATIC
open_links_per_instance 		      STATIC  STATIC
commit_write				      DYNAMIC DYNAMIC
commit_wait				      DYNAMIC DYNAMIC
commit_logging				      DYNAMIC DYNAMIC
optimizer_features_enable		      DYNAMIC DYNAMIC
fixed_date				      DYNAMIC STATIC
audit_trail				      STATIC  STATIC
sort_area_size					      DYNAMIC
sort_area_retained_size 			      DYNAMIC
cell_offload_processing 		      DYNAMIC DYNAMIC
cell_offload_decryption 		      DYNAMIC STATIC
cell_offload_parameters 		      DYNAMIC DYNAMIC
cell_offload_compaction 		      DYNAMIC DYNAMIC
cell_offload_plan_display		      DYNAMIC DYNAMIC
db_name 				      STATIC  STATIC
db_unique_name				      STATIC  STATIC
open_cursors				      DYNAMIC STATIC
ifile					      STATIC  STATIC
sql_trace				      DYNAMIC DYNAMIC
os_authent_prefix			      STATIC  STATIC
optimizer_mode				      DYNAMIC DYNAMIC
sql92_security				      STATIC  STATIC
blank_trimming				      STATIC  STATIC
star_transformation_enabled		      DYNAMIC DYNAMIC
parallel_degree_policy			      DYNAMIC DYNAMIC
parallel_adaptive_multi_user		      DYNAMIC STATIC
parallel_threads_per_cpu		      DYNAMIC STATIC
optimizer_index_cost_adj		      DYNAMIC DYNAMIC
optimizer_index_caching 		      DYNAMIC DYNAMIC
query_rewrite_enabled			      DYNAMIC DYNAMIC
query_rewrite_integrity 		      DYNAMIC DYNAMIC
pga_aggregate_target			      DYNAMIC STATIC
workarea_size_policy			      DYNAMIC DYNAMIC
optimizer_dynamic_sampling		      DYNAMIC DYNAMIC
statistics_level			      DYNAMIC DYNAMIC
cursor_bind_capture_destination 	      DYNAMIC DYNAMIC
skip_unusable_indexes			      DYNAMIC DYNAMIC
optimizer_ignore_hints			      DYNAMIC DYNAMIC
optimizer_secure_view_merging		      DYNAMIC STATIC
ddl_lock_timeout			      DYNAMIC DYNAMIC
deferred_segment_creation		      DYNAMIC DYNAMIC
optimizer_use_pending_statistics	      DYNAMIC DYNAMIC
optimizer_capture_sql_plan_baselines	      DYNAMIC DYNAMIC
optimizer_use_sql_plan_baselines	      DYNAMIC DYNAMIC
parallel_min_time_threshold		      DYNAMIC DYNAMIC
parallel_degree_limit			      DYNAMIC DYNAMIC
parallel_force_local			      DYNAMIC DYNAMIC
optimizer_use_invisible_indexes 	      DYNAMIC DYNAMIC
dst_upgrade_insert_conv 		      DYNAMIC DYNAMIC
parallel_servers_target 		      DYNAMIC STATIC
max_string_size 			      DYNAMIC STATIC
optimizer_adaptive_reporting_only	      DYNAMIC DYNAMIC
optimizer_adaptive_plans		      DYNAMIC DYNAMIC
optimizer_inmemory_aware		      DYNAMIC DYNAMIC
cursor_invalidation			      DYNAMIC DYNAMIC
approx_for_aggregation			      DYNAMIC DYNAMIC
approx_for_count_distinct		      DYNAMIC DYNAMIC
approx_for_percentile			      DYNAMIC DYNAMIC
optimizer_adaptive_statistics		      DYNAMIC DYNAMIC
optimizer_ignore_parallel_hints 	      DYNAMIC DYNAMIC
parallel_min_degree			      DYNAMIC DYNAMIC
sec_protocol_error_trace_action 	      DYNAMIC STATIC
sec_protocol_error_further_action	      DYNAMIC STATIC
sec_max_failed_login_attempts		      STATIC  STATIC
sec_return_server_release_banner	      STATIC  STATIC
enable_ddl_logging			      DYNAMIC DYNAMIC
client_result_cache_size		      STATIC  STATIC
client_result_cache_lag 		      STATIC  STATIC
outbound_dblink_protocols		      DYNAMIC STATIC
allow_global_dblinks			      DYNAMIC STATIC
client_statistics_level 			      STATIC
aq_tm_processes 			      DYNAMIC DYNAMIC
hs_autoregister 			      DYNAMIC STATIC
xml_db_events				      DYNAMIC DYNAMIC
dg_broker_start 			      DYNAMIC STATIC
dg_broker_config_file1			      DYNAMIC STATIC
dg_broker_config_file2			      DYNAMIC STATIC
olap_page_pool_size				      DYNAMIC
asm_diskstring				      DYNAMIC DYNAMIC
asm_preferred_read_failure_groups	      DYNAMIC STATIC
control_management_pack_access		      DYNAMIC STATIC
awr_pdb_autoflush_enabled		      DYNAMIC STATIC
awr_pdb_max_parallel_slaves		      DYNAMIC STATIC
awr_snapshot_time_offset		      DYNAMIC STATIC
sqltune_category			      DYNAMIC DYNAMIC
autotask_max_active_pdbs		      DYNAMIC STATIC
enable_automatic_maintenance_pdb	      DYNAMIC STATIC
spatial_vector_acceleration		      DYNAMIC DYNAMIC
diagnostic_dest 			      DYNAMIC STATIC
tracefile_identifier			      STATIC  DYNAMIC
max_dump_file_size			      DYNAMIC DYNAMIC
trace_enabled				      DYNAMIC STATIC
cell_offloadgroup_name			      DYNAMIC DYNAMIC
enable_pluggable_database		      STATIC  STATIC
pdb_os_credential			      STATIC  STATIC
pdb_file_name_convert			      DYNAMIC DYNAMIC
noncdb_compatible			      STATIC  STATIC
common_user_prefix			      STATIC  STATIC
target_pdbs				      STATIC  STATIC
max_pdbs				      DYNAMIC STATIC
cdb_cluster				      STATIC  STATIC
cdb_cluster_name			      STATIC  STATIC
standby_pdb_source_file_directory	      DYNAMIC STATIC
standby_pdb_source_file_dblink		      DYNAMIC STATIC
remote_recovery_file_dest		      DYNAMIC STATIC
disable_pdb_feature			      DYNAMIC STATIC
containers_parallel_degree		      DYNAMIC DYNAMIC
default_sharing 			      DYNAMIC DYNAMIC
pdb_lockdown				      DYNAMIC DYNAMIC
pdb_template				      DYNAMIC DYNAMIC
shrd_dupl_table_refresh_rate		      DYNAMIC STATIC
multishard_query_data_consistency	      DYNAMIC DYNAMIC
multishard_query_partial_results	      DYNAMIC DYNAMIC

445 rows selected.

SQL> 
SQL> select name,
CASE WHEN ISSYS_MODIFIABLE = 'FALSE' THEN 'STATIC' 
when ISSYS_MODIFIABLE = 'IMMEDIATE' then 'DYNAMIC' end as instance_level,
case when ISSES_MODIFIABLE = 'FALSE' THEN 'STATIC' when ISSES_MODIFIABLE ='TRUE' THEN 'DYNAMIC' end as session_level 
from v$parameter where upper(name) = 'OPEN_CURSORS'  2    3    4    5  ;

NAME					      INSTANC SESSION
--------------------------------------------- ------- -------
open_cursors				      DYNAMIC STATIC

SQL> show parameter spfile

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
spfile				     string	 /u01/app/oracle/product/19.0.0
						 .0/dbhome_1/dbs/spfilehrms.ora
SQL> create pfile from spfile;

File created.

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> show parameter open_                

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
open_cursors			     integer	 300
open_links			     integer	 4
open_links_per_instance 	     integer	 4
read_only_open_delayed		     boolean	 FALSE
session_max_open_files		     integer	 10
SQL> alter system set open_cursors=350;

System altered.

SQL> show parameter open_c

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
open_cursors			     integer	 350
SQL> alter system set open_cursors = 375 scope = memory;

System altered.

SQL> startup force;
ORACLE instance started.

Total System Global Area 1778381840 bytes
Fixed Size		    8897552 bytes
Variable Size		  419430400 bytes
Database Buffers	 1342177280 bytes
Redo Buffers		    7876608 bytes
Database mounted.
Database opened.
SQL> show parameter open_c

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
open_cursors			     integer	 350
SQL> alter system set open_cursors = 400 scope = spfile;

System altered.

SQL> show parameter open_C

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
open_cursors			     integer	 350
SQL> create pfile from spfile;

File created.

SQL> select name,
CASE WHEN ISSYS_MODIFIABLE = 'FALSE' THEN 'STATIC' 
when ISSYS_MODIFIABLE = 'IMMEDIATE' then 'DYNAMIC' end as instance_level,
case when ISSES_MODIFIABLE = 'FALSE' THEN 'STATIC' when ISSES_MODIFIABLE ='TRUE' THEN 'DYNAMIC' end as session_level 
from v$parameter  2    3    4    5  ;

NAME					      INSTANC SESSION
--------------------------------------------- ------- -------
lock_name_space 			      STATIC  STATIC
processes				      STATIC  STATIC
sessions				      DYNAMIC STATIC
timed_statistics			      DYNAMIC DYNAMIC
timed_os_statistics			      DYNAMIC DYNAMIC
resource_limit				      DYNAMIC STATIC
license_max_sessions			      DYNAMIC STATIC
license_sessions_warning		      DYNAMIC STATIC
long_module_action			      DYNAMIC STATIC
standby_db_preserve_states		      STATIC  STATIC
instance_abort_delay_time		      DYNAMIC STATIC
cpu_count				      DYNAMIC STATIC
cpu_min_count				      DYNAMIC STATIC
instance_groups 			      STATIC  STATIC
event					      STATIC  STATIC
sga_max_size				      STATIC  STATIC
use_large_pages 			      STATIC  STATIC
pre_page_sga				      STATIC  STATIC
shared_memory_address			      STATIC  STATIC
hi_shared_memory_address		      STATIC  STATIC
lock_sga				      STATIC  STATIC
processor_group_name			      STATIC  STATIC
allow_group_access_to_sga		      STATIC  STATIC
sga_min_size				      DYNAMIC STATIC
shared_pool_size			      DYNAMIC STATIC
large_pool_size 			      DYNAMIC STATIC
java_pool_size				      DYNAMIC STATIC
streams_pool_size			      DYNAMIC STATIC
shared_pool_reserved_size		      STATIC  STATIC
java_soft_sessionspace_limit		      STATIC  STATIC
java_max_sessionspace_size		      STATIC  STATIC
pga_aggregate_limit			      DYNAMIC STATIC
spfile					      DYNAMIC STATIC
instance_type				      STATIC  STATIC
uniform_log_timestamp_format		      DYNAMIC STATIC
nls_language				      STATIC  DYNAMIC
nls_territory				      STATIC  DYNAMIC
nls_sort				      STATIC  DYNAMIC
nls_date_language			      STATIC  DYNAMIC
nls_date_format 			      STATIC  DYNAMIC
nls_currency				      STATIC  DYNAMIC
nls_numeric_characters			      STATIC  DYNAMIC
nls_iso_currency			      STATIC  DYNAMIC
nls_calendar				      STATIC  DYNAMIC
nls_time_format 			      STATIC  DYNAMIC
nls_timestamp_format			      STATIC  DYNAMIC
nls_time_tz_format			      STATIC  DYNAMIC
nls_timestamp_tz_format 		      STATIC  DYNAMIC
nls_dual_currency			      STATIC  DYNAMIC
nls_comp				      STATIC  DYNAMIC
nls_length_semantics			      DYNAMIC DYNAMIC
nls_nchar_conv_excp			      DYNAMIC DYNAMIC
disk_asynch_io				      STATIC  STATIC
tape_asynch_io				      STATIC  STATIC
dbwr_io_slaves				      STATIC  STATIC
backup_tape_io_slaves				      STATIC
fileio_network_adapters 		      STATIC  STATIC
filesystemio_options			      STATIC  STATIC
dnfs_batch_size 			      STATIC  STATIC
clonedb 				      STATIC  STATIC
instant_restore 			      STATIC  STATIC
http_proxy				      DYNAMIC STATIC
ssl_wallet				      DYNAMIC STATIC
ofs_threads				      DYNAMIC STATIC
resource_manager_cpu_allocation 	      DYNAMIC STATIC
resource_manager_plan			      DYNAMIC STATIC
db_performance_profile			      DYNAMIC STATIC
max_iops				      DYNAMIC STATIC
max_mbps				      DYNAMIC STATIC
max_idle_time				      DYNAMIC STATIC
max_idle_blocker_time			      DYNAMIC STATIC
cluster_interconnects			      STATIC  STATIC
file_mapping				      DYNAMIC STATIC
max_datapump_jobs_per_pdb		      DYNAMIC STATIC
max_datapump_parallel_per_job		      DYNAMIC STATIC
service_names				      DYNAMIC STATIC
threaded_execution			      STATIC  STATIC
clonedb_dir				      STATIC  STATIC
enable_dnfs_dispatcher			      STATIC  STATIC
gcs_server_processes			      STATIC  STATIC
active_instance_count			      STATIC  STATIC
instance_mode				      STATIC  STATIC
sga_target				      DYNAMIC STATIC
memory_target				      DYNAMIC STATIC
memory_max_target			      STATIC  STATIC
control_files				      STATIC  STATIC
db_file_name_convert			      STATIC  DYNAMIC
log_file_name_convert			      STATIC  STATIC
control_file_record_keep_time		      DYNAMIC STATIC
db_block_buffers			      STATIC  STATIC
db_block_checksum			      DYNAMIC STATIC
db_ultra_safe				      STATIC  STATIC
db_block_size				      STATIC  STATIC
db_cache_size				      DYNAMIC STATIC
db_2k_cache_size			      DYNAMIC STATIC
db_4k_cache_size			      DYNAMIC STATIC
db_8k_cache_size			      DYNAMIC STATIC
db_16k_cache_size			      DYNAMIC STATIC
db_32k_cache_size			      DYNAMIC STATIC
db_keep_cache_size			      DYNAMIC STATIC
db_recycle_cache_size			      DYNAMIC STATIC
memoptimize_pool_size			      DYNAMIC STATIC
db_big_table_cache_percent_target	      DYNAMIC STATIC
encrypt_new_tablespaces 		      DYNAMIC STATIC
db_writer_processes			      STATIC  STATIC
buffer_pool_keep			      STATIC  STATIC
buffer_pool_recycle			      STATIC  STATIC
db_flash_cache_file			      DYNAMIC STATIC
db_flash_cache_size			      DYNAMIC STATIC
db_cache_advice 			      DYNAMIC STATIC
compatible				      STATIC  STATIC
log_archive_dest_1			      DYNAMIC DYNAMIC
log_archive_dest_2			      DYNAMIC DYNAMIC
log_archive_dest_3			      DYNAMIC DYNAMIC
log_archive_dest_4			      DYNAMIC DYNAMIC
log_archive_dest_5			      DYNAMIC DYNAMIC
log_archive_dest_6			      DYNAMIC DYNAMIC
log_archive_dest_7			      DYNAMIC DYNAMIC
log_archive_dest_8			      DYNAMIC DYNAMIC
log_archive_dest_9			      DYNAMIC DYNAMIC
log_archive_dest_10			      DYNAMIC DYNAMIC
log_archive_dest_11			      DYNAMIC DYNAMIC
log_archive_dest_12			      DYNAMIC DYNAMIC
log_archive_dest_13			      DYNAMIC DYNAMIC
log_archive_dest_14			      DYNAMIC DYNAMIC
log_archive_dest_15			      DYNAMIC DYNAMIC
log_archive_dest_16			      DYNAMIC DYNAMIC
log_archive_dest_17			      DYNAMIC DYNAMIC
log_archive_dest_18			      DYNAMIC DYNAMIC
log_archive_dest_19			      DYNAMIC DYNAMIC
log_archive_dest_20			      DYNAMIC DYNAMIC
log_archive_dest_21			      DYNAMIC DYNAMIC
log_archive_dest_22			      DYNAMIC DYNAMIC
log_archive_dest_23			      DYNAMIC DYNAMIC
log_archive_dest_24			      DYNAMIC DYNAMIC
log_archive_dest_25			      DYNAMIC DYNAMIC
log_archive_dest_26			      DYNAMIC DYNAMIC
log_archive_dest_27			      DYNAMIC DYNAMIC
log_archive_dest_28			      DYNAMIC DYNAMIC
log_archive_dest_29			      DYNAMIC DYNAMIC
log_archive_dest_30			      DYNAMIC DYNAMIC
log_archive_dest_31			      DYNAMIC DYNAMIC
log_archive_dest_state_1		      DYNAMIC DYNAMIC
log_archive_dest_state_2		      DYNAMIC DYNAMIC
log_archive_dest_state_3		      DYNAMIC DYNAMIC
log_archive_dest_state_4		      DYNAMIC DYNAMIC
log_archive_dest_state_5		      DYNAMIC DYNAMIC
log_archive_dest_state_6		      DYNAMIC DYNAMIC
log_archive_dest_state_7		      DYNAMIC DYNAMIC
log_archive_dest_state_8		      DYNAMIC DYNAMIC
log_archive_dest_state_9		      DYNAMIC DYNAMIC
log_archive_dest_state_10		      DYNAMIC DYNAMIC
log_archive_dest_state_11		      DYNAMIC DYNAMIC
log_archive_dest_state_12		      DYNAMIC DYNAMIC
log_archive_dest_state_13		      DYNAMIC DYNAMIC
log_archive_dest_state_14		      DYNAMIC DYNAMIC
log_archive_dest_state_15		      DYNAMIC DYNAMIC
log_archive_dest_state_16		      DYNAMIC DYNAMIC
log_archive_dest_state_17		      DYNAMIC DYNAMIC
log_archive_dest_state_18		      DYNAMIC DYNAMIC
log_archive_dest_state_19		      DYNAMIC DYNAMIC
log_archive_dest_state_20		      DYNAMIC DYNAMIC
log_archive_dest_state_21		      DYNAMIC DYNAMIC
log_archive_dest_state_22		      DYNAMIC DYNAMIC
log_archive_dest_state_23		      DYNAMIC DYNAMIC
log_archive_dest_state_24		      DYNAMIC DYNAMIC
log_archive_dest_state_25		      DYNAMIC DYNAMIC
log_archive_dest_state_26		      DYNAMIC DYNAMIC
log_archive_dest_state_27		      DYNAMIC DYNAMIC
log_archive_dest_state_28		      DYNAMIC DYNAMIC
log_archive_dest_state_29		      DYNAMIC DYNAMIC
log_archive_dest_state_30		      DYNAMIC DYNAMIC
log_archive_dest_state_31		      DYNAMIC DYNAMIC
log_archive_start			      STATIC  STATIC
log_archive_dest			      DYNAMIC STATIC
log_archive_duplex_dest 		      DYNAMIC STATIC
log_archive_min_succeed_dest		      DYNAMIC DYNAMIC
fal_client				      DYNAMIC STATIC
fal_server				      DYNAMIC STATIC
log_archive_trace			      DYNAMIC STATIC
data_guard_sync_latency 		      DYNAMIC STATIC
log_archive_config			      DYNAMIC STATIC
log_archive_format			      STATIC  STATIC
data_guard_max_io_time			      DYNAMIC STATIC
data_guard_max_longio_time		      DYNAMIC STATIC
redo_transport_user			      DYNAMIC STATIC
log_archive_max_processes		      DYNAMIC STATIC
log_buffer				      STATIC  STATIC
log_checkpoint_interval 		      DYNAMIC STATIC
log_checkpoint_timeout			      DYNAMIC STATIC
archive_lag_target			      DYNAMIC STATIC
db_files				      STATIC  STATIC
db_file_multiblock_read_count		      DYNAMIC DYNAMIC
read_only_open_delayed			      STATIC  STATIC
cluster_database			      STATIC  STATIC
cluster_database_instances		      STATIC  STATIC
db_create_file_dest			      DYNAMIC DYNAMIC
db_create_online_log_dest_1		      DYNAMIC DYNAMIC
db_create_online_log_dest_2		      DYNAMIC DYNAMIC
db_create_online_log_dest_3		      DYNAMIC DYNAMIC
db_create_online_log_dest_4		      DYNAMIC DYNAMIC
db_create_online_log_dest_5		      DYNAMIC DYNAMIC
db_recovery_file_dest			      DYNAMIC STATIC
db_recovery_file_dest_size		      DYNAMIC STATIC
standby_file_management 		      DYNAMIC STATIC
db_unrecoverable_scn_tracking		      DYNAMIC DYNAMIC
thread					      DYNAMIC STATIC
enabled_PDBs_on_standby 		      DYNAMIC STATIC
fast_start_io_target			      DYNAMIC STATIC
fast_start_mttr_target			      DYNAMIC STATIC
log_checkpoints_to_alert		      DYNAMIC STATIC
db_lost_write_protect			      DYNAMIC STATIC
recovery_parallelism			      DYNAMIC STATIC
enable_goldengate_replication		      DYNAMIC STATIC
inmemory_adg_enabled			      DYNAMIC STATIC
db_flashback_retention_target		      DYNAMIC STATIC
data_transfer_cache_size		      DYNAMIC STATIC
enable_imc_with_mira			      DYNAMIC STATIC
adg_account_info_tracking		      STATIC  STATIC
adg_redirect_dml			      DYNAMIC STATIC
dml_locks				      STATIC  STATIC
replication_dependency_tracking 	      STATIC  STATIC
transactions				      STATIC  STATIC
transactions_per_rollback_segment	      STATIC  STATIC
temp_undo_enabled			      DYNAMIC DYNAMIC
rollback_segments			      STATIC  STATIC
undo_management 			      STATIC  STATIC
undo_tablespace 			      DYNAMIC STATIC
undo_retention				      DYNAMIC STATIC
fast_start_parallel_rollback		      DYNAMIC STATIC
resumable_timeout			      DYNAMIC DYNAMIC
instance_number 			      STATIC  STATIC
heat_map				      DYNAMIC DYNAMIC
inmemory_size				      DYNAMIC STATIC
inmemory_xmem_size			      DYNAMIC STATIC
inmemory_prefer_xmem_memcompress	      DYNAMIC STATIC
inmemory_prefer_xmem_priority		      DYNAMIC STATIC
allow_rowid_column_type 		      DYNAMIC DYNAMIC
db_block_checking			      DYNAMIC STATIC
recyclebin					      DYNAMIC
db_index_compression_inheritance	      DYNAMIC DYNAMIC
db_securefile				      DYNAMIC DYNAMIC
inmemory_clause_default 		      DYNAMIC DYNAMIC
inmemory_force				      DYNAMIC STATIC
inmemory_query				      DYNAMIC DYNAMIC
inmemory_expressions_usage		      DYNAMIC STATIC
inmemory_virtual_columns		      DYNAMIC STATIC
inmemory_max_populate_servers		      DYNAMIC STATIC
inmemory_trickle_repopulate_servers_percent   DYNAMIC STATIC
inmemory_optimized_arithmetic		      DYNAMIC STATIC
inmemory_automatic_level		      DYNAMIC STATIC
create_stored_outlines			      DYNAMIC DYNAMIC
serial_reuse				      STATIC  STATIC
ldap_directory_access			      DYNAMIC STATIC
ldap_directory_sysauth			      STATIC  STATIC
os_roles				      STATIC  STATIC
rdbms_server_dn 			      STATIC  STATIC
remote_os_authent			      STATIC  STATIC
remote_os_roles 			      STATIC  STATIC
sec_case_sensitive_logon		      DYNAMIC STATIC
remote_login_passwordfile		      STATIC  STATIC
license_max_users			      DYNAMIC STATIC
audit_sys_operations			      STATIC  STATIC
DBFIPS_140				      STATIC  STATIC
one_step_plugin_for_pdb_with_tde	      DYNAMIC STATIC
external_keystore_credential_location	      STATIC  STATIC
unified_audit_sga_queue_size		      STATIC  STATIC
wallet_root				      STATIC  STATIC
tde_configuration			      DYNAMIC STATIC
db_domain				      STATIC  STATIC
global_names				      DYNAMIC DYNAMIC
distributed_lock_timeout		      STATIC  STATIC
commit_point_strength			      STATIC  STATIC
global_txn_processes			      DYNAMIC STATIC
instance_name				      STATIC  STATIC
dispatchers				      DYNAMIC STATIC
shared_servers				      DYNAMIC STATIC
max_shared_servers			      DYNAMIC STATIC
max_dispatchers 			      DYNAMIC STATIC
circuits				      DYNAMIC STATIC
shared_server_sessions			      DYNAMIC STATIC
use_dedicated_broker			      DYNAMIC STATIC
connection_brokers			      DYNAMIC STATIC
local_listener				      DYNAMIC STATIC
forward_listener			      DYNAMIC STATIC
remote_listener 			      DYNAMIC STATIC
listener_networks			      DYNAMIC STATIC
cursor_space_for_time			      STATIC  STATIC
session_cached_cursors				      DYNAMIC
remote_dependencies_mode		      DYNAMIC DYNAMIC
smtp_out_server 			      DYNAMIC DYNAMIC
plsql_v2_compatibility			      DYNAMIC DYNAMIC
plsql_warnings				      DYNAMIC DYNAMIC
plsql_code_type 			      DYNAMIC DYNAMIC
plsql_debug				      DYNAMIC DYNAMIC
plsql_optimize_level			      DYNAMIC DYNAMIC
plsql_ccflags				      DYNAMIC DYNAMIC
plscope_settings			      DYNAMIC DYNAMIC
permit_92_wrap_format			      STATIC  STATIC
java_jit_enabled			      DYNAMIC DYNAMIC
java_restrict				      STATIC  STATIC
job_queue_processes			      DYNAMIC STATIC
scheduler_follow_pdbtz			      DYNAMIC STATIC
parallel_min_percent			      STATIC  DYNAMIC
create_bitmap_area_size 		      STATIC  STATIC
bitmap_merge_area_size			      STATIC  STATIC
cursor_sharing				      DYNAMIC DYNAMIC
result_cache_mode			      DYNAMIC DYNAMIC
parallel_min_servers			      DYNAMIC STATIC
parallel_max_servers			      DYNAMIC STATIC
parallel_instance_group 		      DYNAMIC DYNAMIC
parallel_execution_message_size 	      STATIC  STATIC
hash_area_size				      STATIC  DYNAMIC
private_temp_table_prefix			      STATIC
result_cache_max_size			      DYNAMIC STATIC
result_cache_max_result 		      DYNAMIC STATIC
result_cache_remote_expiration		      DYNAMIC DYNAMIC
shadow_core_dump			      DYNAMIC STATIC
background_core_dump			      DYNAMIC STATIC
background_dump_dest			      DYNAMIC STATIC
user_dump_dest				      DYNAMIC STATIC
core_dump_dest				      DYNAMIC STATIC
audit_file_dest 				      STATIC
audit_syslog_level			      STATIC  STATIC
unified_audit_systemlog 		      STATIC  STATIC
unified_audit_common_systemlog		      STATIC  STATIC
resource_manage_goldengate		      DYNAMIC STATIC
object_cache_optimal_size			      DYNAMIC
object_cache_max_size_percent			      DYNAMIC
lob_signature_enable			      DYNAMIC STATIC
session_max_open_files			      STATIC  STATIC
open_links				      STATIC  STATIC
open_links_per_instance 		      STATIC  STATIC
commit_write				      DYNAMIC DYNAMIC
commit_wait				      DYNAMIC DYNAMIC
commit_logging				      DYNAMIC DYNAMIC
optimizer_features_enable		      DYNAMIC DYNAMIC
fixed_date				      DYNAMIC STATIC
audit_trail				      STATIC  STATIC
sort_area_size					      DYNAMIC
sort_area_retained_size 			      DYNAMIC
cell_offload_processing 		      DYNAMIC DYNAMIC
cell_offload_decryption 		      DYNAMIC STATIC
cell_offload_parameters 		      DYNAMIC DYNAMIC
cell_offload_compaction 		      DYNAMIC DYNAMIC
cell_offload_plan_display		      DYNAMIC DYNAMIC
db_name 				      STATIC  STATIC
db_unique_name				      STATIC  STATIC
open_cursors				      DYNAMIC STATIC
ifile					      STATIC  STATIC
sql_trace				      DYNAMIC DYNAMIC
os_authent_prefix			      STATIC  STATIC
optimizer_mode				      DYNAMIC DYNAMIC
sql92_security				      STATIC  STATIC
blank_trimming				      STATIC  STATIC
star_transformation_enabled		      DYNAMIC DYNAMIC
parallel_degree_policy			      DYNAMIC DYNAMIC
parallel_adaptive_multi_user		      DYNAMIC STATIC
parallel_threads_per_cpu		      DYNAMIC STATIC
optimizer_index_cost_adj		      DYNAMIC DYNAMIC
optimizer_index_caching 		      DYNAMIC DYNAMIC
query_rewrite_enabled			      DYNAMIC DYNAMIC
query_rewrite_integrity 		      DYNAMIC DYNAMIC
pga_aggregate_target			      DYNAMIC STATIC
workarea_size_policy			      DYNAMIC DYNAMIC
optimizer_dynamic_sampling		      DYNAMIC DYNAMIC
statistics_level			      DYNAMIC DYNAMIC
cursor_bind_capture_destination 	      DYNAMIC DYNAMIC
skip_unusable_indexes			      DYNAMIC DYNAMIC
optimizer_ignore_hints			      DYNAMIC DYNAMIC
optimizer_secure_view_merging		      DYNAMIC STATIC
ddl_lock_timeout			      DYNAMIC DYNAMIC
deferred_segment_creation		      DYNAMIC DYNAMIC
optimizer_use_pending_statistics	      DYNAMIC DYNAMIC
optimizer_capture_sql_plan_baselines	      DYNAMIC DYNAMIC
optimizer_use_sql_plan_baselines	      DYNAMIC DYNAMIC
parallel_min_time_threshold		      DYNAMIC DYNAMIC
parallel_degree_limit			      DYNAMIC DYNAMIC
parallel_force_local			      DYNAMIC DYNAMIC
optimizer_use_invisible_indexes 	      DYNAMIC DYNAMIC
dst_upgrade_insert_conv 		      DYNAMIC DYNAMIC
parallel_servers_target 		      DYNAMIC STATIC
max_string_size 			      DYNAMIC STATIC
optimizer_adaptive_reporting_only	      DYNAMIC DYNAMIC
optimizer_adaptive_plans		      DYNAMIC DYNAMIC
optimizer_inmemory_aware		      DYNAMIC DYNAMIC
cursor_invalidation			      DYNAMIC DYNAMIC
approx_for_aggregation			      DYNAMIC DYNAMIC
approx_for_count_distinct		      DYNAMIC DYNAMIC
approx_for_percentile			      DYNAMIC DYNAMIC
optimizer_adaptive_statistics		      DYNAMIC DYNAMIC
optimizer_ignore_parallel_hints 	      DYNAMIC DYNAMIC
parallel_min_degree			      DYNAMIC DYNAMIC
sec_protocol_error_trace_action 	      DYNAMIC STATIC
sec_protocol_error_further_action	      DYNAMIC STATIC
sec_max_failed_login_attempts		      STATIC  STATIC
sec_return_server_release_banner	      STATIC  STATIC
enable_ddl_logging			      DYNAMIC DYNAMIC
client_result_cache_size		      STATIC  STATIC
client_result_cache_lag 		      STATIC  STATIC
outbound_dblink_protocols		      DYNAMIC STATIC
allow_global_dblinks			      DYNAMIC STATIC
client_statistics_level 			      STATIC
aq_tm_processes 			      DYNAMIC DYNAMIC
hs_autoregister 			      DYNAMIC STATIC
xml_db_events				      DYNAMIC DYNAMIC
dg_broker_start 			      DYNAMIC STATIC
dg_broker_config_file1			      DYNAMIC STATIC
dg_broker_config_file2			      DYNAMIC STATIC
olap_page_pool_size				      DYNAMIC
asm_diskstring				      DYNAMIC DYNAMIC
asm_preferred_read_failure_groups	      DYNAMIC STATIC
control_management_pack_access		      DYNAMIC STATIC
awr_pdb_autoflush_enabled		      DYNAMIC STATIC
awr_pdb_max_parallel_slaves		      DYNAMIC STATIC
awr_snapshot_time_offset		      DYNAMIC STATIC
sqltune_category			      DYNAMIC DYNAMIC
autotask_max_active_pdbs		      DYNAMIC STATIC
enable_automatic_maintenance_pdb	      DYNAMIC STATIC
spatial_vector_acceleration		      DYNAMIC DYNAMIC
diagnostic_dest 			      DYNAMIC STATIC
tracefile_identifier			      STATIC  DYNAMIC
max_dump_file_size			      DYNAMIC DYNAMIC
trace_enabled				      DYNAMIC STATIC
cell_offloadgroup_name			      DYNAMIC DYNAMIC
enable_pluggable_database		      STATIC  STATIC
pdb_os_credential			      STATIC  STATIC
pdb_file_name_convert			      DYNAMIC DYNAMIC
noncdb_compatible			      STATIC  STATIC
common_user_prefix			      STATIC  STATIC
target_pdbs				      STATIC  STATIC
max_pdbs				      DYNAMIC STATIC
cdb_cluster				      STATIC  STATIC
cdb_cluster_name			      STATIC  STATIC
standby_pdb_source_file_directory	      DYNAMIC STATIC
standby_pdb_source_file_dblink		      DYNAMIC STATIC
remote_recovery_file_dest		      DYNAMIC STATIC
disable_pdb_feature			      DYNAMIC STATIC
containers_parallel_degree		      DYNAMIC DYNAMIC
default_sharing 			      DYNAMIC DYNAMIC
pdb_lockdown				      DYNAMIC DYNAMIC
pdb_template				      DYNAMIC DYNAMIC
shrd_dupl_table_refresh_rate		      DYNAMIC STATIC
multishard_query_data_consistency	      DYNAMIC DYNAMIC
multishard_query_partial_results	      DYNAMIC DYNAMIC

445 rows selected.

SQL> show parameter memory_max

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
inmemory_max_populate_servers	     integer	 0
memory_max_target		     big integer 0
SQL> show parameter sga_max

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
sga_max_size			     big integer 1696M
SQL> select name,
CASE WHEN ISSYS_MODIFIABLE = 'FALSE' THEN 'STATIC' 
when ISSYS_MODIFIABLE = 'IMMEDIATE' then 'DYNAMIC' end as instance_level,
case when ISSES_MODIFIABLE = 'FALSE' THEN 'STATIC' when ISSES_MODIFIABLE ='TRUE' THEN 'DYNAMIC' end as session_level 
from v$parameter where upper(name) = 'SGA_MAX_SIZE'  2    3    4    5  ;

NAME					      INSTANC SESSION
--------------------------------------------- ------- -------
sga_max_size				      STATIC  STATIC

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> show parameter sga_max_size

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
sga_max_size			     big integer 1696M
SQL> alter system set sga_max_size = 1600M ;
alter system set sga_max_size = 1600M
                 *
ERROR at line 1:
ORA-02095: specified initialization parameter cannot be modified


SQL> alter system set sga_max_size = 1600M scope = memory;
alter system set sga_max_size = 1600M scope = memory
                 *
ERROR at line 1:
ORA-02095: specified initialization parameter cannot be modified


SQL> alter system set sga_max_size = 1600M scope = spfile;

System altered.

SQL> show parameter sga_max_siz	

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
sga_max_size			     big integer 1696M
SQL> startup force;
ORA-00823: Specified value of sga_target greater than sga_max_size
ORA-01078: failure in processing system parameters
SQL> exit
Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0
[oracle@oraclelab dbs]$ sqlplus / as sysdba

SQL*Plus: Release 19.0.0.0.0 - Production on Sun Oct 8 12:13:01 2023
Version 19.3.0.0.0

Copyright (c) 1982, 2019, Oracle.  All rights reserved.

Connected to an idle instance.

SQL> startup;
ORACLE instance started.

Total System Global Area 1778381840 bytes
Fixed Size		    8897552 bytes
Variable Size		  419430400 bytes
Database Buffers	 1342177280 bytes
Redo Buffers		    7876608 bytes
Database mounted.
Database opened.
SQL> show parameter spfile

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
spfile				     string
SQL> create spfile from pfile;

File created.

SQL> startup force;
ORACLE instance started.

Total System Global Area 1778381840 bytes
Fixed Size		    8897552 bytes
Variable Size		  419430400 bytes
Database Buffers	 1342177280 bytes
Redo Buffers		    7876608 bytes
Database mounted.
Database opened.
SQL> show sga_ta		

Total System Global Area 1778381840 bytes
Fixed Size		    8897552 bytes
Variable Size		  419430400 bytes
Database Buffers	 1342177280 bytes
Redo Buffers		    7876608 bytes
SP2-0158: unknown SHOW option "_ta"
SQL> show parameter sga_targ

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
sga_target			     big integer 1696M
SQL> show parameter sga_max_size

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
sga_max_size			     big integer 1696M
SQL> alter system set sga_target = 1400M;

System altered.

SQL> alter system set sga_max_size = 1500M scope = spfile;

System altered.

SQL> startup force;
ORACLE instance started.

Total System Global Area 1577054672 bytes
Fixed Size		    8896976 bytes
Variable Size		  520093696 bytes
Database Buffers	 1040187392 bytes
Redo Buffers		    7876608 bytes
Database mounted.
Database opened.
SQL> show parameter sga_targe

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
sga_target			     big integer 1408M
SQL> show parameter sga_max

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
sga_max_size			     big integer 1504M
SQL> shut immediate;

\Database closed.
Database dismounted.





ORACLE instance shut down.





SQL> SQL> SP2-0042: unknown command "\" - rest of line ignored.
SQL> SQL> SQL> SQL> SQL> SQL> SQL> SQL> SQL> SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> exit
Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0
[oracle@oraclelab dbs]$ sqlplus / as sysdba

SQL*Plus: Release 19.0.0.0.0 - Production on Sun Oct 8 12:20:41 2023
Version 19.3.0.0.0

Copyright (c) 1982, 2019, Oracle.  All rights reserved.

Connected to an idle instance.

SQL> startup pfile='/u01/app/oracle/product/19.0.0.0/dbhome_1/dbs/inithrms.ora'
ORACLE instance started.

Total System Global Area 1778381840 bytes
Fixed Size		    8897552 bytes
Variable Size		  419430400 bytes
Database Buffers	 1342177280 bytes
Redo Buffers		    7876608 bytes
Database mounted.
Database opened.
SQL> create spfile from pfile;
create spfile from pfile
*
ERROR at line 1:
ORA-01078: failure in processing system parameters
LRM-00109: could not open parameter file
'/u01/app/oracle/product/19.0.0.0/dbhome_1/dbs/inithrms.ora'


SQL> create pfile from spfile;
create pfile from spfile
*
ERROR at line 1:
ORA-01565: error in identifying file '?=/dbs/spfile@.ora'
ORA-27037: unable to obtain file status
Linux-x86_64 Error: 2: No such file or directory
Additional information: 7


SQL> show parameter spfile;

NAME				     TYPE	 VALUE
------------------------------------ ----------- ------------------------------
spfile				     string
SQL> shut immediate;
Database closed.
Database dismounted.
ORACLE instance shut down.
SQL> startup;
ORACLE instance started.

Total System Global Area 1778381840 bytes
Fixed Size		    8897552 bytes
Variable Size		  419430400 bytes
Database Buffers	 1342177280 bytes
Redo Buffers		    7876608 bytes
Database mounted.
Database opened.
SQL> create spfile from pfile;

File created.

SQL> startup force;
ORACLE instance started.

Total System Global Area 1778381840 bytes
Fixed Size		    8897552 bytes
Variable Size		  419430400 bytes
Database Buffers	 1342177280 bytes
Redo Buffers		    7876608 bytes
Database mounted.
Database opened.
SQL> 
