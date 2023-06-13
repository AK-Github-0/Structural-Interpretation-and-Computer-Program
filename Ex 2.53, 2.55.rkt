#lang sicp
(list 'a 'b 'c)
(list (list 'george))
(cdr '((x1 x2) (y1 y2)))
(cadr '((x1 x2) (y1 y2)))
(pair? (car '(a short list)))
(define (memq item x)



(cond ((null? x) false)
((eq? item (car x)) x)
(else (memq item (cdr x)))))

(memq 'red '((red shoes) (blue socks)))
(memq 'red '(red shoes blue socks))

(eq? '(this is a list) '(this is a list))
(eq? '(this is a list) '(this (is a) list))

;(eq? list'(a b) list'(a b))
list'(a b)

(car ''abracadabra)
;quote ' is special form so it is printed
