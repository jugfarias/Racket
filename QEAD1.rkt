;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname QEAD1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; lucro: número -> número
;; Objetivo: dado o preço do ingresso, calcular o lucro do espetáculo
;; Exemplos:
;;   (lucro 5) = 415.2
;;   (lucro 4.9) = 476.1


(define (lucro preco)
  (-
    (receita preco)
    (custo preco)
   )
)

;; Testes:
(check-expect (lucro 5) 415.2)
(check-expect (lucro 4.9) 476.1)

;; nro_espec: número -> número
;; Objetivo: dado o preço do ingresso, calcular o número de espectadores
;; Exemplos:
;;   (nro_espec 5) = 120
;;   (nro_espec 4.9) = 135

(define (nro_espec preco)
  (+ 120
     (* 150
        (- 5 preco)
     )
  )
)

;; Testes:
(check-expect (nro_espec 5) 120)
(check-expect (nro_espec 4.9) 135)


;; receita: número -> número
;; Objetivo:dado o preço do ingresso, calcular a receita do espetáculo
;; Exemplos:
;;   (receita 5) = 600
;;   (receita 4.9) = 661.5

(define (receita preco)
  (*
     (nro_espec preco)
     preco
   )
)

;; Testes:
(check-expect (receita 5) 600)
(check-expect (receita 4.9) 661.5)

;; custo: número -> número
;; Objetivo: dado o preço do ingresso, calcular o custo do espetáculo
;; Exemplos:
;;   (custo 5) = 184.8
;;   (custo 4.9) = 185.4

(define (custo preco)
  (+ 180
     (* 0.04
        (nro_espec preco)
      )
   )
)

;; Testes
(check-expect (custo 5) 184.8)
(check-expect (custo 4.9) 185.4)