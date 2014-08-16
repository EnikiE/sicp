(define x 3)
(define y 4)

1.3
(define (test x y z)
  (cond ((< x y) 
	 (+ (square y) (maxSquare x z)))
	 (else 
	  (+ (square x) (maxSquare y z)))))

(test 0 7 -1)


(define (maxSquare x y)
  (square (if (> x y) x y)))
(define (square x)
  (* x x))

(maxSquare 2 3)

1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b -2 -3)

1.5
  




