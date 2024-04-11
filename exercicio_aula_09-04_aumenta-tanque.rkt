;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercicio_aula_09-04_aumenta-tanque) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Desenvolva uma função que, dado um carro e um número, aumenta a capacidade do seu tanque por esse número, SE a sua autonomia for menor que 350km.

(define-struct Carro
  (
   fabricante ;; string, representa a fabricante do carro
   modelo     ;; string, representa o modelo do carro
   cor        ;; string, representa a cor do carro
   consumo    ;; número, representa o consumo do carro em km/h
   tanque     ;; número, representa a capacidade do tanque do carro em L
   )
  )


(define FIESTA (make-Carro "Ford" "Fiesta" "Prata" 11 40))

(define P911 (make-Carro "Porsche" "p911" "Vermelho" 7 64))

(define OPALA (make-Carro "Chevrolet" "Opala" "Azul" 6 54))


;; autonomia = consumo x tanque
;; autonomia: Carro -> número
;; Obj: calcular a autonomia, em km, de um carro
;; exemplos:
;; (autonomia FIESTA) -> 440
;; (autonomia P911) -> 448

(define (autonomia um-carro)
  (*
   (Carro-consumo um-carro)
   (Carro-tanque um-carro)
   )
  )

;; Testes:
(check-expect (autonomia FIESTA) 440)
(check-expect (autonomia P911) 448)
(check-expect (autonomia OPALA) 324)

;; aumenta-tanque: Carro -> Carro
;; Obj: dado um carro e um número, aumenta a capacidade do seu tanque por esse número, SE a sua autonomia for menor que 350km
;; exemplos:
;; (aumenta-tanque OPALA 45) -> 98

(define (aumenta-tanque um-carro aumento)
  (cond
    [(< (autonomia um-carro) 350)
     ( make-Carro 
        ( Carro-fabricante um-carro )
        ( Carro-modelo um-carro )
        ( Carro-cor um-carro )
        ( Carro-consumo um-carro )
        (+ ( Carro-tanque um-carro ) aumento)
      )]
    [ else um-carro ]
   )
  
  )

