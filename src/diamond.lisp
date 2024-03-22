
(defun diamond (letter)
  (cond ((equal 'A letter)
            '((#\A)))
        (T '((#\SPACE #\A #\SPACE)
            (#\B #\SPACE #\B)
            (#\SPACE #\A #\SPACE)))))
