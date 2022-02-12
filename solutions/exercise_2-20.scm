#lang racket

;exercise 2.20

(define (same-parity . _list)
  (if (odd? (car _list))
      (parity-returner _list odd?)
      (parity-returner _list even?)))


(define (parity-returner _list parity)
  (cond [(null? _list) empty]
        [(parity (car _list)) (cons (car _list) (parity-returner (cdr _list) parity))]
        [else (parity-returner (cdr _list) parity)]))
