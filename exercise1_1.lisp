;;;; Exercise 1.1

(print 10)
; ANSWER: 10

(print
(+ 5 3 4))
; ANSWER: 12

(print
(- 9 1))
; ANSWER: 8

(print
(/ 6 2))
; ANSWER: 3

(print
(+ (* 2 4) (- 4 6)))
; ANSWER: 6

(defvar a 3)
(print a)
; ANSWER: 3

(defvar b (+ a 1))
(print b)
; ANSWER: 4

(print
(+ a b (* a b)))
; a + b + the product of a and b
; 3 * 4 = 12
; 3 + 4 + 12 = 19
; ANSWER: 19

(print
(= a b))
; ANSWER: false / NIL

(print
(if (and (> b a) (< b (* a b)))
    b
    a))
; if b is greater than a AND b is less than the product of a and b, then return b. else return a.
; ANSWER: 4

(print
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)))
; ANSWER: 16

(print
(+ 2 (if (> b a) b a)))
; 2 + (if b is greater than a, return b, else return a.)
; b is greater than a (4 > 3), so 2 + 4 = 6
; ANSWER: 6

(print
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
    (+ a 1)))
#|| In english: If a is great than b, then return a. Else if a is less than
b, return b. If neither is true, return -1. Then multiply the returned value by
the sum of a + 1.

Since b = 4 and a = 3
a is less than b.

Therefore this evaluates to:
(* 4 (+ 3 1))
(* 4 4)
||#
; ANSWER: 16

