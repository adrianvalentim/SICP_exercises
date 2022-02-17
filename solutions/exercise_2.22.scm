#lang scheme
;Exercise 2.22

(define (square-list-solved items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (append answer
                    (list(square (car things)))))))
  (iter items empty))


(define (square x) (* x x))