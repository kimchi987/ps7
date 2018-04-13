open Points ;;

let p = new point 3. 4. in 

assert (p#pos = (3., 4.));
assert (p#x = 3.);
assert (p#y = 4.);

let p = new point 3.4 4.5 in 
assert (p#round = (3, 5));

let p = new point 0.312 9.99 in 
assert (p#round = (0, 10));

let p = new point 1. 2. in
let m = new point 3. 4. in 
p#move m;
assert (p#pos = (3., 4.));

assert ((p#scale 2.)#pos = (6., 8.));

let p = new point 1. 2. in
let m = new point 3. 4. in 
assert ((p#plus m)#pos = (4., 6.));

let p = new point 1. 2. in
let m = new point 3. 4. in 
assert ((m#minus p)#pos = (2., 2.));

let p = new point 3. 4. in
assert (p#norm = 5.);

let p = new point 3. 4. in
let m = new point 5. 6. in 
assert (m#distance p = sqrt (8.));

let p = new point 6. 8. in 
assert ((p#unit_vector)#pos = (0.6, 0.8));