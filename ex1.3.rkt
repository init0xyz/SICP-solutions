#lang scheme
(define (triple-min a b c)
  (cond ((and (<= a b) (<= a c)) a)
        ((and (<= b a) (<= b c)) b)
        ((and (<= c a) (<= c b)) c)))

(define (max2sum a b c)
  (define minValue (triple-min a b c))
  (cond ((= minValue a) (+ b c))
        ((= minValue b) (+ a c))
        ((= minValue c) (+ a b))
     )
  )

(max2sum 1 2 3)