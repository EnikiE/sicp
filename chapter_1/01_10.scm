(define x 3)
(define y 4)
(define (test x y z)
  (cond (< x y) 
	 (+ (square y) (maxSquare x z))
	 (else (+ (square x) (maxSquare y z)))))

(test 2 1 1)


(define (maxSquare x y)
  (square (if (> x y) x y)))
(define (square x)
  (* x x))

(square 5)




