#lang racket

;Sum Of Squares of the largest two numbers

(define (remove-smallest num-list)
  (take (sort num-list >) 2))

(define (sum-big-squares num-list)
	(apply + (map (lambda (x) (* x x))
		(remove-smallest num-list))))

(sum-big-squares (list 7 2 9 50))