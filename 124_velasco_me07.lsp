#|
Velasco, Gimel David F.

Cmsc 124 ME07
|#

;Number 1
(defun prime_check (num)
	(do
		( ; variables
			(i 1)
			(ans T)
		)

		((OR (AND (> num 1) (>= i (- num 1))) (EQUAL NIL ans)) ans)

		(setf i (+ i 1))
		(setf ans (prime_check2 num i))
	)
)

(defun prime_check2 (num i)
	(cond
		((= 0 num) NIL)
		((= 1 num) NIL)
		((= 0 (mod num i)) NIL)
		(T T)
	)
)

;Number 2
(defun prime_factor (num2)
	(if
		(INTEGERP num2)
		(cond
			((<= num2 0) (list 'No 'Prime 'Factors))
			((= 1 num2) (list 'prime 'factors))
			(T
				;(setf fctrs (cons next fctrs))
				;(setf num2 (/ num2 next))
				;(prime_factor num2)

				(print (prime_factor2 num2))
				(setf num2 (/ num2 (prime_factor2 num2)))
				(prime_factor num2)
			)
		)
		(print NIL)
	)
	
)


(defun prime_factor2 (numm)
	(do
		(
			(ii numm)
		)

		((AND (prime_check ii) (= 0 (mod numm ii))) ii)

		(setf ii (- ii 1))
	)
)