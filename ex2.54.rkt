(define equal?
  (lambda (l r)
    (cond ((and (pair? l) (pair? r))
           (cond ((and (null? l) (null? r)) #t)
                 ((or (null? l) (null? r)) #f)
                 (else (and (eq? (car l) (car r)) (equal? (cdr l) (cdr r))))))
           ((and (not (pair? l)) (not (pair? r)))
           (eq? l r))
           (else #f))))
