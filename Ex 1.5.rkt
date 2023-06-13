#lang sicp
(define (p) (p))
(define (test x y)
(if (= x 0) 0 y))

(test 0 (p))


;https://sicp-solutions.net/post/sicp-solution-exercise-1-5/