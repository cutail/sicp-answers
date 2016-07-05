;;; show the usage of high order functions
;;; (if (> b 0) + -)
(define a-plus-abs-b (lambda (a b) ((if (> b 0) + -) a b)))
