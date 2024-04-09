;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lista_exs_2_hipotenusa) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; hipotenusa: número número -> número
;; Obj: dado dois valores de cateto de um triângulo retângulo, devolver o valor da hipotenusa do triângulo a partir do Teorema de Pitágoras
;; Exemplos:
;;   (hipotenusa 3 4) = 5
;;   (hipotenusa 9 12) = 15

(define (hipotenusa b c)
  (sqrt (+ (sqr b) (sqr c)))
)

;; Testes:
(check-expect (hipotenusa 3 4) 5)
(check-expect (hipotenusa 9 12) 15)