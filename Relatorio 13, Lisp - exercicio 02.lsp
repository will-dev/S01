(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)
  
(defparameter *safe-fish*
  (make-criatura
    :nome "Safe Shallows Fish"
    :ambiente "Shallows"
    :periculosidade "Baixa"
    :vida-media 5))

(defparameter *reaper*
  (make-criatura
    :nome "Reaper Leviathan"
    :ambiente "Open Ocean"
    :periculosidade "Alta"
    :vida-media 45))

(defparameter *ghost-ray*
  (make-criatura
    :nome "Ghost Ray"
    :ambiente "Deep"
    :periculosidade "Media"
    :vida-media 20))

(defparameter *crab-squid*
  (make-criatura
    :nome "Crab Squid"
    :ambiente "Deep"
    :periculosidade "Alta"
    :vida-media 35))
    
(defparameter *catalogo*
  (list *safe-fish*
        *reaper*
        *ghost-ray*
        *crab-squid*))
        
(defun filtra-por-perigo(catalogo)
    (remove-if-not
      (lambda (criatura)
        (not (string-equal "Baixa" (criatura-periculosidade criatura))))
        catalogo))

(defun relatorio-profundidade (catalogo)
  (let ((deep
    (remove-if-not
      (lambda (criatura)
        (string-equal "Deep" (criatura-ambiente criatura)))
        catalogo)))
  (mapcar
    (lambda(criatura)
      (format nil "~A: Vive em ~A"
                  (criatura-nome criatura)
                  (criatura-ambiente criatura)))
    deep)))

(format t "=== FILTRO DE PERICULOSIDADE (Nao Baixa) ===~%")
(dolist (c (filtra-por-perigo *catalogo*))
  (format t "- ~A (Perigo: ~A)~%"
          (criatura-nome c)
          (criatura-periculosidade c)))

(format t "~%=== RELATORIO DE CRIATURAS DO AMBIENTE DEEP ===~%")
(dolist (linha (relatorio-profundidade *catalogo*))
  (format t "~A~%" linha))

