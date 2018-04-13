(*
                         Custom example graph
                          CS51 Problem Set 7
                         -.-. ... ..... .----
 *)
open List ;;

open Points ;;
open Masses ;;
open Controls ;;
open Graphobj ;;
open Graphdraw ;;

let example () : unit =
	let ma = new mass 300. 250. 15. in 
	let mb = new mass 290. 260. 3. in 
	let mc = new mass 290. 402. 10. in 
	let md = new mass 141. 392. 8. in 
	let me = new mass 260. 250. 20. in 
	let mf = new mass 100. 100. 5. in 
	let mg = new mass 250. 180. 15. in 
	let mh = new mass 350. 30. 30. in 
	let mi = new mass 50. 300. 9. in 

	let c0 = (new align ~dir:Vertical ma mc :> control) in
  	let c1 = (new align ~dir:Horizontal ma mb :> control) in
  	let c2 = (new align ~dir:Vertical mb mc :> control) in
  	let c3 = (new align ~dir:Vertical mb me :> control) in
  	let c4 = (new align ~dir:Horizontal mg mh :> control) in 



  	let sa = new rectangle ~label: "" (ma :> point) 360 240 in
  	let sb = new circle ~label: "" (mb :> point) 100 in
  	let sc = new rectangle ~label: "CANON" (mc :> point) 120 60 in 
  	let sd = new rectangle ~label: "flash" (md :> point) 80 40 in 
  	let se = new circle ~label: "24-70mm f/2.8" ~col:(Graphics.red) (me :> point) 80 in 
  	let sf = new circle ~label: "Lens cap" ~col:(Graphics.blue) (mf :> point) 80 in 
  	let sg = new square ~label: "Battery" ~col:(Graphics.green) (mg :> point) 70 in 
  	let sh = new rectangle ~label: "SD Card" ~col:(Graphics.yellow) (mh :> point) 60 40 in 
  	let si = new rectangle ~label: "Tripod" ~col:(Graphics.cyan) (mi :> point) 20 200 in 
 

  	x11_solve [ma; mb; mc; md; me; mf; mg; mh; mi]
  			  ([c0; c1; c2; c3; c4] :> control list)
  			  [sa; sb; sc; sd; se; sf; sg; sh; si] ;;

  	let _ = example () ;;


