;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lista_exs_8_vol_cilindro) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; vol_cilindro: número número -> número
;; Obj: dado um raio e uma altura, calcular o volume de um cilindro
;; Exemplos:
;;   (vol_cilindro 1.5 12) = 84.82
;;   (vol_cilindro 2 20) = 251.33
;;   (vol_cilindro 5 32) = 2513.27

(define (vol_cilindro r h)
  (* pi (sqr r) h)
)

;; Testes:
(check-expect (vol_cilindro 1.5 12) 84.82)
(check-expect (vol_cilindro 2 20) 251.33)
(check-expect (vol_cilindro 5 32) 2513.27)