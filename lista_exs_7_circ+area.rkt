;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lista_exs_7_circ+area) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; circ_area: número -> número
;; Obj: dado um raio, calcular a soma da circunferência de um círculo com a sua área
;; Exemplos:
;;   (circ_area 3) = 47.12
;;   (circ_area 5) = 109.96

(define (circ_area r)
  (*
   (* pi r)
   (+ 2 r)
   )
)

;; Testes:
(check-expect (circ_area 3) 47.12)
(check-expect (circ_area 5) 109.96)
