(defun calcula-dosagem (peso-kg idade-anos)
  (cond
    ((or (< idade-anos 5) (< peso-kg 20)) 10)
    ((and (>= idade-anos 5) (<= idade-anos 12) (>= peso-kg 20)) 25)
    (t 50)))

(defun ajusta-preco (preco-base nome-da-erva)
  (cond
    ((string-equal nome-da-erva "Ginseng")
      (* preco-base 3.0))
    ((string-equal nome-da-erva "Lotus")
      (* preco-base 1.5))
    (t preco-base)))

(let* ((peso1 60)
       (idade1 14)
       (erva1 "Lotus")
       (preco-base1 10)
       (dosagem1 (calcula-dosagem peso1 idade1))
       (preco-final1 (ajusta-preco preco-base1 erva1)))
  (format t "Dosagem: ~A ml~%" dosagem1)
  (format t "Preco final da dose de ~A: ~A moedas~%" erva1 preco-final1))
  

(let* ((peso2 40)
       (idade2 8)
       (erva2 "Ginseng")
       (preco-base2 8)
       (dosagem2 (calcula-dosagem peso2 idade2))
       (preco-final2 (ajusta-preco preco-base2 erva2)))
  (format t "Dosagem: ~A ml~%" dosagem2)
  (format t "Preco final da dose de ~A: ~A moedas~%" erva2 preco-final2))