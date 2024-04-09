;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lista_exs_5_Fahrenheit-Celcius) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; CtoF: número -> número
;; Obj: dado um valor de temperatura em Celcius, devolver o valor convertido para Fahrenheit
;; Exemplos:
;;   (FtoC 100) = 212
;;   (FtoC 35) = 95 

(define (CtoF C)
  (+
   (* 1.8 C)
   32
   )
)

;; Testes:
(check-expect (CtoF 100) 212)
(check-expect (CtoF 35) 95)