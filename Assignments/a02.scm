#lang sicp
;Q1
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;(A 1 5)
;(A (- 1 1)(A 1 (- 5 1)))
;(A 0 (A 1 4))
;(A 0 (A (- 1 1)(A 1 (- 4 1))))
;(A 0 (A 0 ( A 1 3))
;(A 0 (A 0 (A (- 1 1)(A 1 (- 3 1)))))
;(A 0 (A 0 ( A 0 ( A 1 2))))
;(A 0 (A 0 (A 0 (A (- 1 1)(A 1 (- 2 1))))))
;(A 0 (A 0 (A 0 ( A 0 ( A 1 1))))
;(A 0 (A 0 (A 0 ( A 0 2))))
;(A 0 (A 0 (A 0 4)))
;(A 0 (A 0 8))
;(A 0 16)
;32

;(A 2 3)
;(A (- 2 1)(A 1 (- 3 1))
;(A 1 ( A 1 2))
;(A 1 ((A (- 1 1)(A 1 (- 2 1))))
;(A 1(A 0( A 1 1)))
;(A 1(A 0 2))
;(A 1 4)
;(A (- 1 1)(A 1 (- 4 1)))
;(A 0 (A 1 3))
;(A 0 (A (- 1 1)(A 1 (- 3 1)))
;(A 0 ( A 0 ( A 1 2)))
;(A 0 (A 0 (A (- 1 1)(A 1 (- 2 1))))))
;(A 0 (A 0 ( A 0 ( A 1 1))))
;(A 0 (A 0 (A 0 2))))
;(A 0 (A 0 4)))
;(A 0 8))
;16
;-----------------------------------------------------------------------
;Q2
(define (f n)
( cond ((< n 3) n)
       ((>= n 3) (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

(define (f2 n)
  (define (iter a b c count)
    (cond ((= count n) a)
          (else (iter (+ a (* 2 b) (* 3 c)) a b (+ count 1)))))
  (cond ((< n 3) n)
        (else (iter 2 1 0 2))))
;-----------------------------------------------------------------------
; Q 3 and 4
(define (multiply x y)
  (define (double x) (+ x x))
  (define (halve x) (/ x 2))
  (define (iter x y z)
    (cond ((= y 0) z)
          ((even? y) (iter (double x) (halve y) z))
          (else (iter x (- y 1) (+ z x)))))
  (iter x y 0))
;----------------------------------------------------------------------
; Q5
; No, she is wrong as this procedure would be slower as its time complexity is logarithmic while the other was linear.
;