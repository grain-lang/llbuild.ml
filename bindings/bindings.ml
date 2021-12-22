open Ctypes

(* buildvalue *)

type llb_build_value_kind_t = Llb_build_value_kind_invalid
                            | Llb_build_value_kind_virtual_input
                            | Llb_build_value_kind_existing_input
                            | Llb_build_value_kind_missing_input
                            | Llb_build_value_kind_directory_contents
                            | Llb_build_value_kind_directory_tree_signature
                            | Llb_build_value_kind_directory_tree_structure_signature
                            | Llb_build_value_kind_stale_file_removal
                            | Llb_build_value_kind_missing_output
                            | Llb_build_value_kind_failed_input
                            | Llb_build_value_kind_successful_command
                            | Llb_build_value_kind_failed_command
                            | Llb_build_value_kind_propagated_failure_command
                            | Llb_build_value_kind_cancelled_command
                            | Llb_build_value_kind_skipped_command
                            | Llb_build_value_kind_target
                            | Llb_build_value_kind_filtered_directory_contents
                            | Llb_build_value_kind_successful_command_with_output_signature

(* buildkey *)

type llb_build_key_kind_t = Llb_build_key_kind_command
                          | Llb_build_key_kind_custom_task
                          | Llb_build_key_kind_directory_contents
                          | Llb_build_key_kind_directory_tree_signature
                          | Llb_build_key_kind_node
                          | Llb_build_key_kind_target
                          | Llb_build_key_kind_unknown
                          | Llb_build_key_kind_directory_tree_structure_signature
                          | Llb_build_key_kind_filtered_directory_contents
                          | Llb_build_key_kind_stat
(* buildsystem *)

type llb_rule_status_kind_t = Llb_rule_is_scanning
                            | Llb_rule_is_up_to_date
                            | Llb_rule_is_complete

type llb_buildsystem_diagnostic_kind_t = Llb_buildsystem_diagnostic_kind_note
                                       | Llb_buildsystem_diagnostic_kind_warning
                                       | Llb_buildsystem_diagnostic_kind_error

type llb_buildsystem_command_result_t = Llb_buildsystem_command_result_succeeded
                                      | Llb_buildsystem_command_result_failed
                                      | Llb_buildsystem_command_result_cancelled
                                      | Llb_buildsystem_command_result_skipped

type llb_buildsystem_discovered_dependency_kind_t = Llb_buildsystem_discovered_dependency_kind_input
                                                  | Llb_buildsystem_discovered_dependency_kind_missing
                                                  | Llb_buildsystem_discovered_dependency_kind_output

type llb_buildsystem_command_status_kind_t = Llb_buildsystem_command_status_kind_is_scanning
                                           | Llb_buildsystem_command_status_kind_is_up_to_date
                                           | Llb_buildsystem_command_status_kind_is_complete

type llb_cycle_action_t = Llb_cycle_action_force_build
                        | Llb_cycle_action_supply_prior_value

type llb_scheduler_algorithm_t = Llb_scheduler_algorithm_command_name_priority
                               | Llb_scheduler_algorithm_fifo

type llb_quality_of_service_t = Llb_quality_of_service_default
                              | Llb_quality_of_service_user_initiated
                              | Llb_quality_of_service_utility
                              | Llb_quality_of_service_background
                              | Llb_quality_of_service_unspecified

