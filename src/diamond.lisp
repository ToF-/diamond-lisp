
(defun mirror (xs)
  (append xs (cdr (reverse xs))))

(defun diamond (letter)
  (mirror (mapcar #'mirror (cond ((equal 'A letter)
                                  '((#\A)))
                                 ((equal 'B letter)
                                          '((#\SPACE #\A)
                                            (#\B #\SPACE)))
                                 (T '((#\SPACE #\SPACE #\A)
                                      (#\SPACE #\B #\SPACE)
                                      (#\C #\SPACE #\SPACE)))))))


