#lang sicp

;;;; Exercise 1.13 (In Progress)

#||
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
  (nth-iter x n))
  
(define (nth-iter x count)
  (cond ((= count 0) x)
        ((> count 0)
         (nth-iter (square x) (- count 1)))
        (else 2)))

(define (square x) (* x x))

(nth 2 2)
(nth 2 4)
(nth 4 2)

;I'm trying to create a function that takes x to the nth power.
; need to come up with cond for neg exponents.
        





#||
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
                x)))
                
(define (improve guess x)
    (average guess (/ x guess)))


(define (change guess x)
    (abs (- guess (improve guess x))))

(define (average x y)
    (/ (+ x y) 2))
    
(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (good-enough? guess x)
    (< (change guess x) (* 0.001 guess)))
||#