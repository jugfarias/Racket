;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aula3_area_anel) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; area-circ: numero -> numero
;; Objetivo: dado um número r, calcular a área do círculo com este raio
;; Exemplos:
;;   (area-circ 7) = 153.938
;;   (area-circ 3 = 28.274

(define (area-circ r)
  (* pi (sqr r))
  )

;; Teste:
(check-expect (area-circ 7) 153.93804)

;; area-abel: numero numero -> numero
;; Objetivo: dado dois raios, sendo o primeiro o raio externo e segundo o raio interno, calcular a área de um anel
;; Exemplos:
;;    (area-anel 5 3) = 50.265
;;    (area-anel 7 4) = 103.673

(define (area-anel re ri)
  (-
   (area-circ re) ;; calcula a área do círculo externo
   (area-circ ri)) ;; calcula a área do círculo interno
  )

;; Teste:
(check-expect (area-anel 5 3) 50.26548)

