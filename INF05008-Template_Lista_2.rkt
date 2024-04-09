;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname INF05008-Template_Lista_2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
;; reader(lib "htdp-beginner-reader.ss" "lang")((modname lista2-template) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "testing.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "testing.rkt" "teachpack" "htdp")) #f)))
;; Nome: Juliana Guimarães de Farias

;; ==============================================================
;; 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
;; ==============================================================
;; calcula-prop: número número -> número
;; Obj: dado um valor e um total, devolve a percentagem do valor sobre o total
;; Exemplos:
;;   (calcula-prop 7 25) = 28
;;   (calcula-prop 6 40) = 15

(define (calcula-prop valor total)
  (/
     (* valor 100)
     total
   )
)

;; Testes: 
(check-expect (calcula-prop 7 25) 28)
(check-expect (calcula-prop 6 40) 15)

;; ==============================================================
;; 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2
;; ==============================================================
;; calcula-aprovados: número número string -> número
;; Obj: dados os números de alunos que foram aprovados e que foram reprovados e o nome de uma turma, devolve a proporção de aprovados
;; Exemplos:
;;      (calcula-aprovados 16 3 "T1")
;;      (calcula-aprovados 15 7 "T2")

(define (calcula-aprovados aprovados reprovados nome_turma)
  (/
     (* aprovados 100)
     (+ aprovados reprovados)
   )
)

;; Testes: 
(check-expect (calcula-aprovados 16 3 "T1") 84.21)
(check-expect (calcula-aprovados 15 7 "T2") 68.18)

;; ==============================================================
;; 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
;; ==============================================================
;; mostra-proporcao: string numero string -> string
;; Obj: dado um nome de turma, um valor numérico de proporção e a situação dos alunos dessa proporção, devolver uma string informando que na turma têm determinada
;; proporção de alunos em dada situação
;; Exemplos:
;;    (mostra-proporcao "T1" 80 "aprovados") = "Na turma T1 foram aprovados 80% dos alunos"
;;    (mostra-proporcao "T2" 37 "reprovados") = "Na turma T2 foram reprovados 37% dos alunos"

(define (mostra-proporcao turma prop situacao)
  (string-append
   "Na turma "
   turma
   " foram " 
   situacao
   " "
   (number->string prop)
   "% dos alunos"
   )
)

;; Testes: 
     (check-expect (mostra-proporcao "T1" 80 "aprovados")  "Na turma T1 foram aprovados 80% dos alunos")
     (check-expect (mostra-proporcao "T2" 37 "reprovados") "Na turma T2 foram reprovados 37% dos alunos")

;; ==============================================================
;; 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
;; ==============================================================
;; desenha-barra: numero string -> imagem
;; Obj: dada uma largura (numero) e uma cor (em ingles), desenha um retângulo de altura 30, largura e cor escolhida pelo usuário
;; Exemplos:
;;    (desenha-barra 30 "green") = (rectangle 30 30 "solid" "green")
;;    (desenha-barra 70 "darkblue") = (rectangle 70 30 "solid" "darkblue")

(define (desenha-barra larg cor)
  (rectangle larg 30 "solid" cor)
)
;; Testes:
      (check-expect (desenha-barra 30 "green")  (rectangle 30 30 "solid" "green"))
      (check-expect (desenha-barra 70 "darkblue") (rectangle 70 30 "solid" "darkblue"))

;; ==============================================================
;; 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5  
;; ==============================================================
;; mostra-estatisticas: string numero numero -> ....
;; Obj: dado o nome de uma turma, o numero de aprovados e o numero de reprovados, gerar as estatisticas em barras com um texto explicitando as porcentagens
;; ao lado
;; Exemplos:
;;    (mostra-estatisticas "Y" 27 3) gera uma imagem com um diagrama de barras verde e vermelho com o texto explicitando as estatísticas ao lado
;;    (mostra-estatisticas ....) ....

(define (mostra-estatisticas turma aprov reprov)
  (beside
   (rectangle
    (/ (* aprov 100) (+ aprov reprov))
    30
    "solid"
    "darkgreen"
    )
   (rectangle
    (/ (* reprov 100) (+ aprov reprov))
    30
    "solid"
    "red"
    )
   (above
    (text
     (string-append
      "Na turma "
      turma
      " foram aprovados "
      (number->string (/ (* aprov 100) (+ aprov reprov)))
      "% dos alunos."
      )
     15
     "darkgreen"
     )
    (text
     (string-append
      "Na turma "
      turma
      " foram reprovados "
      (number->string (/ (* reprov 100) (+ aprov reprov)))
      "% dos alunos."
      )
     15
     "red"
     )
    )
   )
)

;; Testes: (nesta questão deixar apenas chamadas ao invés de testes)
     (mostra-estatisticas "Y" 27 3)
     (mostra-estatisticas "Z" 25 2)
     (mostra-estatisticas "T1" 20 9) 



