(deffacts Liste
(lista L1 3)
(lista L2)
(lista L3 1 3 5)
(lista L4 1 2 3)
(lista L5 1 3 3 5)
(lista L6 3 4 2)
(lista L7 3 4)
(lista L8 1 3 4 2)
(lista L9 1 4 3 2) )

(defrule RH
    (lista ?l ?c $?li 3 ?h)
    
    =>
    (printout t ?l " " ?c " " $?li " 3 " ?h  crlf)
    )
    
(defrule RH2
    (lista ?l $?f 3 $?d)
    =>
    (printout t ?l " inainte: " $?f  "dupa: " $?d  crlf)
    )
    
(defrule RH3
    (lista ?e11 ?e2 $?restu ) 
    (lista ?e21 ?e2 $?rest2 )
    =>
    (printout t " l1 " ?e11" " ?e2 $?restu  " l2: " ?e21" " ?e2 $?rest2  crlf)
    )

(defrule Rh4
    (lista ? $?h )
    (lista ? $?h )
    =>
    (printout t "  L1 " $?h " "   "  L2: " $?h  crlf)
    )
    
(defrule RH5
    (lista ? $?j ?k $?l)
    (lista ? $?n ?k $?m)
    =>
    (printout t " ->l1 " $?j" " ?k $?l  " ->l2: " $?n " " ?k " "$?m  crlf)
    )
    