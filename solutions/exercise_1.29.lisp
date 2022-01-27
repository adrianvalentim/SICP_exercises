#lang racket

;Exercise 1.29

;sum procedure defined

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))


(define (add1 i)
  (+ i 1))


(define (simpsons_integral f a b n)
  
  (define h (/ (- b a) n))
  
  (define (next_term i)
    (cond [(= i 0) (f (+ a (* i h)))]
          [(even? i) (* 2 (f (+ a (* i h))))]
          [else (* 4 (f (+ a (* i h))))]))
  
  (* (/ h 3) (sum next_term 0 add1 n)))







