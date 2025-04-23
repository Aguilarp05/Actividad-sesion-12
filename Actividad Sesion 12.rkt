#lang racket
(display "PARTE 1.- Practica la evaluación aplicativa programando las siguientes expresiones aritméticas en Dr Racket ")
; 1.- (20+10)/2
(/(+ 20 10)2)

;2.- 20/2 + 10
(+(/ 20 2)10)

;3.- (  (10 + 20)  ∗  (10 ∗ 2)  ) / (10^3) 
(/(*(+ 10 20)(* 10 2)) (expt 10 3))

;4.-  1/2 *  7 * 4 
(*(/ 1 2) 7  4)

;5.- 3 ^2  + 4^2
(+(expt 3 2) (expt 4 2))

(newline)
(display "PARTE 2.- FUNCIONES")
(newline)
;PARTE 2.- Funciones
; 1.- Fahrenheit a Celsius
(define (fahrenheit-celsius F) (/(*(- F 32) 5) 9))
  (display "fahrenheit-to-celsius 212.0")
  (newline)
  (fahrenheit-celsius 212)
  (newline)
  (display "fahrenheit-to-celsius 32.0")
  (newline)
  (fahrenheit-celsius 32)
  (newline)
  (display "fahrenheit-to-celsius -40.0")
  (newline)
  (fahrenheit-celsius -40)

(newline)
;2.- Signo
(define(sign n) (cond
                 ((positive? n) (display "1"))
                 ((zero? n) (display "0"))
                 ((negative? n) (display "-1"))
                 ))
  (display "sign -5")
  (newline)
  (sign -5)
  (newline)
  (display "sign 10")
  (newline)
  (sign 10)
  (newline)
  (display "sign 0")
  (sign 0)
  (newline)

;3.- roots
(define (roots a b c) (/(+(sqrt(- (expt b 2) (* 4 a c))) (* -1 b))(* 2 a)))
(newline)
(display "roots a = 2 b = 4 c = 2")
(newline)
(roots 2 4 2)
(newline)
(display "roots a = 1, b = 0, c = 0")
(newline)
(roots 1 0 0)
(newline)
(display "roots a = 4, b = 5, c = 1")
(newline)
(roots 4 5 1)
(newline)

(display "PARTE 3.- mas funciones")
(newline)
; Eleva un numero al cuadrado
(define (num-cuadrado n) (* n n))
(display "Ingresa un numero: ")
(newline)
(define n (read))
(display "El cuadrado del numero es: ")
(num-cuadrado n)
(newline)

;Devuelve la mitad de un numero
(define (mitad-numero num) (/ num 2))
(display "Ingresa un numero: ")
(newline)
(define num (read))
(display "La mitad del numero es: ")
(mitad-numero num)
(newline)

;Funcion que evalue n^2 + n/2
(define (formula m) (+ (expt m 2) (/ m 2)))
(display "Inserte un numero: ")
(newline)
(define m (read))
(display "El resultado es: ")
(formula m)
(newline)

;Distancia entre dos puntos dadas suus coordenadas
(define (coords x1 x2 y1 y2) (sqrt(+ (*(- x2 x1) (- x2 x1)) (*(- y2 y1) (- y2 y1)))))
(display "Inserte La primer coordenada en x: ")
(newline)
(define x1 (read))
(newline)
(display "Inserte La primer coordenada en y: ")
(newline)
(define y1 (read))
(newline)
(display "Inserte La segunda coordenada en x: ")
(newline)
(define x2 (read))
(newline)
(display "Inserte La segunda coordenada en y: ")
(newline)
(define y2 (read))
(newline)
(display "La distancia entre ambos puntos es de: ")
(coords x1 x2 y1 y2)
(newline)

;potencia n a la x
(define (pot base exp)
  (if (= exp 0)
      1
      (* base (pot base (- exp 1)))))

(display "Inserte n: ")
(newline)
(define q (read))
(display "Inserte x: ")
(newline)
(define w (read))
(display "El resultado es: ")
(display (pot q w))
