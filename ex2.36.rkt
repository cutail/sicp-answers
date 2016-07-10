
(define (accumulate op init seq)
  (cond ((null? seq) init)
        (else (op (car seq) (accumulate op init (cdr seq))))))

(define (accumulate-n op init seqs)
  (cond ((null? (car seqs)) '())
         (else (cons (accumulate op init (map car seqs))
                     (accumulate-n op init (map cdr seqs))))))
