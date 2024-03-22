(require :asdf)
(require :lisp-unit)
(in-package :lisp-unit)
(setq *print-failures* t)
(load "src/diamond")

(define-test smallest-diamond-is-A
    (assert-equal '((#\A)) (diamond 'A)))

(run-tests :all)
(sb-ext:quit)
