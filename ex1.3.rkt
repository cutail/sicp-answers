(define (square x) (* x x))
(define (square-sum x y) (+ (square x) (square y)))

(define (bigger-two x y . slice)
  (cond ((null? slice) (list x y))
        (else (if (< x y) (cond ((> (car slice) x) (apply bigger-two y (car slice) (cdr slice)))
                                (else (apply bigger-two x y (cdr slice))))
                  (cond ((> (car slice) y) (apply bigger-two x (car slice) (cdr slice)))
                        (else (apply bigger-two y x (cdr slice))))))))

(define (bigger-sum-of-squares x y z)
  (apply square-sum (bigger-two x y z)))