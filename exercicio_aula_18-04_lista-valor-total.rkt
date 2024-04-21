;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercicio_aula_18-04_lista-valor-total) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; uma lista-de-valores é
;; 1. a lista vazia empty ou
;; 2. (cons n ldv), onde
;;    n: numero
;;    ldv: lista-de-valores

(define lista-de-valores (cons 5.99 (cons 3.80 (cons 19.75 empty))))

;; valor-total: lista-de-valores -> numero
;; Obj: dada uma lista de valores de objetos de uma loja, calcula o valor total dos objetos
;; Exemplos:
;; (valor-total empty) = 0
;; (valor-total lista-de-valores) = 29.54
;; (valor-total (cons 1.99 (cons 2.00 empty))) = 3.99

(define (valor-total lista)
  (cond
    ;; se lista vazia, 0
    [(empty? lista) 0]
    ;; se tem item, soma o valor do primeiro
    [else (+ (first lista) (valor-total (rest lista)))]
   )
)


;; Testes: 
(check-expect (valor-total empty) 0)
(check-expect (valor-total lista-de-valores) 29.54)
(check-expect (valor-total (cons 1.99 (cons 2.00 empty))) 3.99)