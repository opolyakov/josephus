# josephus

## Josephus Problem - https://en.wikipedia.org/wiki/Josephus_problem

The program takes in 2 parameters: the number of people in the circle (n) and the step rate (k).
It outputs the last person left place number.


There are two PERL program variants - josephus.pl (uses splice function to remove array members) and josephus1.pl ( changes place numbers to zero - easier to rewrite to other languages) 

Run program with two arguments, where NUMBERs are positive integers :

perl josephus.pl -n NUMBER -k NUMBER


There is also GO program version - josephus.go .

go build

./josephus -n NUMBER -k NUMBER


There is Python variant - josephus.py .


python josephus.py -n NUMBER -k NUMBER

