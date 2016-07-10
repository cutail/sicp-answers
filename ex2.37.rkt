(define (accumulate op init seq)
  (cond ((null? seq) init)
        (else (op (car seq) (accumulate op init (cdr seq))))))

(define (accumulate-n op init seqs)
  (cond ((null? (car seqs)) '())
         (else (cons (accumulate op init (map car seqs))
                     (accumulate-n op init (map cdr seqs))))))

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (x) (list (dot-product x v))) m))

(define (transpose mat)
  (accumulate-n cons '() mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (x) (map (lambda (y) (dot-product y x)) cols)) m)))
