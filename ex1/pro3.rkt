#lang racket

(define (max x y)
  (if (> x y)
      x
      y))

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

; two-large-numbers-sum-of-squares
(define (f x y z)
  (cond ((> x (max y z)) (sum-of-squares x (max y z)))
        ((> y (max z x)) (sum-of-squares y (max z x)))
        (else (sum-of-squares z (max x y)))))