;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lista_exs_9_salario) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; salario: número número número -> número
;; Obj: dado uma quantidade total de horas, um valor pela hora e a porcentagem de imposto, calcular o salário líquido
;; Exemplos:
;;   (salario 110 15.5 11) = 1517.45

(define (salario horas valor juros)
  (*
   (* valor horas)
   (- 1 (/ juros 100))
   )
)

;; Teste:
(check-expect (salario 110 15.5 11) 1517.45)