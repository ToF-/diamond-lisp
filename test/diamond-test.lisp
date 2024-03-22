(require :asdf)
(require :lisp-unit)
(in-package :lisp-unit)
(setq *print-failures* t)
(load "src/diamond")

(define-test smallest-diamond-is-A
    (assert-equal '((#\A)) (diamond 'A)))

(define-test diamond-B-is-3-by-3-A-B-B-A
    (assert-equal '((#\SPACE #\A #\SPACE)
                    (#\B #\SPACE #\B)
                    (#\SPACE #\A #\SPACE))
                  (diamond 'B)))

(define-test diamond-C-is-5-by-5-A-B-B-C-C-B-B-A
    (assert-equal '((#\SPACE #\SPACE #\A #\SPACE #\SPACE)
                    (#\SPACE #\B #\SPACE #\B #\SPACE)
                    (#\C #\SPACE #\SPACE #\SPACE #\C)
                    (#\SPACE #\B #\SPACE #\B #\SPACE)
                    (#\SPACE #\SPACE #\A #\SPACE #\SPACE))
                  (diamond 'C)))

(run-tests :all)
(sb-ext:quit)
