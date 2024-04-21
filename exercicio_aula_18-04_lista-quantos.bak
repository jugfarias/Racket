;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercicio_aula_18-04_lista-quantos) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; uma lista-de-numeros é
;; 1. a lista vazia empty ou
;; 2. (cons n ldn), onde
;;    n: numero
;;    ldb: lista-de-numeros

(define lista-de-numeros (cons 1 (cons 2 (cons 3 empty))))

;; quantos? : lista-de-numeros -> numero
;; Obj: dada uma lista-de-numeros, determinar quantos elementos tem na lista
;; Exemplos:
;; (quantos? lista-de-numeros) = 3
;; (quantos? (cons 4 (cons 7 (cons 9 (cons 2 empty))))) = 4
;; (quantos? empty) = 0

(define (quantos? lista)
  (cond
    ;; se lista vazia, retorna quantos elementos tem na lista
    [(empty? lista) 0]
    ;; senão, determinar quantos elementos tem na lista
    [else (+ 1 (quantos? (rest lista)))]
  )
)

;; Testes:
(check-expect (quantos? lista-de-numeros) 3)
(check-expect (quantos? (cons 4 (cons 7 (cons 9 (cons 2 empty))))) 4)
(check-expect (quantos? empty) 0)