#lang scheme
(define eps 1e-12)
(define (triple x) (* x x x))
(define (good-enough guess x)
  (< (abs (- (triple guess) x)) eps))
(define (improve y x) (/ (+ (/ x (* y y)) (* 2.0 y)) 3.0))
(define (cube-iter guess x)
  (if (good-enough guess x)
      guess
      (cube-iter (improve guess x) x)))
(cube-iter 1.0 27)