
(defun mirror (xs)
  (append xs (cdr (reverse xs))))

(defun diagonal (letter)
  (cond ((equal 'A letter)
         '((#\A)))
        ((equal 'B letter)
         '((#\SPACE #\A)
           (#\B #\SPACE)))
        (T '((#\SPACE #\SPACE #\A)
             (#\SPACE #\B #\SPACE)
             (#\C #\SPACE #\SPACE)))))


(defun diamond (letter)
  (mirror (mapcar #'mirror (diagonal letter))))
