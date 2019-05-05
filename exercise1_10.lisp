;;;; Exercise 1.10

(define (A x y)
    (cond ((= y 0) 0)
         ((= x 0) (* 2 y))
         ((= y 1) 2)
         (else (A (- x 1)
                  (A x (- y 1))))))

#|| To get a feel for what Ackerman's function is actually doing:

(A (- x 1) (A x (- y 1)))

(A 2 2)
(A (- 2 1) (A 2 (- 2 1)))
(A 1 (A 2 1))
(A 1 2)
(A (- 1 1) (A 1 (- 2 1)))
(A 0 (A 1 1))
(A 0 2)

;VALUE: 4

(A 2 3)
(A (- 2 1) (A 2 (- 3 1)))
(A 1 (A 2 2))
(A 1 (A (- 2 1) (A 2 (- 2 1))))
(A 1 (A 1 (A 2 1)))
(A 1 (A 1 2))
(A 1 (A (- 1 1) (A 1 (- 2 1))))
(A 1 (A 0 (A 1 1)))
(A 1 (A 0 2))
(A 1 4)
(A (- 1 1) (A 1 (- 4 1)))
(A 0 (A 1 3))
(A 0 (A (- 1 1) (A 1 (- 3 1))))
(A 0 (A 0 (A 1 2)))
(A 0 (A 0 (A (- 1 1) (A 1 (- 2 1)))))
(A 0 (A 0 (A 0 (A 1 1))))
(A 0 (A 0 (A 0 2)))
(A 0 (A 0 4))
(A 0 8)

;VALUE: 16

I made the mistake of running (A 3 4), which broke Racket!
CPU and MEM were off the hook. Had to kill the process.

As for the question in the book, though:

Consider the following procedures, where A is the procedure
above:

(define (f n) (A 0 n))
; Computes n * 2

(define (g n) (A 1 n))
; (if (= n 1) 0 2^n)

(define (h n) (A 2 n))
(h 0) = 0
0^n
0

(h 1) = 2
When n = 1, (h 1) = 2^1
2

(h 2) = 4
When n = 2, (h 2) = 2^2
2^2

(h 3) = 16
When n = 3, (h 3) = 2^4
2^2^2

(h 4) = 65536
When n = 4, (h 4) = 2^16
2^2^2^2^2

(h 5) = ???
When n = 5, (h 5) = 2^65536
2^2^2^2^2^2^2^2^2^2^2^2^2^2^2^2^2^2

(if (= n 0) 0 
    2^(h (n-1)))

(define (k n) (* 5 n n))
Computes 5n^2
||#
