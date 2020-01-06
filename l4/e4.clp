(deffacts st
(student Ion AC 2 1200H Iasi)
(student Vasile Chimie 4 1404G Iasi)
(student Maria AC 4 1411H Botosani)
(student Popescu Mec 4 1304D NuIasi)
(student Ion3 Mec 4 1309C AltOras)
)

(defrule R14
    (student ?nume ?facultate ? ? Iasi)
    =>
    )
    
(defrule Rst1
    (student ?nume ? ? ?gr Iasi)
    =>
    (printout t "iasi: " ?nume  " " ?gr " "  crlf)
    )
    
    
(defrule Rst2
    (student ?nume AC 4 ? ?)
    =>
    (printout t "ac 4:" ?nume  " "  crlf)
    )

(defrule Rst3
    (student ?nume Mec 4 ? ?dom)
    =>
    (printout t "mec 4:" ?nume  " " ?dom crlf)
    )