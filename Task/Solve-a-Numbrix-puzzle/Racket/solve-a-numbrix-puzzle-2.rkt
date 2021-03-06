#lang racket
(require "hidato-family-solver.rkt")

(define von-neumann-neighbour-offsets
  '((+1 0) (-1 0) (0 +1) (0 -1)))

(define solve-numbrix (solve-hidato-family von-neumann-neighbour-offsets))

(displayln
 (puzzle->string
  (solve-numbrix
   #(#(0  0  0  0  0  0  0  0  0)
     #(0  0 46 45  0 55 74  0  0)
     #(0 38  0  0 43  0  0 78  0)
     #(0 35  0  0  0  0  0 71  0)
     #(0  0 33  0  0  0 59  0  0)
     #(0 17  0  0  0  0  0 67  0)
     #(0 18  0  0 11  0  0 64  0)
     #(0  0 24 21  0  1  2  0  0)
     #(0  0  0  0  0  0  0  0  0)))))

(newline)

(displayln
 (puzzle->string
  (solve-numbrix
   #(#(0  0  0  0  0  0  0  0  0)
     #(0 11 12 15 18 21 62 61  0)
     #(0  6  0  0  0  0  0 60  0)
     #(0 33  0  0  0  0  0 57  0)
     #(0 32  0  0  0  0  0 56  0)
     #(0 37  0  1  0  0  0 73  0)
     #(0 38  0  0  0  0  0 72  0)
     #(0 43 44 47 48 51 76 77  0)
     #(0  0  0  0  0  0  0  0  0)))))
