#lang sicp

;;;; Exercise 1.13 (In Progress)

;;; Square root function.

(define (sqrt x)
    (sqrt-iter 1.0 x))

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

;;; Square function.

(define (square x) (* x x))

;;; Linear iterative process for finding Fibonacci numbers.

(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0) b
      (fib-iter (+ a b) a (- count 1))))

;;; Define phi1 and phi2 since I don't have greek symbols at my fingertips.
         
(define phi1 (/ (+ 1 (sqrt 5)) 2))

(define phi2 (/ (- 1 (sqrt 5)) 2))

;;; Define a function to take any number to any power so that I can use it to prove the next section.

(define (nth x n)
  (nth-iter x x n))
  
(define (nth-iter x y count)
  (cond ((= count 1) y)
        ((> count 1)
         (nth-iter x (* y x) (- count 1)))
        ((= count -1) (/ 1 y))
        ((< count -1)
         (nth-iter x (* y x) (+ count 1)))
        (else 0)))

;;; Prove that Fib(n) is the closest integer to phi1^n / (sqrt 5)

(fib 1)
(/ (nth phi1 1) (sqrt 5))

; 1
; 0.7236067059356593

(fib 2)
(/ (nth phi1 2) (sqrt 5))

; 1
; 1.1708205768786706

(fib 3)
(/ (nth phi1 3) (sqrt 5))

; 2
; 1.8944280256081427

(fib 4)
(/ (nth phi1 4) (sqrt 5))

; 3
; 3.06524980435279

(fib 3)
(/ (- (nth phi1 3) (nth phi2 3)) (sqrt 5))

; 2
; 2.0000010265159327





        


