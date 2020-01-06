(defrule R17
(lista ?nume $?)
=>
(printout t "S-a gasit lista cu numele " ?nume crlf)
)

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