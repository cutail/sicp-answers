
(define (make-accumulator n)
  (lambda (m) (begin (set! n (+ n m)) n)))
