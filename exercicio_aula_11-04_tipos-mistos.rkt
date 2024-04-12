;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercicio_aula_11-04_tipos-mistos) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct Produto
  (nome  ;; string, nome do produto
   cod   ;; numero, código do produto
   preço ;; numero, preço do produto
   quant ;; QuantVenc, quantidade do produto em termos do prazo de validade caso perecível
   )
  
  )

;; QuantVenc:
;; =========
;; Um elemento do conjunto QuantVenc é:
;;    i) um Número, ou
;;   ii) um VencPerecivel

(define-struct vencPerecivel
  (
   atual ;; numero, quantidade de itens que vencem no mês atual
   prox  ;; numero, quantidade de itens que vencem no próximo mês
   seg   ;; numero, quantidade de itens que vencem no mês seguinte
  )
 )

(define V-AZEITE (make-vencPerecivel 50 100 120))
(define V-FEIJAO (make-vencPerecivel 5 10 13))

(define CADERNO (make-Produto "caderno" 123 19.99 54))
(define AZEITE (make-Produto "azeite" 456 31.90 V-AZEITE))
(define SHAMPOO (make-Produto "shampoo" 789 35.50 24))
(define FEIJAO (make-Produto "feijão" 101 7.50 V-FEIJAO))

;; preco: Produto -> número
;; Obj: dado um produto, devolver seu preço
;; exemplos:
;; (preco CADERNO) -> 19.99
;; (preco AZEITE) -> 31.90

(define (preco um-produto)
  (Produto-preço um-produto)
  )

;; Testes:
(check-expect (preco CADERNO) 19.99)
(check-expect (preco AZEITE) 31.90)

;; qtdTotal: QuantVenc/Produto -> número
;; Obj: dado um elemento de QuantVenc, devolve a quantidade total de produtos
;; exemplos:
;; (qtdTotal CADERNO) -> 54
;; (qtdTotal AZEITE) -> 270

(define (qtdTotal um-produto)
  (cond
    ;; se quantidade do produto for um número
    [(number? (Produto-quant um-produto)) (Produto-quant um-produto)]
    ;; se quantidade do produto for do tipo vencPerecivel
    [(vencPerecivel? (Produto-quant um-produto))
     (+
      (vencPerecivel-atual (Produto-quant um-produto))
      (vencPerecivel-prox (Produto-quant um-produto))
      (vencPerecivel-seg (Produto-quant um-produto))
      )
     ]
   )
  )

;; Testes:
(check-expect (qtdTotal CADERNO) 54)
(check-expect (qtdTotal AZEITE) 270)

;; valorEstoque: Produto -> número
;; Obj: dado um produto, devolve o valor do estoque deste produto
;; Exemplos:
;; (valorEstoque CADERNO) -> 1079.46
;; (valorEstoque AZEITE) -> 8613

(define (valorEstoque um-produto)
  (* (preco um-produto) (qtdTotal um-produto))
  )

;; Testes:
(check-expect (valorEstoque CADERNO) 1079.46)
(check-expect (valorEstoque AZEITE) 8613)

;; desconto30: Produto -> Produto
;; Obj: dado um produto, baixa o preço em 30% se for perecível e o estoque for maior que 30
;; Exemplos:
;; (desconto30 CADERNO) -> (make-Produto "caderno" 123 19.99 54)
;; (desconto30 FEIJAO) -> (make-Produto "alface" 101 7.50 V-FEIJAO)
;; (desconto30 AZEITE) -> (make-Produto "azeite" 456 22.33 V-AZEITE)

(define (desconto30 um-produto)
  (cond
    ;; se quantidade do produto for do tipo vencPerecivel e quantidade total for maior que 30
    [(and (vencPerecivel? (Produto-quant um-produto)) (> (qtdTotal um-produto) 30))
     (make-Produto
      (Produto-nome um-produto)
      (Produto-cod um-produto)
      (- (Produto-preço um-produto) (* (Produto-preço um-produto) 0.3))
      (Produto-quant um-produto)
      )
     ]
    ;; senão
    [else um-produto]
   )
  )

;; Testes:
(check-expect (desconto30 CADERNO) (make-Produto "caderno" 123 19.99 54))
(check-expect (desconto30 FEIJAO) (make-Produto "feijão" 101 7.50 V-FEIJAO))
(check-expect (desconto30 AZEITE) (make-Produto "azeite" 456 22.33 V-AZEITE))

;; zeraEstoque: Produto -> Produto
;; Obj: dado um produto, se ele for perecível, zera o estoque dos que vencem no mês
;; Exemplos:
;; (zeraEstoque CADERNO) -> (make-Produto "caderno" 123 19.99 54)
;; (zeraEstoque AZEITE) -> (make-vencPerecivel 0 100 120)

(define (zeraEstoque um-produto)
  (cond
    ;; se quantidade do produto for do tipo vencPerecivel
    [(vencPerecivel? (Produto-quant um-produto))
     (make-vencPerecivel
      0
      (vencPerecivel-prox (Produto-quant um-produto))
      (vencPerecivel-seg (Produto-quant um-produto))
      )
     ]
    ;; se quantidade do produto for um número
    [(number? (Produto-quant um-produto)) um-produto]
   )
  
  )

;; Testes:
(check-expect (zeraEstoque CADERNO) (make-Produto "caderno" 123 19.99 54))
(check-expect (zeraEstoque AZEITE) (make-vencPerecivel 0 100 120))

;; pereciveis: Produto Produto -> String
;; Obj: dados 2 produtos, se ambos forem perecíveis, devolve o número de itens que vencem neste mês de cada um, senão, devolve erro
;; Exemplos:
;; (pereciveis CADERNO AZEITE) -> "Erro: produto não perecível"
;; (pereciveis AZEITE FEIJAO) -> "50 e 5"

(define (pereciveis produto1 produto2)
  (cond
    ;; se ambos forem perecíveis
    [(and (vencPerecivel? (Produto-quant produto1)) (vencPerecivel? (Produto-quant produto2)))
     (string-append
      (string-append "quantidade do " (Produto-nome produto1) ": ")
      (number->string (vencPerecivel-atual (Produto-quant produto1)))
      " e "
      (string-append "quantidade do " (Produto-nome produto2) ": ")
      (number->string (vencPerecivel-atual (Produto-quant produto2)))
      )
     ]
    ;; senão
    [else "Erro: produto não perecível."]
   )
  )

;; Testes:
(check-expect (pereciveis CADERNO AZEITE) "Erro: produto não perecível.")
(check-expect (pereciveis AZEITE FEIJAO) "quantidade do azeite: 50 e quantidade do feijão: 5")