#lang sicp

;;;; Exercise 1.11
;;; Write a procedure that computes f by means of a recursive process:

(define (f n)
  (if (< n 3) n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


;;; Write a procedure that computes f by means of an iterative process:

(define (f n)
  (f-iter 2 2 0 n))

(define (f-iter a b c count)
  (cond ((< count 3) count)
        ((= count 3) (+ a b c))
        (else (f-iter (+ a b c) (+ a a) (- (* b 2) (/ b 2)) (- count 1)))))

;;; Using block structure:

(define (f n)
  (define (iter a b c count)
    (cond ((< count 3) count)
          ((= count 3) (+ a b c))
          (else (iter (+ a b c) (+ a a) (- (* b 2) (/ b 2)) (- count 1)))))
  (iter 2 2 0 n))
    
;;; Tests:

(f -1)
(f 3)
(f 4)
(f 5)
(f 6)
(f 7)
(f 8)
      
      
      
  
