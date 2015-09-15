; Exercise 2.21
; The procedure square-list takes a list of numbers as argument and
; returns a list of the squares of those numbers.
; (square-list (list 1 2 3 4))
; => (1 4 9 16)

; This was already given
(define (map proc items)
  (if (null? items)
      '()
      (cons (proc (car items))
            (map proc (cdr items)))))

(define (square-list items)
  (if (null? items)
      '()
      (cons (* (car items) (car items))
            (square-list (cdr items)))))

(define (square-list items)
  (map (lambda (x) (* x x)) items))

(square-list (list 1 2 3 4))
