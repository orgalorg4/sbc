(deffacts h
 (multime A 2 5 1 0 8 3)
 (multime B 5 4 8 6)
 ;(multime R)
 ;(multime I)
 (multime D)
 )
 (defrule R69
 (multime A|B $? ?v $?)
 ?ad <-(multime R $?x)
 ;( multime ?a $? ?v $? )
 (not ( multime R $?r1 ?v $?r2 ))
 ; (multime ?b $? ?v $? ) 
 
 ;( not ( ( eq ?e ?v ) and ( eq ?e ?r ) ) )
; (not (multime ?a $?h~?e))
 
 =>
 (retract ?ad)
 (assert ( multime R $?x ?v  ) ) 
 ) 
 
 (defrule R699
 ?ad <-(multime I $?x)
 (and (multime A $? ?v $?)(multime B $? ?v $?)) 

 (not ( multime I $? ?v $? ))
 
 =>
 (retract ?ad)
 (assert ( multime I $?x ?v  ) ) 
 )
 
 (defrule R6999
 ?ad <-(multime D $?x)
 (and (multime A $? ?v $?) (not (multime B $? ?v $?))) 

 (not ( multime D $? ?v $? ))
 
 =>
 (retract ?ad)
 (assert ( multime D $?x ?v  ) ) 
 )