#lang racket

10 ;10
(+ 5 3 4) ;12
(- 9 1) ;8
(/ 6 2) ;3
(+ (* 2 4)(- 4 6)) ;(+ 8 -2) = 6
(define a 3) ;a=3
(define b (+ a 1)) ;b=4
(+ a b (* a b)) ;(+ 3 4 12) = 19
(= a b) ;#f

(if (and (> b a) (< b (* a b))) ;#t -> b = 4
    b
    a)

(cond ((= a 4) 6) ;#f
      ((= b 4) (+ 6 7 a)) ;#t -> (+ 6 7 a) = 16
      (else 25))

(+ 2 (if (> b a) b a)) ;#t -> (+ 2 b) = 6

(* (cond ((> a b) a) ;#f
         ((< a b) b) ;#t -> b = 4
         (else -1))
   (+ a 1)) ;(* 4 4) = 16