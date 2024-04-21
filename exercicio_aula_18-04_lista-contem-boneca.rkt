;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercicio_aula_18-04_lista-contem-boneca) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; uma lista-de-brinquedos é
;; 1. a lista vazia empty ou
;; 2. (cons s ldb), onde
;;    s: string
;;    ldb: lista-de-brinquedos

(define lista-de-brinquedos (cons "bola" (cons "carrinho" (cons "boneca" empty))))

;; contem-boneca?: lista-de-brinquedos -> boolean
;; Obj: Determinar se a palavra "boneca" está na lista
;; Exemplos:
;; (contem-boneca? empty) = false
;; (contem-boneca? (cons "boneca" empty)) = true
;; (contem-boneca? (cons "bola" (cons "carrinho" empty))) = false
;; (contem-boneca? lista-de-brinquedos) = true

(define (contem-boneca? lista)
  (cond
    ;; caso 1: lista vazia, não tem boneca, é false
    [(empty? lista) false]
    ;; caso 2: lista com algum elemento (podemos usar else no lugar do 'cons?')
    [(cons? lista)
     (cond
       ;; caso 2.1: se o primeiro elemento for "boneca", true
       [(string=? (first lista) "boneca") true]
       ;; caso 2.2
       [else (contem-boneca? (rest lista))]
      )
     ]
    )
)

;; Testes:
(check-expect (contem-boneca? empty) false)
(check-expect (contem-boneca? (cons "boneca" empty)) true)
(check-expect (contem-boneca? (cons "bola" (cons "carrinho" empty))) false)
(check-expect (contem-boneca? lista-de-brinquedos) true)

