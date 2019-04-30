;;;; Exercise 1.1

10
; VALUE: 10

(+ 5 3 4)
; VALUE: 12

(- 9 1)
; VALUE: 8

(/ 6 2)
; VALUE: 3

(+ (* 2 4) (- 4 6))
; VALUE: 6

(define a 3)

(define b (+ a 1))
; VALUE: 4

(+ a b (* a b))
; a + b + the product of a and b
; 3 * 4 = 12
; 3 + 4 + 12 = 19
; VALUE: 19

(= a b)
; VALUE: #f

(if (and (> b a) (< b (* a b)))
    b
    a)
; if b is greater than a AND b is less than the product of a and b, then return b. else return a.
; VALUE: 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; VALUE: 16

(+ 2 (if (> b a) b a))
; 2 + (if b is greater than a, return b, else return a.)
; b is greater than a (4 > 3), so 2 + 4 = 6
; VALUE: 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
    (+ a 1))
#|| In english: If a is great than b, then return a. Else if a is less than
b, return b. If neither is true, return -1. Then multiply the returned value by
the sum of a + 1.

Since b = 4 and a = 3
a is less than b.

Therefore this evaluates to:
(* 4 (+ 3 1))
(* 4 4)
||#
; VALUE: 16