10 ANSWER = INT (RND(0)*100)
20 INPUT "Adivinhe o número: "; num
30 IF ANSWER=num THEN GOTO 60
40 IF ANSWER<num THEN PRINT "O número é menor" ELSE PRINT "O número é maior"
50 goto 20
60 PRINT "PARABÉNS! Você acertou o número"
70 END