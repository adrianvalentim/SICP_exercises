#lang racket

;exercise 2.18

(define (last-pair list)
  (if (null? (cdr list))
      (car list)
      (cons (last-pair (cdr list)) (car list))))

(define test (list 1 2 3 4))

(display (last-pair test))

