#lang racket

;Exercise 1.30:

;the sum procedure as defined on section 1.2:
(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))

;the new iterative sum procedure:
(define (iter_sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))
  


