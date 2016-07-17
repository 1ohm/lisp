(defun PrimeCheck (x k prime-list)
  (dolist (m prime-list)
    (cond ((zerop (mod x m)) (return))
	  ((< k m) (return t)))
    )
  )
(defun Eratosthenes (m n sieve prime-list) 
  (setq prime-list (append prime-list (list m)))
  (setq i 2)
  (while (< (* n i) n)
    ((setf (aref sieve (* n i)) 0)
     ()
     (+ i 1)
     )
    ) ;while
  )


(defun Prime (n)
  (setq sieve (make-array (n+1) :initial-element 0))
  (do ((prime-list '(2)) (m 3 (+ m 2)))
      ((< n m) prime-list)
      (if (PrimeCheck m (sqrt m) prime-list)
	  (Eratosthenes (m n sieve prime-list))
	) ;if
      ) ;do
  ) ;defun
