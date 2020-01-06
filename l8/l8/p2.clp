 (deffacts student
 (student Ion AC 2 1401 Iasi)
 (student Maria AC 3 1301A Bucuresti)
 (student Victor AC 2 1202B Brasov)
 (student Ana AC 4 1401A Pascani)
 (student AnaMaria AC 4 1411A Pascani)
 (student Ion21 AC 2 1401 Bucuresti)
 (student Ion31 AC 2 1401 nuIasi)
 (student AnaMaria ARTE 4 1411A Pascani)
 (student Ion22 MEC 2 1401 Bucuresti)
 (student Ion32 T 2 1401 nuIasi)
 (student AnaMaria AC 4 1404 Pascani)
 (student Ion23 AC 3 1401 Bucuresti)
 (student Ion33 AC 1 1401 nuIasi)
 
 (caut-student 1401 nuIasi)
 )
 
 (defrule R1
 (caut-student ?gr ?dom)
 (student ?nume1 ? ? ?gr ?dom )
 =>
 (printout t "R1 ambele: " ?nume1 crlf)
 )
 (defrule R2
 (caut-student ?gr ?dom)
 (student ?nume1 ? ? ?gr ?d&~?dom )
 =>
 (printout t "R2 grupa si alt domiciliu: " ?nume1 crlf )
 )
 
 (defrule R3
 (caut-student ?gr ?dom)
 (student ?nume1 ? ? ?g&~?gr ?dom )
 =>
 (printout t "R3 domiciliu si alta grupa: " ?nume1 crlf )
 )
 
 (defrule R4
 (student ?nume ?fac&~AC ?an&3|4 ?gr ?dom&~Iasi)
 (student ?nume ?fac|Textile 