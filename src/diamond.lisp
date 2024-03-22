
(defun mirror (lines)
  (append lines (cdr (reverse lines))))

(defun diamond (letter)
  (mirror (cond ((equal 'A letter)
                 '((#\A)))
                ((equal 'B letter)
                 '((#\SPACE #\A #\SPACE)
                           (#\B #\SPACE #\B)))
                (T '((#\SPACE \#SPACE #\A #\SPACE #\SPACE)
                     (#\SPACE \#B #\SPACE #\B #\SPACE)
                     (#\C #\SPACE #\SPACE #\SPACE #\C))))))


