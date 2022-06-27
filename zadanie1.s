;19->34 ( 22->7)
;14 numer
;dozwolone rejestry: r0, r14, r24, ..., r29

;sekcja na zmienne
.data

licznik:    .word      16
; tablica1:  .word 40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1
tablica:    .word    22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7
suma:     .space     4

;sekcja na rozkazy, dzia³ania
.text

;adres pierwszego elementu tablicy do r24
addi r24, r0, tablica

;licznik wykonañ pêtli do r25
lw r25, licznik

;wyzerowanie rejestru r26, gdzie bêdzie przechowywana suma
addi r26, r0, 0

;w³aœciwe obliczenia, pêtla
tu:

;odczytaj pierwszy element tablicy do r14 (r24 to adres 1 elementu)
lw r14, 0(r24)

;dodanie do sumy wartoœci bie¿¹cego elementu (suma w r26, bie¿¹cy element r14)
add r26, r26, r14

;zmiana wskaŸnika na element tablicy do dodania
;#4, bo w pamieci ró¿ni¹ siê te elementu o 4 bity miejscami
addi r24, r24, #4

;zmniejszenie licznika wykonañ pêtli (#1 bo o 1 )
subi r25, r25, #1

;sprawdzenie czy wykonano podan¹ liczbê razy (r25 sprawdzic)
bnez r25, tu

;zapamietanie wyniku sumowania (r26) w zmiennej suma
sw suma, r26

;koniec
trap 0