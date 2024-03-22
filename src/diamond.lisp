
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
         (list (pattern 0 #\A 0)))
        ((equal 'B letter)
         (list (pattern 1 #\A 0)
               (pattern 0 #\B 1)))
        (T (list (pattern 2 #\A 0)
                 (pattern 1 #\B 1)
                 (pattern 0 #\C 2)))))


(defun diamond (letter)
  (mirror (mapcar #'mirror (diagonal letter))))
