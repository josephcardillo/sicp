;;;; Exercise 1.7

#|| The good-enough? test used in computing square roots will not be
very effective for finding the square roots of very small numbers.
Also, in real computers, arithmetic operations are almost always
performed with limited precision. This makes our test inadequate
for very large numbers. Explain these statements, with examples
showing how the test fails for small and large numbers.

An alternative strategy for implementing good-enough? is to
watch how guess changes from one iteration to the next and to
stop when the change is a very small graction of the guess. 

Design a square-root procedure that uses this kind of end test.
Does this work better for small and large numbers? ||#


#|| Here is the procedure for computing square roots given on pages
22 - 24 ||#

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
    
   
#|| When calculating the sqrt of 4, a very large number, and a
very small number, I get the following results ||#

(sqrt 4)
;Value: 2.0000000929222947

(sqrt 34969578659483338485669786657445586943457688)
;Value: 5.913508151637515e21
;Value: 5.91354155764574e21

(sqrt 0.000000000000004706970669767955584485)
;Value: .03125000000005016



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
    
(sqrt 4)

;Value: 2.000609756097561

(sqrt 34969578659483338485669786657445586943457688)
;Value: 5.91354155764574e21

(sqrt 0.000000000000004706970669767955584485)
;Value: 6.862111653794791e-8

(square 6.862111653794791e-8)
;Value: 4.708857634914628e-15