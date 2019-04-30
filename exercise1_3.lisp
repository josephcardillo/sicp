;;;; Exercise 1.3


(define (square x) (* x x))

(define (sum-of-squares x y)
    (+ (square x) (square y)))

(define (larger-num x y)
    (if (>= x y) x y))
    
(define (square-two-larger x y z)
(sum-of-squares (larger-num x y) (larger-num y z)))

(square-two-larger 1 2 3)

