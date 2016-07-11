(define (make-monitored f)
  (let ((count 0))
    (lambda (msg)
      (cond ((eq? msg 'how-many-calls) count)
            ((eq? msg 'reset-count) (set! count 0))
            (else (begin (set! count (+ count 1)) (f msg)))))))

(define s (make-monitored sqrt))
