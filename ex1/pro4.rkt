#lang racket

;(> b 0) -> (+ a b)
;(< b 0) -> (- a b)
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 3 4) ;(+ 3 4) = 7
(a-plus-abs-b 3 -4) ;(- 3 -4) = 7