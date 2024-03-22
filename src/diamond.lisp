
(defun mirror (xs)
  (append xs (cdr (reverse xs))))

(defun spaces (n)
    (if (eql 0 n)
      ()
      (cons #\SPACE (spaces (1- n)))))

(defun pattern (left letter right)
    (append (spaces left) (list letter) (spaces right)))

(defun diagonal (letter)
  (cond ((equal 'A letter)
         '((#\A)))
        ((equal 'B letter)
         '((#\SPACE #\A)
           (#\B #\SPACE)))
        (T (list (pattern 2 #\A 0)
                 (pattern 1 #\B 1)
                 (pattern 0 #\C 2)))))


(defun diamond (letter)
  (mirror (mapcar #'mirror (diagonal letter))))
