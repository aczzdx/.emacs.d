(defvar config/lisp-dir
  "The directory for saving lisp files"
  (expand-file-name "~/.emacs.d/lisp/"))

;;; Scratch messaging from emagicians-starter-kit
(setq inhibit-splash-screen t)
(setq initail-stratch-message
      (concat ";;; Emacs for Xingyu Wei" "\n"
	      ";;; check something....." "\n"))

(defun config/set-stratch-message (&rest lines)
  (setq initail-stratch-message (apply 'concat lines)))

(defun config/add-stratch-message (&rest lines)
  (setq initail-stratch-message
	(apply 'concat initail-stratch-message lines)))

;;; Setting variables for debugging
(defvar config/debug-state 'OK
  "a global varaible tells us the status of the emacs files: DEBUG or OK")


(defmacro config/is-debug ()
  "return t if we are debugging."
  (string-equal config/debug-state 'DEBUG)
  )


(if (config/is-debug)
    (setq debug-on-error t)
  ()
  )

;;; set for load-path

(add-to-list 'load-path 
;;; linum-mode should be on ALWAYS, at this time.
(line-number-mode)
(linum-mode)

;;; package manager

(setq package-user-dir "~/.emacs.d/elpa")

; package archives used in emagicians-starter-kit
(setq package-archives
      '(("gnu"         . "http://elpa.gnu.org/packages/")
        ("MELPA"       . "http://melpa.org/packages/")
        ("org"         . "http://orgmode.org/elpa/")))

(package-initialize)



