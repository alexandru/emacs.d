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

(setenv "PYTHONPATH" "/var/lib/alhambra/bin:/var/lib/alhambra/lib/python2.6/site-packages/distribute-0.6.10-py2.6.egg:/var/lib/alhambra/lib/python2.6/site-packages/pip-0.7.2-py2.6.egg:/var/lib/alhambra/src/django-piston:/var/lib/alhambra/lib/python2.6:/var/lib/alhambra/lib/python2.6/plat-linux2:/var/lib/alhambra/lib/python2.6/lib-tk:/var/lib/alhambra/lib/python2.6/lib-old:/var/lib/alhambra/lib/python2.6/lib-dynload:/usr/lib/python2.6:/usr/lib/python2.6/plat-linux2:/usr/lib/python2.6/lib-tk:/var/lib/alhambra/lib/python2.6/site-packages:/usr/local/lib/python2.6/site-packages:/usr/local/lib/python2.6/dist-packages:/usr/lib/python2.6/dist-packages:/usr/lib/python2.6/dist-packages/PIL:/usr/lib/python2.6/dist-packages/gst-0.10:/usr/lib/pymodules/python2.6:/usr/lib/python2.6/dist-packages/gtk-2.0:/usr/lib/pymodules/python2.6/gtk-2.0:/usr/lib/python2.6/dist-packages/wx-2.8-gtk2-unicode:/var/lib/alhambra/lib/python2.6/site-packages/IPython/Extensions:/home/alex/.ipython:/home/alex/Projects/magnolialabs/alhambra/alhambra:/home/alex/Projects/magnolialabs/botly/trunk/venv/lib/python2.6/site-packages/:/home/alex/Projects/magnolialabs/botly/trunk/")




