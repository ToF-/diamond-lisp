test: test/diamond-test.lisp src/diamond.lisp
	sbcl --load ~/.sbclrc --script test/diamond-test.lisp
