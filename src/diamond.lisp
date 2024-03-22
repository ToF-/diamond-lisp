
(defun mirror (lines)
  (append lines (cdr (reverse lines))))

(defun diamond (letter)
  (cond ((equal 'A letter)
         (mirror '((#\A))))
        ((equal 'B letter)
         (mirror '((#\SPACE #\A #\SPACE)
                   (#\B #\SPACE #\B))))
        (T (mirror '((#\SPACE \#SPACE #\A #\SPACE #\SPACE)
                     (#\SPACE \#B #\SPACE #\B #\SPACE)
                     (#\C #\SPACE #\SPACE #\SPACE #\C))))))


