;;; 测试应用序还是正则序

(define (p) (p))  ;; loop forever

;; 如果应用序，则无穷循环，如果正则序，则返回0
(define test (lambda (x p) (if (= x 0) x (p)))) 
(test 0 p)
