module Stubs = Bindings.Stubs(Bindings_stubs)
open Foreign

let llb_alloc = foreign "llb_alloc" Ctypes.(PosixTypes.size_t @-> returning (ptr void))
let llb_free = foreign "llb_free" Ctypes.(ptr void @-> returning void)

let llb_buildsystem_diagnostic_kind_get_name = foreign "llb_buildsystem_diagnostic_kind_get_name" Ctypes.(Stubs.llb_buildsystem_diagnostic_kind_t @-> returning string)
