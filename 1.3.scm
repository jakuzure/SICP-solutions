; Exercise 1.3
; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.
; ---------------------------------

(define (sqlarge x y z)
  (define (sqsum a b)
    (+ (square a) (square b)))
  (define (larger a b)
    (if (> a b) a b))
  (if (= x (larger x y))
         (sqsum x (larger y z))
         (sqsum y (larger x z))))
