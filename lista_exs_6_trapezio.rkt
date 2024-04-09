;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lista_exs_6_trapezio) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; area_trapezio: número número número -> número
;; Obj: dado o valor da base maior, da base menor e da altura, calcular a área de um trapézio
;; Exemplos:
;;   (area_trapezio 10 5 4) = 30
;;   (area_trapezio 25 13 6) = 114

(define (area_trapezio B b h)
  (/
   (* (+ B b) h)
   2
   )
)

;; Testes:
(check-expect (area_trapezio 10 5 4) 30)
(check-expect (area_trapezio 25 13 6) 114)