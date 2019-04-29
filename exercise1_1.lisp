;;;; Exercise 1.1

(print 10)
; 10

(print
(+ 5 3 4))
; 12

(print
(- 9 1))
; 8

(print
(/ 6 2))
; 3

(print
(+ (* 2 4) (- 4 6)))
; 6

(defvar a 3)
(print a)
; a = 3

(defvar b (+ a 1))
(print b)
; b = 4

(print
(+ a b (* a b)))
; a + b + the product of a and b
; 3 * 4 = 12
; 3 + 4 + 12 = 19

(print
(= a b))
; false

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
