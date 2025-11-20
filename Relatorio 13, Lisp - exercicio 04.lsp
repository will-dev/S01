(defstruct ocorrencia
  nome
  ritual
  nivel-medo
  agentes-enviados)

(defun soma-medo-recursiva (lista)
  (if (null lista)
      0
      (+ (ocorrencia-nivel-medo (car lista))
         (soma-medo-recursiva (cdr lista)))))

(defun analise-final (lista-ocorrencias)
  (let* ((total-medo (soma-medo-recursiva lista-ocorrencias))
         (qtd (length lista-ocorrencias))
         (media (if (> qtd 0) (/ total-medo qtd) 0)))

    (format t "Media do nivel de medo: ~A~%" media)

    (mapcar #'ocorrencia-nome
            (remove-if-not
             (lambda (oc)
               (and (> (ocorrencia-nivel-medo oc) media)
                    (> (ocorrencia-agentes-enviados oc) 3)))
             lista-ocorrencias))))


(defparameter *ocorrencias-teste*
  (list
   (make-ocorrencia :nome "Ritual da Névoa" :ritual "Invocacao"
                    :nivel-medo 60 :agentes-enviados 2)

   (make-ocorrencia :nome "Chamado do Abismo" :ritual "Abertura"
                    :nivel-medo 90 :agentes-enviados 5)

   (make-ocorrencia :nome "Sussurros da Cripta" :ritual "Necromancia"
                    :nivel-medo 40 :agentes-enviados 4)

   (make-ocorrencia :nome "Marca do Esquecido" :ritual "Maldicao"
                    :nivel-medo 85 :agentes-enviados 6)))


(format t "~%=== Ocorrencias Criticas ===~%")
(dolist (nome (analise-final *ocorrencias-teste*))
  (format t "~A~%" nome))
