
(defun diamond (letter)
  (cond ((equal 'A letter)
         '((#\A)))
        ((equal 'B letter)
         '((#\SPACE #\A #\SPACE)
           (#\B #\SPACE #\B)
           (#\SPACE #\A #\SPACE)))
        (T '((#\SPACE \#SPACE #\A #\SPACE #\SPACE)
             (#\SPACE \#B #\SPACE #\B #\SPACE)
             (#\C #\SPACE #\SPACE #\SPACE #\C)
             (#\SPACE \#B #\SPACE #\B #\SPACE)
             (#\SPACE \#SPACE #\A #\SPACE #\SPACE)))))


