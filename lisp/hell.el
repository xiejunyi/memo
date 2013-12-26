'(this is my first list in LISP "hello, world")

(+ 2 (+ 2 123) 1000)

(Abc Defa)

'(Plus 11 11 Dfa D)

'(add dd)

fill-column

(concat "aaa" "bbb")

(substring "this is my first LISP program." 10) 

(substring "this is my first LISP program." 10 20) 


'(Plus 11 11 Dfa D)

(point)
(+ 2 fill-column)


(concat "The " (number-to-string (+ 2 fill-column)) " red foxes.")


(+)
(*)
(+ 100)
(* 101)
(+ 1 2 3)
(* 2 3 4)

(+ 2 'hell_)

'()

(message "hello world:)")

(message "the reuslt is %d" (+ 2 fill-column)) 

(message "the buffer name is %s %s" (buffer-name) "(aa)")

(message "there are %d %s in office!" 
         (- fill-column 10) 
         "swe")

(message "he saw %d %s in office."
         (- fill-column 10) 
         (concat "red " 
                 (substring "the quick brown foxes jumped" 
                            16 
                            21)
                 " leaping"
         )
)

(buffer-name)
(buffer-file-name)

(current-buffer)
(other-buffer)


(switch-to-buffer (other-buffer))

(set-buffer (other-buffer))

(point)

(switch-to-buffer (other-buffer (current-buffer) t))

(buffer-size)

(point-min)
(point-max)
(buffer-name)



(message "hello world:)")

(message "the reuslt is %d" (+ 2 fill-column)) 

(message "the buffer name is %s %s" (buffer-name) "(aa)")

(message "there are %d %s in office!" 
         (- fill-column 10) 
         "swe")

(message "he saw %d %s in office."
         (- fill-column 10) 
         (concat "red " 
                 (substring "the quick brown foxes jumped" 
                            16 
                            21)
                 " leaping"
         )
)

(buffer-name)
(buffer-file-name)

(current-buffer)
(other-buffer)


(switch-to-buffer (other-buffer))

(set-buffer (other-buffer))

(point)

(switch-to-buffer (other-buffer (current-buffer) t))

(buffer-size)

(point-min)
(point-max)
(buffer-name)

(defun multiply-by-seven (num)
       "my first Emacs Lisp function."
       (* 7 num))

(defun mbseven (num)    ; interactive version
       "my first Emacs Lisp function."
       (interactive "p")
       (message "the result is %d"  (* 7 num)))


(let ((zebra "stripes")
      (tiger "fiece"))
      (message "one is %s and another is %s "
               zebra  tiger))


(let ((a "hello")
       b
       (c   10)
       (d "world!"))
      (message "A %s B %s C %d D %s" 
               a b c d))


( let ((a 10)
       (b 2))
  
      (if (> a b )
          (message "a %d is greater than b %d "  
                   a b)))

(defun myfoo(charac)
       "type of animal, blabla"
        (interactive "p")
        (if (equal charac 'fiece)
           (message "this animal is tiger, charas is %s"
                     charac)    ; if part 
           (message "this animal is NOT tiger, charas is %s"
                    charac)))   ; else part 

(myfoo 'fiece) 
(myfoo 'stripes) 

(let ((a 10)  
      b )
     (if  (equal b nil)
        'true  
        'false) 
)


(save-excursion
(if nil
    'true
    'false)
)

(point-min)






