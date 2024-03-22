
(defun mirror (xs)
  (append xs (cdr (reverse xs))))

(defun spaces (n)
    (if (eql 0 n)
      ()
      (cons #\SPACE (spaces (1- n)))))

(defun diagonal (letter)
  (cond ((equal 'A letter)
         '((#\A)))
        ((equal 'B letter)
         '((#\SPACE #\A)
           (#\B #\SPACE)))
        (T (list (append (spaces 2) (list #\A))
                 (list #\SPACE #\B #\SPACE)
                 (list #\C #\SPACE #\SPACE)))))


(defun diamond (letter)
  (mirror (mapcar #'mirror (diagonal letter))))
