#lang racket
(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess x)
          guess
          (sqrt-iter (improve guess x)
                     guess
                     x)))

(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))

; 差が0.001未満になるようなxを求めているので
; 0.001よりも小さなxについて求められない
; > (sqrt 0.0001)
; 0.03230844833048122
; 非常に大きい数については、引き算を行った際に誤差が0.001
; よりも大きくなってしまうため、無限ループになっている？
; > (sqrt 1e50)
; 
; (define (good-enough? guess x)
;   (< (abs (- (square guess) x)) 0.001))
(define (good-enough? guess prev-guess x)
  (< (abs (- guess prev-guess)) (* guess 0.001)))
(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))