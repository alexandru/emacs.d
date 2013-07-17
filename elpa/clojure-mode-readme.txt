Provides font-lock, indentation, and navigation for the Clojure
language. (http://clojure.org)

Users of older Emacs (pre-22) should get version 1.4:
http://github.com/technomancy/clojure-mode/tree/1.4

Slime integration has been removed; see the 1.x releases if you need it.

Using clojure-mode with paredit is highly recommended. Use paredit
as you would with any other minor mode; for instance:

  ;; require or autoload paredit-mode
  (add-hook 'clojure-mode-hook 'paredit-mode)

See nREPL.el (http://github.com/kingtim/nrepl.el) for
better interaction with subprocesses via nREPL.
