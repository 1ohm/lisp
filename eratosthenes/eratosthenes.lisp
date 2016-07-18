(defun Eratosthenes (n)
  (setq sieve (make-array (+ n 1) :initial-element 1)) ; array[n+1]
  (setq i 2) ; variable i
  (setq j 2) ; variable j

  (do ((i 2 (incf i))) ; var [init-form [step-form]]
      ((< (sqrt n) i) sieve) ; end-test [result]

      ;; S-expression
      (if (= (aref sieve i) 1)
	   (do (j 2 (incf j)) ; var [init-form [steo-form]]
	       ((> (* j i) (incf n))) ; end-form [result]
	       (setf (aref sieve (* j i)) 0) ; S-e
	       ) ; do
       ) ; S-e

      ) ;do
  ) ;defun

