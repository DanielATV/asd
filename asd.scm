(define maxM 
  (lambda (x)
    (let aux ((actual (car x))(falta (cdr x))(max -1))
      (cond
        ((null? falta) (if(> actual max) actual
                max))
        ((integer? actual)
                   (if (> actual max) (aux (car falta) (cdr falta) actual)
                     (aux (car falta) (cdr falta) max)
                    )
        )
                   
        (else 
              (if (> actual max) (aux (car falta) (cdr falta) actual)
                     (aux (car falta) (cdr falta) max)
              )
        )))))



( maxM ’(1 2 3 (4 5 6) (7 8) 4 (10 2)))
