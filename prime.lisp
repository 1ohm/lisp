(defun prime-check (x prime-list)
  (dolist (m prime-list t)
    (if (zerop (mod x m)) (return))))

(defun prime (n)
  (do ((prime-list '(2)) (m 3 (+ m 2)))
      ((< n m) prime-list)
      (if (prime-check m prime-list)
	  (setq prime-list (append prime-list (list m))))))
