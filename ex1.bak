;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; construa uma função que, dado um número  mostra o número dentro de um círculo vermelho

(define (texto num)
  (text num  36 "white")
)

(define (sobrepor num)
  (overlay
   (texto num)
   (circle 50 "solid" "red")
  )
)

(sobrepor "13")