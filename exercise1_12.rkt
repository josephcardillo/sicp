#lang sicp

(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
         
(define (pascals-triangle n k)
  (cond ((or (= k 0) (= n k)) 1)
        (else (/ (factorial n)
                 (* (factorial k) (factorial (- n k)))))))

(pascals-triangle 0 0)
(pascals-triangle 1 0)
(pascals-triangle 2 1)
(pascals-triangle 4 2)
(pascals-triangle 8 3)
      