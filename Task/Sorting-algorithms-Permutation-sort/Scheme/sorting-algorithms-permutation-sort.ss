(define (insertions e list)
  (if (null? list)
      (cons (cons e list) list)
      (cons (cons e list)
            (map (lambda (tail) (cons (car list) tail))
                 (insertions e (cdr list))))))

(define (permutations list)
  (if (null? list)
      (cons list list)
      (apply append (map (lambda (permutation)
                           (insertions (car list) permutation))
                         (permutations (cdr list))))))

(define (sorted? list)
  (cond ((null? list) #t)
        ((null? (cdr list)) #t)
        ((<= (car list) (cadr list)) (sorted? (cdr list)))
        (else #f)))

(define (permutation-sort list)
  (let loop ((permutations (permutations list)))
    (if (sorted? (car permutations))
        (car permutations)
        (loop (cdr permutations)))))