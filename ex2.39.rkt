
(define (fold-left op init seq)
  (define (iter result rest)
    (if (null? rest) result
        (iter (op result (car rest)) (cdr rest))))
  (iter init seq))

(define (fold-right op init seq)
  (cond ((null? seq) init)
        (else (op (car seq) (fold-right op init (cdr seq))))))

(define (reverse-r seq)
  (fold-right (lambda (x y) (append y (list x))) '() seq))

(define (reverse-l seq)
  (fold-left (lambda (x y) (cons y x)) '() seq))
