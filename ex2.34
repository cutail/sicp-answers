(define (accumulate op initial seq)
  (if (null? seq)
      initial
      (op (car seq) (accumulate op initial (cdr seq)))))

(define (horner-eval x seq)
  (accumulate (lambda (l r) (+ l (* x r)))
              0 seq))
