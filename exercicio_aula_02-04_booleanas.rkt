;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercicio_aula_02-04_booleanas) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ================= Exercício 4.2.1 ===========================

;; =============================================================
;;                           1
;; =============================================================

(define (entre3e7? num)
  (and (> num 3) (<= num 7))
)

;; =============================================================
;;                           2
;; =============================================================

(define (taentre3e7? num)
  (and (>= num 3) (<= num 7))  
)

;; =============================================================
;;                           3
;; =============================================================

(define (entre3e9? num)
  (and (>= num 3) (< num 9))
)

;; =============================================================
;;                           4
;; =============================================================

(define (entre1e6U9e14? num)
  (or
   (and (> num 1) (< num 6))
   (and (> num 9) (< num 14))
   )
)

;; =============================================================
;;                           5
;; =============================================================

(define (forade1e3? num)
  (or (<= num 1) (>= num 3))
)