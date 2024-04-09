;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lista_exs_3_cateto) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; cateto: número número -> número
;; Obj: dado dois valores de cateto e hipotenusa de um triângulo retângulo, devolver o valor do outro cateto do triângulo a partir do Teorema de Pitágoras
;; Exemplos:
;;   (hipotenusa 5 3) = 4
;;   (hipotenusa 15 9) = 12 

(define (cateto a b)
  (sqrt (- (sqr a) (sqr b)))
)

;; Testes:
(check-expect (cateto 5 3) 4)
(check-expect (cateto 15 9) 12)