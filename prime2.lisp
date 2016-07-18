(defun prime-check (x k prime-list)
  (dolist (m prime-list)
    (cond ((zerop (mod x m)) (return))
	  ((< k m) (return t)))
    )
  )

(defun prime (n)
  (setq sieve (make-array 1001 :initial-element 0))
  (do ((prime-list '(2)) (m 3 (+ m 2)))
      ((< n m) prime-list)
      (if (prime-check m (sqrt m) prime-list)
	  (setq prime-list (append prime-list (list m)))
	) ;if
      ) ;do
  ) ;defun
