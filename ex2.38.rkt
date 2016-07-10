(fold-right / 1 (list 1 2 3))    ;; 3/2
(fold-left / 1 (list 1 2 3))     ;; 1/6
(fold-right list nil '(1 2  3))  ;;  (1 (2 (3 ())))
(fold-left list nil '(1 2 3))    ;; (((() 1) 2) 3)

同时满足交换律，结合律
