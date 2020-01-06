(deffacts fapte	
	(nod A alb 5 B C D E I )
	(nod B rosu 2 D E )
	(nod C verde 1 F )
	(nod D alb 0 )
	(nod E galben 2 G H )
	(nod F rosu 0 )
	(nod G verde 1 H )
	(nod H galben 3 nod1 B C )
	(nod I alb 2 F nod1 )
	(nod nod1 alb 0 )
	)
	
;(defrule 1AR
;	(nod ?nume alb|rosu $?)
;	=>(printout t "nume nod alb sau rosu: " ?nume crlf)
;	)
	
;(defrule 2odd
;	(nod ?nume ? ?x $?)
;	(test (oddp ?x))
;	=>(printout t "nod cu nr impar de succesori: " ?nume crlf)
;	)

;(defrule 3nuNod1
;	(nod ?nume ? ? $?nods)
;	(not (nod ?nume ? ? $? nod1 $?))
;	=>(printout t "nod fara nod1: " ?nume crlf)
;	)

;(defrule R4nrUnic
;	(nod ?nume ? ?nr $?)
;	(not (nod ?n&~?nume ? ?nr $?))
;	=>(printout t "nod cu nr unic de succesori: " ?nume crlf)
;	)
	
	
;(defrule R5_1
;	(not (multime-noduri-succesoare $?))
;	=>(assert (multime-noduri-succesoare ))
;	)
;(defrule R5
;	(nod ? ? ? $? ?nod $?)
;	?adr<-(multime-noduri-succesoare $?nods)
;	(not (multime-noduri-succesoare $? ?nod $?))
;	=>
;	(retract ?adr)
;	(assert (multime-noduri-succesoare $?nods ?nod))
;	)

;(defrule R6
;	(nod ?nume ?culoare ?nr $?)
;	(not (nod ?nume2&~?nume ?culoare ?nr2&:(< ?nr2 ?nr) $?))
;	=>(printout t "minim noduri pt coloarea " ?culoare " este nod " ?nume crlf)
;	)

(defrule RII
	?adr<-(nod ?nume ?culoare ?nr $?n1 ?nod $?n2)
	(nod ?nod ?culoare ? $?)
	=>
	(retract ?adr)
	(assert (nod ?nume ?culoare (- ?nr 1) $?n1 $?n2))
	)