#lang sicp

;;;; Exercise 1.11

#||
Here's how I tried to go about solving this. I first tried to simply translate the
function as defined in the book into Scheme:

A function f is defined by the rule that

f(n) = n if n < 3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3.

Which led to this...
||#

;;; Write a procedure that computes f by means of a recursive process:

(define (f n)
  (if (< n 3) n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

;;; The output of the following tests were:

(f -1)
(f 3)
(f 4)
(f 5)
(f 6)
(f 7)
(f 8)

-1
4
11
25
59
142
335

#||
This leads to "deferred operations". For example, if I were trying to find (f 6):
||#

(+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))
(+ (f 5) (* 2 (f 4)) (* 3 (f 3)))
(+ (+ (f 4) (* 2 (f 3)) (* 3 (f 2))) (* 2 (+ (f 3) (* 2 (f 2)) (* 3 (f 1)))) (* 3 (+ (f 2) (* 2 (f 1)) (* 3 (f 0)))))
; ...
(+ (+ 11 8 6) (* 2 (+ 4 4 3)) (* 3 (2 2 0)))
(+ (+ 25) (* 2 11) (* 3 4))
(+ 25 22 12)
59

#||
To translate this to an iterative process, I had to look back at the previous
examples regarding the factorial function, sequence of Fibonacci numbers and the
Counting Change example to get my bearings on the differences between recursive
and iterative processes.

It stood out that there were three functions being computed when (<= n 3). Which
seemed to suggest 

||#

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


      
      
  