module Stubs =
  functor (S: Cstubs_structs.TYPE) -> struct
    open S

    let void_ptr = ptr void

    let llb_rule_is_scanning = constant "llb_rule_is_scanning" int64_t
    let llb_rule_is_up_to_date = constant "llb_rule_is_up_to_date" int64_t
    let llb_rule_is_complete = constant "llb_rule_is_complete" int64_t

    let llb_rule_status_kind_t =
      enum ~typedef:true "llb_rule_status_kind_t" [
          Llb_rule_is_scanning,llb_rule_is_scanning;
          Llb_rule_is_up_to_date,llb_rule_is_up_to_date;
          Llb_rule_is_complete,llb_rule_is_complete;
        ]

    (* buildvalue *)
    let llb_build_value_kind_invalid = constant "llb_build_value_kind_invalid" int64_t
    let llb_build_value_kind_virtual_input = constant "llb_build_value_kind_virtual_input" int64_t
    let llb_build_value_kind_existing_input = constant "llb_build_value_kind_existing_input" int64_t
    let llb_build_value_kind_missing_input = constant "llb_build_value_kind_missing_input" int64_t
    let llb_build_value_kind_directory_contents = constant "llb_build_value_kind_directory_contents" int64_t
    let llb_build_value_kind_directory_tree_signature = constant "llb_build_value_kind_directory_tree_signature" int64_t
    let llb_build_value_kind_directory_tree_structure_signature = constant "llb_build_value_kind_directory_tree_structure_signature" int64_t
    let llb_build_value_kind_stale_file_removal = constant "llb_build_value_kind_stale_file_removal" int64_t
    let llb_build_value_kind_missing_output = constant "llb_build_value_kind_missing_output" int64_t
    let llb_build_value_kind_failed_input = constant "llb_build_value_kind_failed_input" int64_t
    let llb_build_value_kind_successful_command = constant "llb_build_value_kind_successful_command" int64_t
    let llb_build_value_kind_failed_command = constant "llb_build_value_kind_failed_command" int64_t
    let llb_build_value_kind_propagated_failure_command = constant "llb_build_value_kind_propagated_failure_command" int64_t
    let llb_build_value_kind_cancelled_command = constant "llb_build_value_kind_cancelled_command" int64_t
    let llb_build_value_kind_skipped_command = constant "llb_build_value_kind_skipped_command" int64_t
    let llb_build_value_kind_target = constant "llb_build_value_kind_target" int64_t
    let llb_build_value_kind_filtered_directory_contents = constant "llb_build_value_kind_filtered_directory_contents" int64_t
    let llb_build_value_kind_successful_command_with_output_signature = constant "llb_build_value_kind_successful_command_with_output_signature" int64_t


    let llb_build_value_kind_t =
      enum ~typedef:true "llb_build_value_kind_t" [
          Llb_build_value_kind_invalid,llb_build_value_kind_invalid;
          Llb_build_value_kind_virtual_input,llb_build_value_kind_virtual_input;
          Llb_build_value_kind_existing_input,llb_build_value_kind_existing_input;
          Llb_build_value_kind_missing_input,llb_build_value_kind_missing_input;
          Llb_build_value_kind_directory_contents,llb_build_value_kind_directory_contents;
          Llb_build_value_kind_directory_tree_signature,llb_build_value_kind_directory_tree_signature;
          Llb_build_value_kind_directory_tree_structure_signature,llb_build_value_kind_directory_tree_structure_signature;
          Llb_build_value_kind_stale_file_removal,llb_build_value_kind_stale_file_removal;
          Llb_build_value_kind_missing_output,llb_build_value_kind_missing_output;
          Llb_build_value_kind_failed_input,llb_build_value_kind_failed_input;
          Llb_build_value_kind_successful_command,llb_build_value_kind_successful_command;
          Llb_build_value_kind_failed_command,llb_build_value_kind_failed_command;
          Llb_build_value_kind_propagated_failure_command,llb_build_value_kind_propagated_failure_command;
          Llb_build_value_kind_cancelled_command,llb_build_value_kind_cancelled_command;
          Llb_build_value_kind_skipped_command,llb_build_value_kind_skipped_command;
          Llb_build_value_kind_target,llb_build_value_kind_target;
          Llb_build_value_kind_filtered_directory_contents,llb_build_value_kind_filtered_directory_contents;
          Llb_build_value_kind_successful_command_with_output_signature,llb_build_value_kind_successful_command_with_output_signature;
        ]

    type llb_build_value_file_timestamp_t
    let llb_build_value_file_timestamp_t : llb_build_value_file_timestamp_t structure typ = typedef (structure "llb_build_value_file_timestamp_t_") "llb_build_value_file_timestamp_t"
    let llb_build_value_file_timestamp_seconds = field llb_build_value_file_timestamp_t "seconds" uint64_t
    let llb_build_value_file_timestamp_nanoseconds = field llb_build_value_file_timestamp_t "nanoseconds" uint64_t
    let () = seal llb_build_value_file_timestamp_t

    type llb_build_value_file_info_t
    let llb_build_value_file_info_t : llb_build_value_file_info_t structure typ = typedef (structure "llb_build_value_file_info_t_") "llb_build_value_file_info_t"
    let llb_build_value_file_info_device = field llb_build_value_file_info_t "device" uint64_t
    let llb_build_value_file_info_inode = field llb_build_value_file_info_t "inode" uint64_t
    let llb_build_value_file_info_mode = field llb_build_value_file_info_t "mode" uint64_t
    let llb_build_value_file_info_size = field llb_build_value_file_info_t "size" uint64_t
    let llb_build_value_file_info_modTime = field llb_build_value_file_info_t "modTime" llb_build_value_file_timestamp_t
    let () = seal llb_build_value_file_info_t

    type llb_build_value_command_signature_t
    let llb_build_value_command_signature_t = typedef uint64_t "llb_build_value_command_signature_t"

    type llb_build_value
    let llb_build_value : llb_build_value structure typ = typedef (structure "llb_build_value_") "llb_build_value"

    (* buildkey *)

    let llb_build_key_kind_command = constant "llb_build_key_kind_command" int64_t
    let llb_build_key_kind_custom_task = constant "llb_build_key_kind_custom_task" int64_t
    let llb_build_key_kind_directory_contents = constant "llb_build_key_kind_directory_contents" int64_t
    let llb_build_key_kind_directory_tree_signature = constant "llb_build_key_kind_directory_tree_signature" int64_t
    let llb_build_key_kind_node = constant "llb_build_key_kind_node" int64_t
    let llb_build_key_kind_target = constant "llb_build_key_kind_target" int64_t
    let llb_build_key_kind_unknown = constant "llb_build_key_kind_unknown" int64_t
    let llb_build_key_kind_directory_tree_structure_signature = constant "llb_build_key_kind_directory_tree_structure_signature" int64_t
    let llb_build_key_kind_filtered_directory_contents = constant "llb_build_key_kind_filtered_directory_contents" int64_t
    let llb_build_key_kind_stat = constant "llb_build_key_kind_stat" int64_t

    let llb_build_key_kind_t =
      enum ~typedef:true "llb_build_key_kind_t" [
          Llb_build_key_kind_command, llb_build_key_kind_command;
          Llb_build_key_kind_custom_task, llb_build_key_kind_custom_task;
          Llb_build_key_kind_directory_contents, llb_build_key_kind_directory_contents;
          Llb_build_key_kind_directory_tree_signature, llb_build_key_kind_directory_tree_signature;
          Llb_build_key_kind_node, llb_build_key_kind_node;
          Llb_build_key_kind_target, llb_build_key_kind_target;
          Llb_build_key_kind_unknown, llb_build_key_kind_unknown;
          Llb_build_key_kind_directory_tree_structure_signature, llb_build_key_kind_directory_tree_structure_signature  ;
          Llb_build_key_kind_filtered_directory_contents, llb_build_key_kind_filtered_directory_contents;
          Llb_build_key_kind_stat, llb_build_key_kind_stat;
        ]

    type llb_build_key_t
    let llb_build_key_t : llb_build_key_t structure typ = typedef (structure "llb_build_key_t_") "llb_build_key_t"

    (* buildsystem *)



    (* TODO not sure if this will work on windows or OSX, lol *)
    let llbuild_pid_t = typedef (lift_typ PosixTypes.pid_t) "llbuild_pid_t"

    type llb_data_t
    let llb_data_t : llb_data_t structure typ = typedef (structure "llb_data_t_") "llb_data_t"
    let llb_data_length = field llb_data_t "length" uint64_t
    let llb_data_data = field llb_data_t "data" (ptr uint8_t)
    let () = seal llb_data_t

    let llb_buildsystem_diagnostic_kind_note = constant "llb_buildsystem_diagnostic_kind_note" int64_t
    let llb_buildsystem_diagnostic_kind_warning = constant "llb_buildsystem_diagnostic_kind_warning" int64_t
    let llb_buildsystem_diagnostic_kind_error = constant "llb_buildsystem_diagnostic_kind_error" int64_t

    let llb_buildsystem_diagnostic_kind_t =
      enum ~typedef:true "llb_buildsystem_diagnostic_kind_t" [
          Llb_buildsystem_diagnostic_kind_note, llb_buildsystem_diagnostic_kind_note;
          Llb_buildsystem_diagnostic_kind_warning, llb_buildsystem_diagnostic_kind_warning;
          Llb_buildsystem_diagnostic_kind_error, llb_buildsystem_diagnostic_kind_error;
        ]

    let llb_buildsystem_command_result_succeeded = constant "llb_buildsystem_command_result_succeeded" int64_t
    let llb_buildsystem_command_result_failed = constant "llb_buildsystem_command_result_failed" int64_t
    let llb_buildsystem_command_result_cancelled = constant "llb_buildsystem_command_result_cancelled" int64_t
    let llb_buildsystem_command_result_skipped = constant "llb_buildsystem_command_result_skipped" int64_t

    let llb_buildsystem_command_result_t =
      enum ~typedef:true "llb_buildsystem_command_result_t" [
          Llb_buildsystem_command_result_succeeded, llb_buildsystem_command_result_succeeded;
          Llb_buildsystem_command_result_failed, llb_buildsystem_command_result_failed;
          Llb_buildsystem_command_result_cancelled, llb_buildsystem_command_result_cancelled;
          Llb_buildsystem_command_result_skipped, llb_buildsystem_command_result_skipped;
        ]


    let llb_buildsystem_discovered_dependency_kind_input = constant "llb_buildsystem_discovered_dependency_kind_input" int64_t
    let llb_buildsystem_discovered_dependency_kind_missing = constant "llb_buildsystem_discovered_dependency_kind_missing" int64_t
    let llb_buildsystem_discovered_dependency_kind_output = constant "llb_buildsystem_discovered_dependency_kind_output" int64_t

    let llb_buildsystem_discovered_dependency_kind_t =
      enum ~typedef:true "llb_buildsystem_discovered_dependency_kind_t" [
          Llb_buildsystem_discovered_dependency_kind_input, llb_buildsystem_discovered_dependency_kind_input;
          Llb_buildsystem_discovered_dependency_kind_missing, llb_buildsystem_discovered_dependency_kind_missing;
          Llb_buildsystem_discovered_dependency_kind_output, llb_buildsystem_discovered_dependency_kind_output;
        ]

    let llb_buildsystem_command_status_kind_is_scanning = constant "llb_buildsystem_command_status_kind_is_scanning" int64_t
    let llb_buildsystem_command_status_kind_is_up_to_date = constant "llb_buildsystem_command_status_kind_is_up_to_date" int64_t
    let llb_buildsystem_command_status_kind_is_complete = constant "llb_buildsystem_command_status_kind_is_complete" int64_t
    let llb_buildsystem_command_status_kind_t =
      enum ~typedef:true "llb_buildsystem_command_status_kind_t" [
          Llb_buildsystem_command_status_kind_is_scanning, llb_buildsystem_command_status_kind_is_scanning;
          Llb_buildsystem_command_status_kind_is_up_to_date, llb_buildsystem_command_status_kind_is_up_to_date;
          Llb_buildsystem_command_status_kind_is_complete, llb_buildsystem_command_status_kind_is_complete;
        ]

    let llb_cycle_action_force_build = constant "llb_cycle_action_force_build" int64_t
    let llb_cycle_action_supply_prior_value = constant "llb_cycle_action_supply_prior_value" int64_t

    let llb_cycle_action_t =
      enum ~typedef:true "llb_cycle_action_t" [
          Llb_cycle_action_force_build, llb_cycle_action_force_build;
          Llb_cycle_action_force_build, llb_cycle_action_supply_prior_value;
        ]

    let llb_scheduler_algorithm_command_name_priority = constant "llb_scheduler_algorithm_command_name_priority" int64_t
    let llb_scheduler_algorithm_fifo = constant "llb_scheduler_algorithm_fifo" int64_t

    let llb_scheduler_algorithm_t =
      enum ~typedef:true "llb_scheduler_algorithm_t" [
          Llb_scheduler_algorithm_command_name_priority, llb_scheduler_algorithm_command_name_priority;
          Llb_scheduler_algorithm_fifo, llb_scheduler_algorithm_fifo;
        ]

    let llb_quality_of_service_default = constant "llb_quality_of_service_default" int64_t
    let llb_quality_of_service_user_initiated = constant "llb_quality_of_service_user_initiated" int64_t
    let llb_quality_of_service_utility = constant "llb_quality_of_service_utility" int64_t
    let llb_quality_of_service_background = constant "llb_quality_of_service_background" int64_t
    let llb_quality_of_service_unspecified = constant "llb_quality_of_service_unspecified" int64_t

    let llb_quality_of_service_t =
      enum ~typedef:true "llb_quality_of_service_t" [
          Llb_quality_of_service_default, llb_quality_of_service_default;
          Llb_quality_of_service_user_initiated, llb_quality_of_service_user_initiated;
          Llb_quality_of_service_utility, llb_quality_of_service_utility;
          Llb_quality_of_service_background, llb_quality_of_service_background;
          Llb_quality_of_service_unspecified, llb_quality_of_service_unspecified;
        ]

    type llb_fs_timestamp_t
    let llb_fs_timestamp_t : llb_fs_timestamp_t structure typ = typedef (structure "llb_fs_timestamp_") "llb_fs_timestamp_t"
    let llb_fs_timestamp_seconds = field llb_fs_timestamp_t "seconds" int64_t
    let llb_fs_timestamp_nanoseconds = field llb_fs_timestamp_t "nanoseconds" int64_t
    let () = seal llb_fs_timestamp_t

    type llb_fs_file_info_t
    let llb_fs_file_info_t : llb_fs_file_info_t structure typ = typedef (structure "llb_fs_file_info_") "llb_fs_file_info_t"
    let llb_fs_file_info_device = field llb_fs_file_info_t "device" int64_t
    let llb_fs_file_info_inode = field llb_fs_file_info_t "inode" int64_t
    let llb_fs_file_info_mode = field llb_fs_file_info_t "mode" int64_t
    let llb_fs_file_info_mod_time = field llb_fs_file_info_t "mod_time" llb_fs_timestamp_t
    let () = seal llb_fs_file_info_t

    type llb_buildsystem_t
    let llb_buildsystem_t : llb_buildsystem_t structure typ = typedef (structure "llb_buildsystem_t_") "llb_buildsystem_t"

    type llb_buildsystem_command_t
    let llb_buildsystem_command_t : llb_buildsystem_command_t structure typ = typedef (structure "llb_buildsystem_command_t_") "llb_buildsystem_command_t"

    type  llb_buildsystem_tool_t
    let llb_buildsystem_tool_t : llb_buildsystem_tool_t structure typ = typedef (structure "llb_buildsystem_tool_t_") "llb_buildsystem_tool_t"

    type llb_buildsystem_process_t
    let llb_buildsystem_process_t : llb_buildsystem_process_t structure typ = typedef (structure "llb_buildsystem_process_t_") "llb_buildsystem_process_t"
    (* let () = seal llb_buildsystem_process_t *)

    type llb_buildsystem_interface_t
    let llb_buildsystem_interface_t : llb_buildsystem_interface_t structure typ = typedef (structure "llb_buildsystem_interface_t_") "llb_buildsystem_interface_t"

    type llb_buildsystem_command_extended_result_t
    let llb_buildsystem_command_extended_result_t : llb_buildsystem_command_extended_result_t structure typ = typedef (structure "llb_buildsystem_command_extended_result_") "llb_buildsystem_command_extended_result_t"
    let llb_buildsystem_command_extended_result_result = field llb_buildsystem_command_extended_result_t "result" llb_buildsystem_command_result_t
    let llb_buildsystem_command_extended_result_exit_status = field llb_buildsystem_command_extended_result_t "exit_status" int
    let llb_buildsystem_command_extended_result_utime = field llb_buildsystem_command_extended_result_t "utime" uint64_t
    let llb_buildsystem_command_extended_result_stime = field llb_buildsystem_command_extended_result_t "stime" uint64_t
    let llb_buildsystem_command_extended_result_maxrss = field llb_buildsystem_command_extended_result_t "maxrss" uint64_t
    let llb_buildsystem_command_extended_result_pid = field llb_buildsystem_command_extended_result_t "pid" llbuild_pid_t
    let () = seal llb_buildsystem_command_extended_result_t

    type llb_buildsystem_invocation_t
    let llb_buildsystem_invocation_t : llb_buildsystem_invocation_t structure typ = typedef (structure "llb_buildsystem_invocation_") "llb_buildsystem_invocation_t"

    let llb_buildsystem_invocation_build_file_path = field llb_buildsystem_invocation_t "buildFilePath" string
    let llb_buildsystem_invocation_db_path = field llb_buildsystem_invocation_t "dbPath" string
    let llb_buildsystem_invocation_trace_file_path = field llb_buildsystem_invocation_t "traceFilePath" string
    let llb_buildsystem_invocation_environment = field llb_buildsystem_invocation_t "environment" (ptr string_opt)
    let llb_buildsystem_invocation_show_verbose_status = field llb_buildsystem_invocation_t "showVerboseStatus" bool
    let llb_buildsystem_invocation_use_serial_build = field llb_buildsystem_invocation_t "useSerialBuild" bool
    let llb_buildsystem_invocation_scheduler_algorithm = field llb_buildsystem_invocation_t "schedulerAlgorithm" llb_scheduler_algorithm_t
    let llb_buildsystem_invocation_scheduler_lanes = field llb_buildsystem_invocation_t "schedulerLanes" uint32_t
    let llb_buildsystem_invocation_qos = field llb_buildsystem_invocation_t "qos" llb_quality_of_service_t
    let () = seal llb_buildsystem_invocation_t


    type llb_buildsystem_delegate_t
    let llb_buildsystem_delegate_t: llb_buildsystem_delegate_t structure typ = typedef (structure "llb_buildsystem_delegate_t_") "llb_buildsystem_delegate_t"
    let llb_buildsystem_delegate_context = field llb_buildsystem_delegate_t "context" void_ptr
    let llb_buildsystem_delegate_fs_create_directory = field llb_buildsystem_delegate_t "fs_create_directory" (static_funptr (void_ptr @-> string @-> returning bool))
    let llb_buildsystem_delegate_fs_get_file_contents = field llb_buildsystem_delegate_t "fs_get_file_contents" (static_funptr (void_ptr @-> string @-> ptr llb_data_t @-> returning bool))
    let llb_buildsystem_delegate_fs_remove = field llb_buildsystem_delegate_t "fs_remove" (static_funptr (void_ptr @-> string @-> returning bool))
    let llb_buildsystem_delegate_fs_get_file_info = field llb_buildsystem_delegate_t "fs_get_file_info" (static_funptr (void_ptr @-> string @-> ptr llb_fs_file_info_t @-> returning void))
    let llb_buildsystem_delegate_fs_get_link_info = field llb_buildsystem_delegate_t "fs_get_link_info" (static_funptr (void_ptr @-> string @-> ptr llb_fs_file_info_t @-> returning bool))
    let llb_buildsystem_delegate_fs_create_symlink = field llb_buildsystem_delegate_t "fs_create_symlink" (static_funptr (void_ptr @-> string @-> string @-> returning bool))
    let llb_buildsystem_delegate_lookup_tool = field llb_buildsystem_delegate_t "lookup_tool" (static_funptr (void_ptr @-> ptr llb_data_t @-> returning (ptr llb_buildsystem_tool_t)))
    let llb_buildsystem_delegate_handle_diagnostic = field llb_buildsystem_delegate_t "handle_diagnostic" (static_funptr (void_ptr @-> llb_buildsystem_diagnostic_kind_t @-> string @-> int @-> int @-> string @-> returning void))
    let llb_buildsystem_delegate_had_command_failure = field llb_buildsystem_delegate_t "had_command_failure" (static_funptr (void_ptr @-> returning void))
    let llb_buildsystem_delegate_command_status_changed = field llb_buildsystem_delegate_t "command_status_changed" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_buildsystem_command_status_kind_t @-> returning void))
    let llb_buildsystem_delegate_command_preparing = field llb_buildsystem_delegate_t "command_preparing" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> returning void))
    let llb_buildsystem_delegate_should_command_start = field llb_buildsystem_delegate_t "should_command_start" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> returning bool))
    let llb_buildsystem_delegate_command_started = field llb_buildsystem_delegate_t "command_started" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> returning void))
    let llb_buildsystem_delegate_command_finished = field llb_buildsystem_delegate_t "command_finished" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> llb_buildsystem_command_result_t @-> returning void))
    let llb_buildsystem_delegate_command_found_discovered_dependency = field llb_buildsystem_delegate_t "command_found_discovered_dependency" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> string @-> llb_buildsystem_discovered_dependency_kind_t @-> returning void))
    let llb_buildsystem_delegate_command_had_error = field llb_buildsystem_delegate_t "command_had_error" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_data_t @-> returning void))
    let llb_buildsystem_delegate_command_had_note = field llb_buildsystem_delegate_t "command_had_note" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_data_t @-> returning void))
    let llb_buildsystem_delegate_command_had_warning = field llb_buildsystem_delegate_t "command_had_warning" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_data_t @-> returning void))
    let llb_buildsystem_delegate_command_cannot_build_output_due_to_missing_inputs = field llb_buildsystem_delegate_t "command_cannot_build_output_due_to_missing_inputs" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr (ptr llb_build_key_t) @-> ptr (ptr llb_build_key_t) @-> uint64_t @-> returning void))
    let llb_buildsystem_delegate_choose_command_from_multiple_producers = field llb_buildsystem_delegate_t "choose_command_from_multiple_producers" (static_funptr (void_ptr @-> ptr (ptr llb_build_key_t) @-> ptr (ptr llb_buildsystem_command_t) @-> uint64_t @-> returning (ptr llb_buildsystem_command_t)))
    let llb_buildsystem_delegate_cannot_build_node_due_to_multiple_producers = field llb_buildsystem_delegate_t "cannot_build_node_due_to_multiple_producers" (static_funptr (void_ptr @-> ptr (ptr llb_build_key_t) @-> ptr (ptr llb_buildsystem_command_t) @-> uint64_t @-> returning void))
    let llb_buildsystem_delegate_command_process_started = field llb_buildsystem_delegate_t "command_process_started" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_buildsystem_process_t @-> returning void))
    let llb_buildsystem_delegate_command_process_had_error = field llb_buildsystem_delegate_t "command_process_had_error" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_buildsystem_process_t @-> ptr llb_data_t @-> returning void))
    let llb_buildsystem_delegate_command_process_had_output = field llb_buildsystem_delegate_t "command_process_had_output" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_buildsystem_process_t @-> ptr llb_data_t @-> returning void))
    let llb_buildsystem_delegate_command_process_finished = field llb_buildsystem_delegate_t "command_process_finished" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_buildsystem_process_t @-> ptr llb_buildsystem_command_extended_result_t @-> returning void))
    let llb_buildsystem_cycle_detected = field llb_buildsystem_delegate_t "cycle_detected" (static_funptr (void_ptr @-> ptr (ptr llb_build_key_t) @-> uint64_t @-> returning void))
    let llb_buildsystem_should_resolve_cycle = field llb_buildsystem_delegate_t "should_resolve_cycle" (static_funptr (void_ptr @-> ptr (ptr llb_build_key_t) @-> uint64_t @-> ptr llb_build_key_t @-> llb_cycle_action_t @-> returning uint8_t))
    let () = seal llb_buildsystem_delegate_t

    type llb_buildsystem_tool_delegate_t
    let llb_buildsystem_tool_delegate_t : llb_buildsystem_tool_delegate_t structure typ = typedef (structure "llb_buildsystem_tool_delegate_t_") "llb_buildsystem_tool_delegate_t"
    let llb_buildsystem_tool_delegate_context = field llb_buildsystem_tool_delegate_t "context" void_ptr
    let llb_buildsystem_tool_delegate_create_command = field llb_buildsystem_tool_delegate_t "create_command" (static_funptr (void_ptr @-> ptr llb_data_t @-> returning (ptr llb_buildsystem_command_t)))
    let llb_buildsystem_tool_delegate_create_custom_comamnd = field llb_buildsystem_tool_delegate_t "create_custom_command" (static_funptr (void_ptr @-> ptr llb_build_key_t @-> returning (ptr llb_buildsystem_command_t)))
    let () = seal llb_buildsystem_tool_delegate_t

    type llb_buildsystem_queue_job_context_t
    let llb_buildsystem_queue_job_context_t : llb_buildsystem_queue_job_context_t structure typ = typedef (structure "llb_buildsystem_queue_job_context_t_") "llb_buildsystem_queue_job_context_t"

    type llb_task_interface_t
    let llb_task_interface_t : llb_task_interface_t structure typ = typedef (structure "llb_task_interface_t_") "llb_task_interface_t"
    let llb_task_interface_impl = field llb_task_interface_t "impl" void_ptr
    (* let llb_task_interface_ctx = field llb_task_interface_t "ctx" void_ptr *)
    let () = seal llb_task_interface_t

    type llb_buildsystem_external_command_delegate_t
    let llb_buildsystem_external_command_delegate_t : llb_buildsystem_external_command_delegate_t structure typ = typedef (structure "llb_buildsystem_external_command_delegate_t_") "llb_buildsystem_external_command_delegate_t"
    let llb_buildsystem_external_command_delegate_context = field llb_buildsystem_external_command_delegate_t "context" void_ptr
    let llb_buildsystem_external_command_delegate_get_signature = field llb_buildsystem_external_command_delegate_t "get_signature" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_data_t @-> returning void))
    (* let llb_buildsystem_external_command_delegate_start = field llb_buildsystem_external_command_delegate_t "start" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_buildsystem_interface_t @-> llb_task_interface_t (\* TODO remove ptr *\) @-> returning void)) *)
    (* let llb_buildsystem_external_command_delegate_provide_value = field llb_buildsystem_external_command_delegate_t "provide_value" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_buildsystem_interface_t @-> llb_task_interface_t @-> ptr llb_build_value @-> uintptr_t @-> returning void)) *)
    (* let llb_buildsystem_external_command_delegate_execute_command = field llb_buildsystem_external_command_delegate_t "execute_command" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_buildsystem_interface_t @-> llb_task_interface_t @-> ptr llb_buildsystem_queue_job_context_t @-> returning bool)) *)
    (* let llb_buildsystem_external_command_delegate_execute_command_ex = field llb_buildsystem_external_command_delegate_t "execute_command_ex" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_buildsystem_interface_t @-> llb_task_interface_t @-> ptr llb_buildsystem_queue_job_context_t @-> returning (ptr llb_build_value))) *)
    let llb_buildsystem_external_command_delegate_is_result_value = field llb_buildsystem_external_command_delegate_t "is_result_valid" (static_funptr (void_ptr @-> ptr llb_buildsystem_command_t @-> ptr llb_build_value @-> returning bool))
    let () = seal llb_buildsystem_external_command_delegate_t

    type llb_buildengine_t
    let llb_buildengine_t : llb_buildengine_t structure typ = typedef (structure "llb_buildengine_t_") "llb_buildengine_t"

    type llb_task_t
    let llb_task_t : llb_task_t structure typ = typedef (structure "llb_task_t_") "llb_task_t"

    type llb_rule_t
    let llb_rule_t : llb_rule_t structure typ = typedef (structure "llb_rule_t_") "llb_rule_t"
    let llb_rule_context = field llb_rule_t "context" void_ptr
    let llb_rule_key = field llb_rule_t "key" llb_data_t
    let llb_rule_create_task = field llb_rule_t "create_task" (static_funptr (void_ptr @-> void_ptr @-> returning (ptr llb_task_t)))
    let llb_rule_is_result_valid = field llb_rule_t "is_result_valid" (static_funptr (void_ptr @-> void_ptr @-> ptr llb_rule_t @-> ptr llb_data_t @-> returning bool))
    let llb_rule_updates_status = field llb_rule_t "update_status" (static_funptr (void_ptr @-> void_ptr @-> llb_rule_status_kind_t @-> returning void))
    let () = seal llb_rule_t

    type llb_buildengine_delegate_t
    let llb_buildengine_delegate_t : llb_buildengine_delegate_t structure typ = typedef (structure "llb_buildengine_delegate_t_") "llb_buildengine_delegate_t"
    let llb_buildengine_delegate_context = field llb_buildengine_delegate_t "context" void_ptr
    let llb_buildengine_delegate_destroy_context = field llb_buildengine_delegate_t "destroy_context" (static_funptr (void_ptr @-> returning void))
    let llb_buildengine_delegate_lookup_rule = field llb_buildengine_delegate_t "lookup_rule" (static_funptr (void_ptr @-> ptr llb_data_t @-> ptr llb_rule_t @-> returning void))
    let llb_buildengine_delegate_error = field llb_buildengine_delegate_t "error" ((static_funptr (void_ptr @-> string @-> returning void)))
    let () = seal llb_buildengine_delegate_t

    type llb_task_delegate_t
    let llb_task_delegate_t : llb_task_delegate_t structure typ = typedef (structure "llb_task_delegate_t_") "llb_task_delegate_t"
    let llb_task_delegate_context = field llb_task_delegate_t "context" void_ptr
    let llb_task_delegate_destroy_context = field llb_task_delegate_t "destroy_context" (static_funptr (void_ptr @-> returning void))
    (* let llb_task_delegate_start = field llb_task_delegate_t "start" (static_funptr (void_ptr @-> void_ptr @-> llb_task_interface_t @-> returning void)) *)
    (* let llb_task_delegate_provide_value = field llb_task_delegate_t "provide_value" (static_funptr (void_ptr @-> void_ptr @-> llb_task_interface_t @-> uintptr_t @-> ptr llb_data_t @-> returning void)) *)
    (* let llb_task_delegate_inputs_available = field llb_task_delegate_t "inputs_available" (static_funptr (void_ptr @-> void_ptr @-> llb_task_interface_t @-> returning void)) *)
    let () = seal llb_task_delegate_t

    type llb_database_t
    let llb_database_t : llb_database_t structure typ = typedef (structure "llb_database_t_") "llb_database_t"

    type llb_database_key_id
    let llb_database_key_id = typedef uint64_t "llb_database_key_id"

    type llb_database_key_type
    let llb_database_key_type = typedef string "llb_database_key_type"

    type llb_database_fetch_result_t
    let llb_database_fetch_result_t : llb_database_fetch_result_t structure typ = typedef (structure "llb_database_result_keys_t_") "llb_database_fetch_result_t"

    type llb_database_result_t
    let llb_database_result_t : llb_database_result_t structure typ = typedef (structure "llb_database_result_t_") "llb_database_result_t"
    let llb_database_result_value = field llb_database_result_t "value" llb_data_t
    let llb_database_result_signature = field llb_database_result_t "signature" uint64_t
    let llb_database_result_computed_at = field llb_database_result_t "computed_at" uint64_t
    let llb_database_result_built_at = field llb_database_result_t "built_at" uint64_t
    let llb_database_result_start = field llb_database_result_t "start" double
    let llb_database_result_end = field llb_database_result_t "end" double
    let llb_database_result_dependencies = field llb_database_result_t "dependencies" (ptr llb_build_key_t)
    let llb_database_result_dependencies_count = field llb_database_result_t "dependencies_count" uint32_t
    let () = seal llb_database_result_t

  end
