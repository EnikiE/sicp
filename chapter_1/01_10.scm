;(define x 3)
;(define y 4)

;1.3

(define (maxSquare x y)
  (square (if (> x y) x y)))
(define (square x)
  (* x x))

(maxSquare 2 3)

(define (test x y z)
  (cond ((< x y) 
	 (+ (square y) (maxSquare x z)))
	 (else 
	  (+ (square x) (maxSquare y z)))))

(test 0 7 -1)


;1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b -2 -3)

;1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;(test 0 (p))
  
;1.6

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) .001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))


(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

(+ 1 2)


;1.7
(define (good-enough? guess old-guess)
  (< (/ (abs (- guess old-guess)) guess)
     .001))



