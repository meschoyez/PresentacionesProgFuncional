;(assert (leche))
;(assert (chocolate))
;(assert (cafe))

(defrule submarino ; una receta
    (chocolate)
    (leche)
=>
    (assert (hay submarino))
)

(defrule cortado
    (cafe)
    (leche)
=>
    (assert (hay cortado))
)

(defrule te-solo
    (agua)
    (saquito)
=>
    (assert (hay te-solo))
)

(defrule te-con-leche
    (agua)
    (leche)
    (saquito)
=>
    (assert (hay te-con-leche))
)

(defrule menu
    (hay ?bebida)
=>
    ; (printout t "Menu" crlf)
    (printout t ?bebida crlf)
)
