;;;; Exercise 1.3


(define (square x) (* x x))

(define (sum-of-squares x y)
    (+ (square x) (square y)))

(define (larger-num x y)
    (if (>= x y) x y))
    
(define (square-two-larger x y z)
(sum-of-squares (larger-num x y) (larger-num y z)))

Tests:
(square-two-larger 1 2 3)
;VALUE: 13

(square-two-larger 5 5 5)
;VALUE: 50

(square-two-larger -2 -3 4)
;VALUE: 20

