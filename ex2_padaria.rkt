;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2_padaria) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; pão por 2 reais, bolinho por 3 reais e croissant por 4 reais. construa uma função que dado o nro de pães, bolinhos e croissants que o cliente comprou, calcula
;; o que ele deve pagar e mostra dentro de um círculo vermelho.

(define (total pao bol cro)
  (overlay
   (text
    (number->string (+ (* pao 2) (* bol 3) (* cro 4))) 36 "white"
   )
   (circle 50 "solid" "red")
  )
)

(total 2 4 6)