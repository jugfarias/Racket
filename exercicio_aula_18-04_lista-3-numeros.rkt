;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercicio_aula_18-04_lista-3-numeros) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; uma lista-3-numeros é
;; (cons n l3n), onde
;; n: numero
;; l3n: lista-3-numeros

(define lista-3-numeros (cons 1 (cons 2 (cons 3 empty))))

;; soma-3: lista-3-numeros -> numero
;; Obj: dado uma lista de três números, devolver a soma dos números
;; Exemplos:
;; (soma-3 (cons 1 (cons 1 (cons 1 empty)))) = 3
;; (soma-3 lista-3-numeros) = 6

(define (soma-3 lista)
  (+
   (first lista)
   (first (rest lista))
   (first (rest (rest lista)))
  )
)


;; Testes
(check-expect (soma-3 (cons 1 (cons 1 (cons 1 empty)))) 3)
(check-expect (soma-3 lista-3-numeros) 6)