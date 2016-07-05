

;; the new-if
(define (new-if pred exp1 exp2)
  (cond (pred exp1)
        (else exp2)))
