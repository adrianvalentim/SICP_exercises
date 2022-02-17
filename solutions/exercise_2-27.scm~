#lang racket

;Exercise 2.27

(define (deep-reverse tree)
  (if (pair? tree)
      (cons (deep-reverse (cdr tree)) (deep-reverse (car tree)))
      tree))

;Tests

(define test (list (list 1 2 3) (cons 4 5) 6 (cons 7 (cons 9 10))))

(display test)
(display "\n")

(display (deep-reverse test))


