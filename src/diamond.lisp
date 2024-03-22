
(defun mirror (xs)
  (append xs (cdr (reverse xs))))

(defun diamond (letter)
  (mirror (cond ((equal 'A letter)
                 '((#\A)))
                ((equal 'B letter)
                 (mapcar #'mirror
                         '((#\SPACE #\A)
                           (#\B #\SPACE))))
                (T (mapcar #'mirror
                           '((#\SPACE #\SPACE #\A)
                             (#\SPACE #\B #\SPACE)
                             (#\C #\SPACE #\SPACE)))))))


