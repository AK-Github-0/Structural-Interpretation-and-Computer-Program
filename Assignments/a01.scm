#lang sicp
;Question 1
(define (evennumbers x y z)
  (cond ((and (even? x)(even? y)) #t)
        ((and (even? y)(even? z)) #t)
        ((and (even? z) (even? x)) #t)
         (else #f)))

;Question 2
(define (tax salary)
  (cond ((< salary 20000) 0)
        ((and (>= salary 20000)(< salary 50000)) (* salary 0.1))
        ((and (>= salary 50000)(< salary 500000)) (* salary 0.2))
        ((>= 500000) (* salary 0.3))))
;Question 3
(define (mod a b)
  (remainder a b))
(define (GCD a b)
  (if (= b 0)
      a
      (GCD b (mod a b))))

;Question 4
(define (cube x) (* x x x))

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.00000000001))

(define (cube-root-iter guess x)
  (if (good-enough? (improve guess x) guess)
      guess
      (cube-root-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))


(define (cube-root x)
  (cube-root-iter 1.0 x))

;Question 5
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define(square x)(* x x))

(define (new-if predicate then-clause else-clause)
(cond (predicate then-clause)
(else else-clause)))

;(define (sqrt-iter guess x)
;(new-if (good-enough? guess x)
;guess
;(sqrt-iter (improve guess x) x)))

;Upon using the new if the function stucks in infinite loop as functions we make
;are not special forms and in the new if each sub expression is evaluated
;while the actual if is a special form.
