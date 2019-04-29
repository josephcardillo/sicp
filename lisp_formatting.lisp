;;;; Comment to describe program

;;; Basic comment

;; Comment indented with code

; Comment after a line of code

#|| 
multi-line
comment
||#

;;; To load file into clisp

;;; clisp file_name.lisp

;;; To load file from within clisp

;;; (load "file_name.lisp")

;;; To output data in terminal

;;; (format t "hello world ~%") ;; tilda/percent is for newline

;;; Another way to output data in terminal

(print "What's your name?")

;;; To define a global variable

(defvar *name* (read)) 

#|| if you want to read data from console and store it 
as a gobal variable - in this case, globalvariable. ||#

;;; To define a function

(defun hello-you (name)
    (format t "Hello ~a! ~%" name))
    
;;; ~a : shows the value
    
;;; By default lisp will output all data in uppercase letters.
 
(setq *print-case* :downcase)
 
#|| :capitalize would cap first letter.
:downcase - all lowercase. ||#
 
(hello-you *name*)

