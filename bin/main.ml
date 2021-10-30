module Stubs = Bindings.Stubs(Bindings_stubs)

(* let llb_data_destroy = *)
(*   Foreign.foreign "llb_data_destroy" Ctypes.(ptr Stubs.llb_data_t @-> returning void) *)
(* let time = *)
(*   Foreign.foreign *)
(*     "time" *)
(*     Ctypes.(ptr PosixTypes.time_t @-> returning PosixTypes.time_t) *)

(* let gmtime = *)
(*   Foreign.foreign *)
(*     "gmtime" *)
(*     Ctypes.(ptr PosixTypes.time_t @-> returning (ptr Stubs.Tm.t)) *)

let main () =
  (* let tme = Ctypes.allocate PosixTypes.time_t (time Ctypes.(from_voidp PosixTypes.time_t null)) in *)
  (* let tm = gmtime tme in *)
  (* Printf.printf "tm_hour = %d\n" Ctypes.(getf (!@ tm) Stubs.Tm.tm_hour); *)
  (* Printf.printf "tm_year = %d\n" Ctypes.(getf (!@ tm) Stubs.Tm.tm_year); *)
  (* Printf.printf "%d\n" Stubs.llb_rule_is_up_to_date *)
  ()

let () = main ()
