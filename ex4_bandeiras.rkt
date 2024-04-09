;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4_bandeiras) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; bandeira 1

(define (cruz tam)
  (text "+" tam "white")
)

(overlay
 (cruz 100)
 (rectangle 150 90 "solid" "red")
)


;; bandeira 2

(beside
 (rectangle 40 90 "solid" "red")
 (above
  (rectangle 110 30 "solid" "forestgreen")
  (rectangle 110 30 "solid" "white")
  (rectangle 110 30 "solid" "black")
 )
)

;; bandeira 3

(beside
 (above
  (overlay
   (star 15 "solid" "blue")
   (rectangle 75 45 "solid" "white")
  )
  (rectangle 75 45 "solid" "blue")
 )
 (above
  (rectangle 75 45 "solid" "red")
  (overlay
   (star 15 "solid" "red")
   (rectangle 75 45 "solid" "white")
  )
 )
)

;; bandeira 4

(beside
 (rectangle 50 90 "solid" "forestgreen")
 (overlay
  (star 15 "solid" "yellow")
  (rectangle 50 90 "solid" "red")
 )
 (rectangle 50 90 "solid" "gold")
)

;; bandeira 5

(overlay
 (star 15 "solid" "yellow")
 (above
  (rectangle 150 45 "solid" "red")
  (rectangle 150 45 "solid" "forestgreen")
 )
)

;; bandeira 6
;; não sei fazer