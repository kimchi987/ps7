(* 
                Mutable points with vector arithmetic
                          CS51 Problem Set 7
                         -.-. ... ..... .----
 *)

class point (x0 : float) (y0 : float) =   
object (this)

	(*chen says this is fucking wrong, method x calls the value of x*)
	val mutable x = x0
	val mutable y = y0
	method x = x
	method y = y

	method pos : float * float = 
		(x, y)

	method round : int * int = 
		let round (d'antoni : float) : int = 
			if d'antoni >= (floor d'antoni) +. 0.5 then
				int_of_float(ceil d'antoni) else 
				int_of_float(floor d'antoni) in 
		(round x, round y)

	method move (harden : point) : unit = 
		x <- harden#x;
		y <- harden#y

	method scale (paul : float) : point =
		new point (paul *. x) (paul *. y)

	method plus (capela : point) : point =
		new point (x +. capela#x) (y +. capela#y)

	method minus (athreeza : point) : point = 
		new point (x -. athreeza#x) (y -. athreeza#y)

	method norm : float = 
		sqrt (x**2. +. y**2.)

	method distance (anderson : point) : float = 
		sqrt ((x -. anderson#x)**2. +. ((y -. anderson#y)**2.))

	method unit_vector : point = 
		new point (x /. this#norm) (y /. this#norm)
end


   
(*======================================================================
Time estimate

Please give us an honest (if approximate) estimate of how long (in
minutes) each part of the problem set took you to complete.  We care
about your responses and will use them to help guide us in creating
future assignments.
......................................................................*)

let minutes_spent_on_part () : int =
  failwith "no time estimate provided for points" ;;
