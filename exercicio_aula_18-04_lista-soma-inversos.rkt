;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercicio_aula_18-04_lista-soma-inversos) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; uma lista-de-numeros é
;; 1. a lista vazia empty ou
;; 2. (cons n ldn), onde
;;    n: numero
;;    ldn: lista-de-numeros

(define L1 (cons 1 (cons 2 empty))) ;; lista com 2 elementos
(define L2 (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 empty)))))) ;; lista com 5 elementos
(define L3 (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 (cons 6 (cons 7 (cons 8 empty))))))))) ;; lista com 8 elementos

;; tamanho: lista-de-numeros -> numero
;; Obj: dada uma lista de numeros, dizer quantos números há na lista
;; Exemplos:
;; (tamanho L1) = 1.5
;; (tamanho L2) = 2.283333
;; (tamanho L3) = 2.717
;; (tamanho empty) = 0

(define (somaInversos ln)
  (cond
    ;; se lista ln está vazia, 0 
    [(empty? ln) 0]

    ;; senão, somar 1
    [else (+ (/ 1 (first ln)) (somaInversos (rest ln)))]
   
   )
)

(check-expect (somaInversos L1) 1.5)
(check-within (somaInversos L2) 2.28 2.29)
(check-within (somaInversos L3) 2.717 2.718)
(check-expect (somaInversos empty) 0)