;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lista_exs_1_expressoes) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;====================================================
;; aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa 
;;====================================================


(define (a x)
 (-
  (/ (+ x 2) 2)
  (* 2 x)
 )
)

(a 2)
(a 3)
(a 5)
(a 10)

;;====================================================
;; bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb 
;;====================================================

(define (b x)
  (+
   (- 144 (sqr x))
   x
   )
)

(b 2)
(b 3)
(b 5)
(b 10)

;;====================================================
;; cccccccccccccccccccccccccccccccccccccccccccccccccc
;;====================================================

(define (c x)
  (+
   (-
    (sqrt x)
    (* 2 x)
    )
   12
   )

)

(c 2)
(c 3)
(c 5)
(c 10)

;;====================================================
;; dddddddddddddddddddddddddddddddddddddddddddddddddd 
;;====================================================

(define (d x)
  (+
   (- 
    (expt x 3)
    (/ x 4)
   )
   (expt x -1)
  )
)

(d 2)
(d 3)
(d 5)
(d 10)

;;====================================================
;; eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee 
;;====================================================

(define (ee x)
  (- 
   (*
    2
    (sqrt (+ x 5))
    )
   26
   )
)

(ee 2)
(ee 3)
(ee 5)
(ee 10)

;;====================================================
;; ffffffffffffffffffffffffffffffffffffffffffffffffff
;;====================================================

(define (f x)
  (-
   (*
    x
    (+ x 3)
    )
   4
   )
)

(f 2)
(f 3)
(f 5)
(f 10)