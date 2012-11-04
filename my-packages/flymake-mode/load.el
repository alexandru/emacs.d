(require 'flymake)
(put 'downcase-region 'disabled nil)

(when (load "flymake" t)
   (defun flymake-pylint-init ()
     (let* ((temp-file (flymake-init-create-temp-buffer-copy
 		       'flymake-create-temp-inplace))
            (local-file (file-relative-name
                         temp-file
                         (file-name-directory buffer-file-name))))
       (list "epylint" (list local-file))))
  
   (add-to-list 'flymake-allowed-file-name-masks
                '("\\.py\\'" flymake-pylint-init)))

(setenv "PYTHONPATH" "/home/alex/.virtualenvs/godzilla/lib/python2.7/site-packages/:/home/alex/.virtualenvs/continental/lib/python2.7/site-packages/:/home/alex/Projects/magnolialabs/godzilla/:/home/alex/Projects/magnolialabs/godzilla/godzillapi/:/home/alex/Projects/magnolialabs/continental/:/home/alex/Projects/magnolialabs/continental/continental")
