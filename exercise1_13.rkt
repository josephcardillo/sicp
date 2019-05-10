#lang sicp

;;;; Exercise 1.13 (In Progress)

#||
(define (square x) (* x x))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
                x)))
                
(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))
||#


(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
         
(define phi1 (/ (+ 1 (sqrt 5)) 2))

(define phi2 (/ (- 1 (sqrt 5)) 2))

(define (nth x n)
  (nth-iter x x n))
  
(define (nth-iter x y count)
  (cond ((= count 1) y)
        ((> count 1)
         (nth-iter x (* y x) (- count 1)))
        (else 0)))
        


(nth 2 2)
(nth 2 3)

        


