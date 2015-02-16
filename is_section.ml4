DECLARE PLUGIN "is_section"

open Constr

let is_section_var c = match kind c with
| Var id -> Termops.is_section_variable id
| _ -> false

TACTIC EXTEND is_section
| [ "is_section" constr(c) ] -> [
  if is_section_var c then
    Proofview.tclUNIT ()
  else
    Tacticals.New.tclFAIL 0 (Pp.mt ())
]
END
