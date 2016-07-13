(define (new-make-account n pwd)
  (define (call-the-cops)
    (write "called the police"))
  (let ((time 2))
    (lambda (inpwd m)
      (cond ((eq? inpwd pwd)
              (if (eq? m 'withdraw)
               (lambda (k) (if (> k n) (write "Insufficient Money")
                               (begin (set! n (- n k)) n)))
               (lambda (k) (begin (set! n (+ n k)) n))))
            ((= 0 time) (lambda (x) (call-the-cops)))
            (else (begin (set! time (- time 1)) (lambda (k) (write "Incorrect password"))))))))

(define acc (new-make-account 100 'pwd))