module Stubs = Bindings.Stubs(Bindings_stubs)
open Foreign

let llb_alloc = foreign "llb_alloc" Ctypes.(PosixTypes.size_t @-> returning (ptr void))
let llb_free = foreign "llb_free" Ctypes.(ptr void @-> returning void)

let llb_buildsystem_diagnostic_kind_get_name =
  foreign "llb_buildsystem_diagnostic_kind_get_name"
    Ctypes.(Stubs.llb_buildsystem_diagnostic_kind_t @-> returning string)

let llb_buildsystem_create =
  foreign "llb_builddsystem_create"
    Ctypes.(Stubs.llb_buildsystem_delegate_t
            @-> Stubs.llb_buildsystem_invocation_t
            @-> returning (ptr Stubs.llb_buildsystem_t))

let llb_buildsystem_destroy =
  foreign "llb_buildsystem_destroy"
    Ctypes.(ptr Stubs.llb_buildsystem_t @-> returning void)

let llb_buildsystem_initialize =
  foreign "llb_buildsystem_initialize"
    Ctypes.(ptr Stubs.llb_buildsystem_t @-> returning bool)

let llb_buildsystem_build =
  foreign "llb_buildsystem_build"
    Ctypes.(ptr Stubs.llb_buildsystem_t @-> ptr Stubs.llb_data_t @-> returning bool)

let llb_buildsystem_build_node =
  foreign "llb_buildsystem_build_node"
    Ctypes.(ptr Stubs.llb_buildsystem_t @-> ptr Stubs.llb_data_t @-> returning bool)

let llb_buildsystem_cancel =
  foreign "llb_buildsystem_cancel"
    Ctypes.(ptr Stubs.llb_buildsystem_t @-> returning void)

let llb_buildsystem_tool_create =
  foreign "llb_buildsystem_tool_create"
    Ctypes.(ptr Stubs.llb_data_t
            @-> Stubs.llb_buildsystem_tool_delegate_t
            @-> returning (ptr Stubs.llb_buildsystem_tool_t))

let llb_buildsystem_external_command_create =
  foreign "llb_buildsystem_external_command_create"
    Ctypes.(ptr Stubs.llb_data_t
            @-> Stubs.llb_buildsystem_external_command_delegate_t
            @-> returning (ptr Stubs.llb_buildsystem_command_t))

let llb_buildsystem_command_get_name =
  foreign "llb_buildsystem_command_get_name"
    Ctypes.(ptr Stubs.llb_buildsystem_command_t
            @-> ptr Stubs.llb_data_t
            @-> returning void)

let llb_buildsystem_command_should_show_status =
  foreign "llb_buildsystem_command_should_show_status"
    Ctypes.(ptr Stubs.llb_buildsystem_command_t @-> returning bool)

let llb_buildsystem_command_get_description =
  foreign "llb_buildsystem_command_get_description"
    Ctypes.(ptr Stubs.llb_buildsystem_command_t @-> returning string)

let llb_buildsystem_command_interface_task_needs_input =
  foreign "llb_buildsystem_command_interface_task_needs_input"
    Ctypes.(Stubs.llb_task_interface_t
            @-> ptr Stubs.llb_build_key_t
            @-> uintptr_t
            @-> returning void)

let llb_buildsystem_command_interface_task_discovered_dependency =
  foreign "llb_buildsystem_command_interface_task_discovered_dependency"
    Ctypes.(ptr Stubs.llb_buildsystem_interface_t
            @-> string
            @-> returning Stubs.llb_build_value_file_info_t)

let llb_buildsystem_command_interface_get_file_info =
  foreign "llb_buildsystem_command_interface_get_file_info"
    Ctypes.(ptr Stubs.llb_buildsystem_interface_t
            @-> string
            @-> returning Stubs.llb_build_value_file_info_t)

let llb_get_quality_of_service =
  foreign "llb_get_quality_of_service"
    Ctypes.(void @-> returning Stubs.llb_quality_of_service_t)

let llb_set_quality_of_service =
  foreign "llb_set_quality_of_service"
    Ctypes.(Stubs.llb_quality_of_service_t @-> returning void)

let llb_data_destroy =
  foreign "llb_data_destroy"
    Ctypes.(ptr Stubs.llb_data_t @-> returning void)

let llb_buildengine_create =
  foreign "llb_buildengine_create"
    Ctypes.(Stubs.llb_buildengine_delegate_t
            @-> returning (ptr Stubs.llb_buildengine_t))

let llb_buildsystem_destroy =
  foreign "llb_buildsystem_destroy"
    Ctypes.(ptr Stubs.llb_buildengine_t @-> returning void)

let llb_buildengine_attach_db =
  foreign "llb_buildengine_attach_db"
    Ctypes.(ptr Stubs.llb_buildengine_t
            @-> ptr Stubs.llb_data_t
            @-> uint32_t
            @-> ptr string
            @-> returning bool)

let llb_buildengine_build =
  foreign "llb_buildengine_build"
    Ctypes.(ptr Stubs.llb_buildengine_t
            @-> ptr Stubs.llb_data_t
            @-> ptr Stubs.llb_data_t
            @-> returning void)

let llb_buildengine_task_needs_input =
  foreign "llb_buildengine_task_needs_input"
    Ctypes.(Stubs.llb_task_interface_t
            @-> ptr Stubs.llb_data_t
            @-> uintptr_t
            @-> returning void)

let llb_buildengine_task_must_follow =
  foreign "llb_buildengine_task_must_follow"
    Ctypes.(Stubs.llb_task_interface_t @-> ptr Stubs.llb_data_t @-> returning void)

let llb_buildengine_task_discovered_dependency =
  foreign "llb_buildengine_task_discovered_dependency"
    Ctypes.(Stubs.llb_task_interface_t @-> ptr Stubs.llb_data_t @-> returning void)

let llb_buildengine_task_is_complete =
  foreign "llb_buildengine_task_is_complete"
    Ctypes.(Stubs.llb_task_interface_t
            @-> ptr Stubs.llb_data_t
            @-> bool
            @-> returning void)

let llb_task_create =
  foreign "llb_task_create"
    Ctypes.(Stubs.llb_task_delegate_t @-> returning (ptr Stubs.llb_task_t))

let llb_enable_tracing =
  foreign "llb_enable_tracing"
    Ctypes.(void @-> returning void)

let llb_disable_tracing =
  foreign "llb_disable_tracing"
    Ctypes.(void @-> returning void)

let llb_database_open =
  foreign "llb_database_open"
    Ctypes.(string
            @-> uint32_t
            @-> ptr Stubs.llb_data_t
            @-> returning (ptr Stubs.llb_database_t))

let llb_database_destroy =
  foreign "llb_database_destroy"
    Ctypes.(ptr Stubs.llb_database_t @-> returning void)

let llb_database_lookup_rule_result =
  foreign "llb_database_lookup_rule_result"
    Ctypes.(ptr Stubs.llb_database_t
            @-> ptr Stubs.llb_build_key_t
            @-> ptr Stubs.llb_database_result_t
            @-> ptr Stubs.llb_data_t
            @-> returning bool)

let llb_database_destroy_result =
  foreign "llb_database_destroy_result"
    Ctypes.(ptr Stubs.llb_database_result_t @-> returning void)
