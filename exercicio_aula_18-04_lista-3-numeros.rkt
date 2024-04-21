;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercicio_aula_18-04_lista-3-numeros) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define lista-3-numeros (cons 1 (cons 2 (cons 3 empty))))

(define (soma-3 lista)
  (+
   (first lista)
   (first (rest lista))
   (first (rest (rest lista)))
  )
)
