#lang planet neil/sicp

(define (square x) (* x x)) 
(define (squaresum a b) (+ (square a) (square b)))

;Original
(define (maxsum a b c) (if (> a b) (if (> c b) (+ a c) (+ a b)) (if (> c a) (+ b c) (+ a b)))) 

;Correction
(define (maxsquaresum a b c) (if (> a b) (if (> c b) (squaresum a c) (squaresum a b)) (if (> c a) (squaresum b c) (squaresum a b)))) 