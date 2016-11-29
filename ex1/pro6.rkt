#lang racket
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; (sqrt x)を実行すると無限ループになる
; new-ifは特殊形式ではないのでgood-enough?がtrueになった場合にも
; else節のsqrt-iterも評価されてしまうため