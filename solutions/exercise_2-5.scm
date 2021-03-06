#lang racket

;problem 2.5

#|
It's nice to remember that by the Fundamental Theorem of Arithmetic any natural number greater than 1
has a unique representation as a product of prime numbers. It follows that after calculating (2^a)(3^b)
we can always recover a,b by just finding the prime representation of such a number. We could have also
used any other two prime numbers as basis -- there's nothing special about 2 and 3.
|#

(define (make-pair a b)
  (* (expt 2 a) (expt 3 b)))

(define (car x)
  (define a 0)
  (factor-finder x 2 a))

(define (cdr x)
  (define b 0)
  (factor-finder x 3 b))

;receives number
(define (factor-finder number divisor factor)
  (if (= (remainder number divisor) 0)
      (factor-finder (/ number divisor) divisor (+ factor 1))
      factor))




