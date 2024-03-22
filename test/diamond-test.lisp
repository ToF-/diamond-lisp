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

(run-tests :all)
(sb-ext:quit)
