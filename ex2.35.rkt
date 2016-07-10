(define (count-leaves t)
  (accumulate (lambda (x y) (+ x y)) 0
    (map (lambda (x) 1) (fringe t))))
