open Points ;;
open Masses ;;

let p = new point 1. 2. in 
let m = new mass 3. 5. 7. in 
m#move p;
assert (m#pos = (1., 2.));

let p = new point (-1.) 501. in 
let m = new mass 3. 5. 7. in 
m#move p;
assert (m#pos = (0., 500.));

m#restore_pos;
assert (m#pos = (3., 5.));

m#restore_pos;
assert (m#pos = (0., 500.));