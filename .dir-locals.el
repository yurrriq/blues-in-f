;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((nil
  (eval progn
        (direnv-mode)
        (add-to-list 'load-path
                     (concat
                      (getenv "LILYPOND_SHARE_DIR")
                      "/emacs/site-lisp"))
        (load "lilypond-init")))
 (LilyPond-mode
  (testing . t))
 (org-mode
  (org-src-preserve-indentation . t)))
