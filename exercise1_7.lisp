;;;; Exercise 1.7


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
    
#||

(sqrt 4)
;Value: 2.0000000929222947

(sqrt 34969578659483338485669786657445586943457688)
;Value: 5.913508151637515e21

(sqrt 0.000000000000004706970669767955584485)
;Value: .03125000000005016

||#

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