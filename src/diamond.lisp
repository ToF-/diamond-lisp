
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
        (T (list (append (spaces 2) (list #\A) (spaces 0))
                 (append (spaces 1) (list #\B) (spaces 1))
                 (append (spaces 0) (list #\C) (spaces 2))))))


(defun diamond (letter)
  (mirror (mapcar #'mirror (diagonal letter))))
