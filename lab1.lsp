;;;;
;;; @file main.lisp
;;;
;;; @brief 
;;;  This program will create the following s-expressions and output the value
;;;  to standard output:
;;;    1. form to calculate 6*5
;;;    2. form to determine the length of the list (a b c d e)
;;;    3. form to return the 3rd element from the above list, by its index value
;;;    4. form to return the remainder of the list from #2, beginning with c
;;;    5. s-expresssion that explicitly treats (+ 5 (- 9 3)) like data 
;;;       rather than calculations
;;;    6. form to force the evaluation of '(+ 8 9)
;;;    7. form to load "myfile.lsp"
;;;    8. form to create a symbol count and initialize it to 0
;;;    9. form to write Hello World
;;;    10. form to exit the interpretter
;;;
;;; @author Athit Vue
;;;;

(princ "These outputs verify the correctness")
(princ " of the S-expression form created:")
(write-line " ")
; 1. Form to calculate 6*5
(let ((x (eval (* 6 5)))) 
  (princ "  1. ")(write x)(write-line "")
)

; 2. Form to determine the length of the list (a b c d e)
(let ((x (list-length '(a b c d))))
  (princ "  2. ")(write x)(write-line "")
)

; 3. Form to return the 3d element from the above list by its index value
(let ((x (third '(a b c d))))
  (princ "  3. ")(write x)(write-line "")
)

; 4. Form to return the remainder of the list from #2, beginning with c
(let ((x (member 'c '(a b c d))))
  (princ "  4. ")(write x)(write-line "")
)

; 5. S-expression that explicitly treats (+ 5 (- 9 3)) like data
(let ((x (list '(+ 5 (- 9 3)))))
  (princ "  5. ")(write x)(write-line "")
)

; 6. Form to force the evaluation of '(+ 8 9)
(let ((x (eval '(+ 8 9))))
  (princ "  6. ")(write x)(write-line "")
)

; 7. Form to load "myfile.lsp"
(princ "  7. ")
(load "myfile.lsp") ; I am assuming this file does exists!

; 8. Form to create a symbol count and initilize it to 0
(let ((count 0)) ; Declaring variable locally (use setq for global)
  (princ "  8. Count = ")(write count)(write-line "")
)

; 9. Write Hello World
(princ "  9. ")
(write "Hello World")(write-line "")

; 10. Form to exit the interpreter
(princ "  10. Exiting the interpreter clisp!!!")
(quit)

;;(princ "10. Would you like to exit the interpreter? (y or n)")
;;(let ((x (read)))
;;  (if (eql x 'y)
;;    (quit) ; if yes, then quit
;;    (princ "Ok, I wont exit clisp!")
;;  )
;;)
