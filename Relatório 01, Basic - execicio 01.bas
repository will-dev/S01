10 INPUT "Digite a primeira nota: "; np1
20 INPUT "Digite a segunda nota:"; np2
30 media = (VAL(np1)+VAL(np2))/2

40 IF media > 60 THEN GOTO 100
50 IF media < 30 THEN GOTO 120
60 IF 30 <= media AND media <= 60 THEN GOTO 140

100 PRINT "APROVADO DIRETO"
110 END
120 PRINT "REPROVADO DIRETO"
130 END

140 INPUT "Digite a terceira nota: "; np3
150 media = (VAL(media)+VAL(np3))/2
160 IF media > 50 THEN GOTO 170 ELSE GOTO 190

170 PRINT "Aprovado pela NP3"
180 END
190 PRINT "Reprovado na NP3"
200 END