 (deffacts student
 (student Ion AC 2 1401 Iasi)
 (student Maria AC 3 1301A Bucuresti)
 (student Victor AC 2 1202B Brasov)
 (student Ana AC 4 1401A Pascani)
 (student AnaMaria AC 4 1411A Pascani)
 (student Ion2 AC 2 1401 Bucuresti)
 (student Ion3 AC 2 1401 nuIasi)
 (student AnaMaria ARTE 4 1411A Pascani)
 (student Ion2 MEC 2 1401 Bucuresti)
 (student Ion3 T 2 1401 nuIasi)
 (student AnaMaria AC 4 1404 Pascani)
 (student Ion2 AC 3 1401 Bucuresti)
 (student Ion3 AC 1 1401 nuIasi)
 )
 
 
 (defrule R1
 (student ?nume AC ? ? ~Iasi)
=> (printout t ?nume " este student la AC si nu are domiciliul in Iasi" crlf))
(defrule R2
 (student ?nume AC ? ? Iasi|Pascani|Brasov)
=> (printout t ?nume " este student la AC si este din Iasi sau Pascani sau Brasov" crlf))
(defrule R6
 (student ?nume AC ? ? ?x & ~Iasi)
=> (printout t ?nume " este student la AC si  nu are domiciliul in Iasi dar are domiciuliul in " ?x crlf))
(defrule R7
(declare (salience 2))
 (student ?nume AC ? ? ?x & Iasi|Pascani)
=> (printout t ?nume " este student la AC si este din  " ?x crlf))
(defrule R8
(declare (salience 3))
 (student ?nume1 AC 4 ?x ~Iasi)
 (student ?nume2 AC 4 ?y&~?x ~Iasi)
=> (printout t ?nume1 " de la grupa" ?x crlf))

(defrule R10
(student ?nume1 AC ? ?gr&1401|1402 ?dom&~Iasi)
(student ?nume2&~?nume1 AC ? ?gr ?dom | Bucuresti)
=>
(printout t "Studentii " ?nume1 " si " ?nume2 " din grupa " ?gr
" indeplinesc conditiile cerute" crlf) )

(defrule Rh2
(student ?nume1 ?fac&~AC ? 1401 ?)
=>
(printout t "Rh2 " ?nume1 " din facultatea " ?fac
" e din grupa 1401" crlf) 
)

(defrule Rh3
(student ?nume AC ?an&~2 ?gr&1401|1404 ?dom & ~Vrancea & ~Iasi & ~Pascani)
=>
(printout t "Rh3 nume" ?nume " dom: " ?dom "an de studii: " ?an " grupa: " ?gr)
)