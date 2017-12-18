#lang scheme



(define maxM 
  (lambda (x)
    (let aux ((actual (car x))(falta (cdr x))(max -1))
      (cond
        ((null? falta) (cond
                         ((integer? actual) (if (> actual max) actual
                     max
                    ))
                         (else
                          (if (null? actual) max
              (if (> (car actual) max) (aux (cdr actual) falta (car actual))
                     (aux (cdr actual) falta max)
              )))))
        ((integer? actual)
                   (if (> actual max) (aux (car falta) (cdr falta) actual)
                     (aux (car falta) (cdr falta) max)
                    )
        )
                   
        (else
         (if (null? actual) (aux (car falta) (cdr falta) max)
              (if (> (car actual) max) (aux (cdr actual) falta (car actual))
                     (aux (cdr actual) falta max)
              ))
        )))))



( maxM '(1 2 3 (4 5 6) (7 8) 4 (10 2)))
