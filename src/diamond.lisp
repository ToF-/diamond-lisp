
(defun mirror (xs)
  (append xs (cdr (reverse xs))))

(defun spaces (n)
    (if (eql 0 n)
      ()
      (cons #\SPACE (spaces (1- n)))))

(defun index-to-letter (index)
  (cond ((eql 0 index) #\A)
        ((eql 1 index) #\B)
        (T #\C)))


(defun pattern (left index right)
  (append (spaces left) (list (index-to-letter index)) (spaces right)))

  (defun diagonal (letter)
    (cond ((equal 'A letter)
           (list (pattern 0 0 0)))
          ((equal 'B letter)
           (list (pattern 1 0 0)
                 (pattern 0 1 1)))
          (T (list (pattern 2 0 0)
                   (pattern 1 1 1)
                   (pattern 0 2 2)))))


(defun diamond (letter)
  (mirror (mapcar #'mirror (diagonal letter))))
