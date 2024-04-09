;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lista_exs_10_loja) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; valor_total: número número número número -> número
;; Obj: dado uma quantidade, um custo unitário e um lucro e desconto em porcentagem, determinar o valor total da compra
;; Exemplos:
;;   (valor_total 12 8.40 33 5) = 127.3608

(define (valor_total quantidade custo lucro desconto)
  (*
   (* custo quantidade)
   (-
    (+ 1 (/ lucro 100))
    (*
     (+ 1 (/ lucro 100))
     (/ desconto 100)
     )
    )
   )
)

(check-expect (valor_total 12 8.40 33 5) 127.3608)

"Até 20% de desconto ainda tem lucro"