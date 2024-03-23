
(defun mirror (xs)
  (append xs (cdr (reverse xs))))

(defun spaces (n)
    (if (eql 0 n)
      ()
      (cons #\SPACE (spaces (1- n)))))

(defun index-to-letter (index)
  (code-char (+ index 65)))


(defun pattern (left index right)
  (append (spaces left) (list (index-to-letter index)) (spaces right)))

(defun patterns-aux (index max-index)
    (if (> index max-index)
      ()
      (let* ((left (- max-index index))
             (right (- max-index left)))
        (cons (pattern left index right)
              (patterns-aux (1+ index) max-index)))))

(defun letter-to-index (letter)
  (- (char-code (car (coerce (string letter) 'list))) 65))

(defun patterns (index)
   (patterns-aux 0 index))

(defun diagonal (letter)
  (patterns (letter-to-index letter)))

(defun diamond (letter)
  (mirror (mapcar #'mirror (diagonal letter))))

(defun pretty-print (diamond)
  (coerce (apply 'concatenate 'list
                 (mapcar (lambda (line)
                           (append line (list #\NEWLINE)))
                         diamond)) 'string))
