;;;; Exercise 1.7

#|| The good-enough? test used in computing square roots will not be
very effective for finding the square roots of very small numbers.
Also, in real computers, arithmetic operations are almost always
performed with limited precision. This makes our test inadequate
for very large numbers. Explain these statements, with examples
showing how the test fails for small and large numbers. ||#


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
    

#|| sqrt of 4 ||#

(sqrt 4)
;Value: 2.0000000929222947


#|| sqrt of a very large number ||#

(sqrt 34969578659483338485669786657445586943457688)
;Value: 5.913508151637515e21

#|| However, when I square this value, I get the following: ||#

(square 5.913508151637515e21)
;Value: 3.496957865948334e43

#|| In other words, this would look like:
34969578659483340000000000000000000000000000
Which is a much different (smaller) number than the original. ||#


#|| sqrt of a very small number ||#

(sqrt 0.000000000000004706970669767955584485)
;Value: .03125000000005016

(square .03125000000005016)
;Value: 9.76562500003135e-4

#|| These examples seem to explain the statement: "...will not
be very effective for finding the square roots of very small numbers...
This makes our test inadequate for very large numbers." ||#

#|| An alternative strategy for implementing good-enough? is to
watch how guess changes from one iteration to the next and to
stop when the change is a very small graction of the guess. 

Design a square-root procedure that uses this kind of end test.
Does this work better for small and large numbers? ||#

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
                x)))
                
(define (improve guess x)
    (average guess (/ x guess)))

#|| I added this change function to calculate the difference
between the guess and the improved guess ||#
    
(define (change guess x)
    (abs (- guess (improve guess x))))

(define (average x y)
    (/ (+ x y) 2))
    
(define (sqrt x)
    (sqrt-iter 1.0 x))
    
#|| I changed the good-enough? function to be "good-enough" if
the difference between the guess and the next guess was less
than a very small fraction of the guess (or 1/1000 of the guess) ||#

(define (good-enough? guess x)
    (< (change guess x) (* 0.001 guess)))
    
#|| How does this change the values when calculating the sqrt of
very large and very small numbers? It's less accurate for very
large numbers, and more accurate for very small numbers. ||#

(sqrt 4)

;Value: 2.000609756097561

(sqrt 34969578659483338485669786657445586943457688)
;Value: 5.91354155764574e21

(square 5.91354155764574e21)
;Value: 3.4969973754003204e43

(sqrt 0.000000000000004706970669767955584485)
;Value: 6.862111653794791e-8

(square 6.862111653794791e-8)
;Value: 4.708857634914628e-15