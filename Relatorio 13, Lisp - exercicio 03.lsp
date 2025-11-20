(defstruct item
  nome
  tipo
  preco
  forca-magica)

(defparameter *catalogo*
  (list
   (make-item :nome "Espada Runica" :tipo "Arma" :preco 100 :forca-magica 120)
   (make-item :nome "Pocao Sombria" :tipo "Pocao" :preco 40 :forca-magica 10)
   (make-item :nome "Amuleto Corrompido" :tipo "Artefato" :preco 150 :forca-magica 85)
   (make-item :nome "Adaga do Pacto" :tipo "Arma" :preco 70 :forca-magica 60)))

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (cond
    ((>= forca 80) (* forca 1.5))
    (t forca)))

(defun processa-venda (catalogo)
  (let* ((armas
          (remove-if-not
           (lambda (it)
             (string-equal (item-tipo it) "Arma"))
           catalogo))

         (armas-com-imposto
          (mapcar
           (lambda (it)
             (make-item
              :nome (item-nome it)
              :tipo (item-tipo it)
              :preco (adiciona-imposto (item-preco it))
              :forca-magica (item-forca-magica it)))
           armas)))
    (mapcar
     (lambda (it)
       (format nil "~A: Forca Amaldicoada: ~A"
               (item-nome it)
               (bonus-maldicao (item-forca-magica it))))
     armas-com-imposto)))

(format t "=== Resultado da Venda ===~%")
(dolist (linha (processa-venda *catalogo*))
  (format t "~A~%" linha))
