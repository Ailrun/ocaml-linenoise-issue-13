(* a Greek Lambda character λ in UTF-8 encoding *)
let lambda = "\xCE\xBB"

let rec main () =
  match LNoise.linenoise lambda with
  | None -> ()
  | Some x ->
     print_endline x;
     main ()

let _ = main ()
