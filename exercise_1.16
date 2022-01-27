#lang racket

;problem 1.16

(define (iter_fastexp base exp)
  (define result base)
  (fastexp_count base exp result))

(define (fastexp_count base exp result)
  (cond [(= exp 1) result]
        [(even? exp) (fastexp_count base (/ exp 2) (square result))]
        [else (fastexp_count base (- exp 1) (* result base))]))

(define (square a)
  (* a a))