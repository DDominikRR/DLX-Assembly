.data
a: .float 2.5
b: .float 4
c: .float 1.25

.text
lf f1, a
lf f2, b
lf f3, c

multf f4, f1, f2
divf  f5, f4, f3

trap 0