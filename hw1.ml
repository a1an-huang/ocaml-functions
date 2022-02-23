(** 
    Alan Huang  
    Ritwik Banerjee 
    CSE-216 Spring2022 
    HW#1
*)

(**#1*)
let rec pow x n = 
    match n with 
    | 0 -> 1
    | 1 -> x
    | _ -> x * pow x (n-1);;

let rec float_pow x n = 
    match n with 
    | 1 -> x
    | _ -> x *. float_pow x (n-1);; 

(**#2*)
let rec compress lst = 
    match lst with 
    | [] -> []
    | [x] -> [x]
    | h::t -> if h = List.hd then compress t else  h::compress t;;

(**#3*)
let rec remove_if lst funct = 
    match lst with 
    | [] -> []
    | h::t -> if funct h then remove_if t funct else  h::remove_if t funct;; 

(**4*)
let rec slice lst x y = 
    match lst with  
    | [] -> []
    | h::t -> if y > 1 && x < 1 then h::slice t (x-1) (y-1) else slice t (x-1) (y-1);;

(**5*)
let rec equivs funct lst =

(**#6*)
let rec prime = 

let goldbachpair x =;;

(**#7*)
let rec equiv_on f g lst = 
    match lst with 
    | [] -> true
    | h::t -> if (f h = g h) then equiv_on f g t else false;; 

(**#8*)
let rec pairwisefilter cmp lst = 
    match lst with
    | [] -> []
    | h::[] -> [h]
    | h::t -> cmp h (List.hd t)::pairwisefilter cmp (List.tl t);;

(**#9*)
let rec polynomial_helper lst funct= 
    match lst with
    | [] -> funct
    | (a, b)::t -> polynomial_helper t (fun x -> funct x + a * pow x b);;

let polynomial lst = 
    polynomial_helper lst (fun x -> 0);;

let f = polynomial [3, 3; -2, 1; 5, 0];;

f 2;;

(**#10*)
let powerset list = 