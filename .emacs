(print "load ~/.emacs")

;;----------------------------------------------------------------------
;; Quelques fonctions utiles pour debugger
(defun test-1(command)
  (start-process "test-1" (get-buffer-create "*test*") command)
  )

(defun test-2(command args)
  (start-process "test-2" (get-buffer-create "*test*") command args)
  )

(defun mydebug(msg)
  (save-excursion
    (set-buffer (get-buffer-create "*my-debug*"))
    (end-of-buffer)
    (insert msg)
    (insert "\n")))

(defun mydebug-buffer()
  (interactive)
  (set-window-buffer (frame-first-window) "*my-debug*")
  )

;;---------------------------------------------------------------------------------
;; 2012/10/29: pour gerer les pbs de caracteres accentues dans les fichiers textes
(setq locale-coding-system 'utf-8) 
(prefer-coding-system 'utf-8)
;2013/6/25: echanges par copier/coller
(set-selection-coding-system 'windows-1252-dos) 


(global-set-key [f3] 'mydebug-buffer)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-level-1 ((((class color) (background light)) (:foreground "Blue1" :weight bold))))
 '(org-level-2 ((((class color) (background light)) (:foreground "Black" :weight bold))))
 '(org-level-3 ((((class color) (background light)) (:foreground "Black"))))
 '(org-level-4 ((((class color) (background light)) (:foreground "grey50" :weight bold)))))

;; SHELL
;; utilisation de gnuwin32
(add-to-list 'exec-path "d:/Donnees/programmes/gnuwin32/bin")
(add-to-list 'exec-path "d:/Donnees/programmes/msysgit/bin")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(archive-zip-extract (quote ("unzip" "" "" " ")))
 '(case-fold-search t)
 '(current-language-environment "UTF-8")
 '(default-input-method "latin-1-prefix")
 '(ecb-layout-window-sizes (quote (("left-analyse" (0.3448275862068966 . 0.32142857142857145) (0.3448275862068966 . 0.21428571428571427) (0.3448275862068966 . 0.21428571428571427) (0.3448275862068966 . 0.23214285714285715)))))
 '(ecb-options-version "2.32")
 '(face-font-family-alternatives (quote (("verdana") ("lucida") ("helv" "helvetica" "arial" "fixed" "courier"))))
 '(global-font-lock-mode t nil (font-lock))
 '(grep-highlight-matches (quote auto-detect))
 '(inhibit-eol-conversion nil)
 '(jde-ant-args "-emacs -verbose")
 '(jde-ant-buildfile "build.xml")
 '(jde-ant-enable-find t)
 '(jde-ant-program "ant")
 '(jde-ant-read-target t)
 '(jde-ant-use-global-classpath t)
 '(jde-ant-working-directory "d:/donnees/fhollender/projects/webextract/" t)
 '(jde-build-function (quote (jde-ant-build)))
 '(jde-built-class-path (quote ("d:/Donnees/fhollender/OGR/relector/class")))
 '(jde-compile-option-sourcepath (quote ("d:/donnees/fhollender/java/htmlunit-1.14/src/main/java/com/gargoylesoftware")))
 '(jde-compiler (quote ("javac" "")))
 '(jde-db-initial-step-p nil)
 '(jde-db-log-debugger-output-flag t)
 '(jde-db-option-verbose (quote (nil nil nil)))
 '(jde-debugger (quote ("JDEbug")))
 '(jde-devel-debug t)
 '(jde-expand-classpath-p nil)
 '(jde-global-classpath (quote ("../../../java/poi-3.0-rc4/poi-3.0-rc4-20070503.jar" "../../../java/junit/junit-4.1.jar" "c:/dev/projects/puzzle/build/" "../../../java/htmlunit-1.14/lib" "d:/donnees/fhollender/projects/webextract/build/" "../../../java/htmlunit-1.14/lib/*.jar" "../../../java/htmlunit-1.14/lib/htmlunit-1.14.jar" "../../../java/htmlunit-1.14/lib/commons-codec-1.3.jar" "../../../java/htmlunit-1.14/lib/commons-collections-3.2.jar" "../../../java/htmlunit-1.14/lib/commons-httpclient-3.1.jar" "../../../java/htmlunit-1.14/lib/commons-io-1.3.1.jar" "../../../java/htmlunit-1.14/lib/commons-lang-2.3.jar" "../../../java/htmlunit-1.14/lib/commons-logging-1.1.jar" "../../../java/htmlunit-1.14/lib/cssparser-0.9.4.jar" "../../../java/htmlunit-1.14/lib/jaxen-1.1.1.jar" "../../../java/htmlunit-1.14/lib/js-1.6R7.jar" "../../../java/htmlunit-1.14/lib/nekohtml-0.9.5.jar" "../../../java/htmlunit-1.14/lib/xercesImpl-2.6.2.jar" "../../../java/htmlunit-1.14/lib/xmlParserAPIs-2.6.2.jar")))
 '(jde-run-application-class "WebExtract")
 '(jde-run-working-directory "d:/Donnees/programmes/httpunit/")
 '(jde-sourcepath (quote ("c:/dev/projects/notes/src" "c:/dev/projects/webextract/src" "d:/donnees/fhollender/projects/webextract/src" "d:/donnees/fhollender/java/htmlunit-1.14/src/main/java/" "d:/donnees/fhollender/java/rhino1_6R7/src/")))
 '(org-agenda-files (quote ("~/MAIN/00_NotesPersonnelles/home.org" "~/MAIN/00_NotesPersonnelles/pc.org" "D:/DONNEES/FHOLLENDER/MAIN/00_NotesPersonnelles/suivi2008.org" "D:/DONNEES/FHOLLENDER/MAIN/00_NotesPersonnelles/perso.org" "D:/DONNEES/FHOLLENDER/MAIN/00_NotesPersonnelles/suivi.org" "D:/DONNEES/FHOLLENDER/MAIN/00_NotesPersonnelles/idees.org" "D:/DONNEES/FHOLLENDER/MAIN/00_NotesPersonnelles/projets.org")))
 '(python-python-command "D:\\DONNEES\\programmes\\python27\\python.exe"))


;;------------------------------------------------------------------------------------------------
(set-default-font "-outline-DejaVu Sans Mono-normal-normal-normal-mono-11-*-*-*-c-*-iso8859-1")

(defun dired-workjava()
  (interactive)
  ;;(dired "d:/Donnees/fhollender/projects/webextract/src/")
  (dired "d:/donnees/fhollender/dev/apn/")
)

(defun dired-workgnucash()
  (interactive)
  (dired "d:/DONNEES/programmes/gnucash/share/gnucash/guile-modules/gnucash/report/")
)

(defun dired-c-workfh()
  (interactive)
  (dired "c:/WORKFH/ngin_audit_input/")
)

(defun dired-d-dev()
  (interactive)
  (dired "d:/DONNEES/FHOLLENDER/dev/nginpop/")
)


(defun load-dot-emacs()
  (interactive)
  (find-file (concat (getenv "HOME") "\\.emacs"))
)

(defun do-ecb-activate()
  (interactive)
  (dired "d:/Donnees/fhollender/dev/bitcoin-master/src/")
  (ecb-activate)
  (find-file "d:/Donnees/fhollender/dev/bitcoin-master/src/")
)

(global-set-key [f5] 'dired-c-workfh)
(global-set-key [f6] 'dired-d-dev)
(global-set-key [f8] 'load-dot-emacs)
;;(global-set-key [f6] 'do-ecb-activate)
(global-set-key [f9] 'undo)

;;------------------------------------------------------------------------------------------------
;; Modification des variables d'environnement
;; FH: 24/72/06
;;
;; utilisation de jde
;; - fonction build: 
;;    probleme de delimiter pour utiliser ant avec cmdproxy.exe 
;;    modification du fichier jde/jde-ant.el, dans fonction jde-build-ant-command 
;;       (delimiter "\"")
;;       en remplacement de:
;;          (delimiter (if (or
;;                          (string= (car jde-ant-invocation-method) "Java")
;;                          (and (string= (car jde-ant-invocation-method)
;;                                        "Script")
;;                               (not (featurep 'xemacs))))
;;                         "'"
;;                       "\""))
;;
;;

(setq new-path (concat "PATH=d:\\DONNEES\\programmes\\msysgit\\bin\\;d:\\Donnees\\programmes\\gnuwin32\\bin\\;d:\\Donnees\\programmes\\msys\\bin\\;d:\\Donnees\\programmes\\ant\\bin;d:\\Donnees\\programmes\\bin;D:\\DONNEES\\programmes\\python27" 
		       (getenv "PATH")))
(setq process-environment (remove (concat "PATH=" (getenv "PATH")) process-environment))
(setq process-environment (cons new-path process-environment))

(setq process-environment (cons "ANT_HOME=d:\\Donnees\\programmes\\ant" process-environment))
(setq process-environment (cons "JAVA_HOME=d:\\Donnees\\programmes\\jdk" process-environment))
(setq process-environment (cons "DATA=d:\\Donnees\\fhollender\\Ogr\\relector\\data" process-environment))
;;(setq process-environment (cons "PYTHONPATH=d:\\Donnees\\fhollender\\dev\\nginaudit" process-environment))
        

;;----------------------------------------------------------------------
;; 2010/8/8: chargement des fichiers de customisation
(setq emtools-dir "d:/Donnees/programmes/emtools/")

(if (boundp 'emtools-dir)
    (let ((jde-file (concat emtools-dir "load-jde-xp.el"))
	  (org-file (concat emtools-dir "customize/org/customize-org.el"))
	  (remember-file (concat emtools-dir "customize/remember/customize-remember.el"))
	  ;;(ido-file (concat emtools-dir "customize/ido/customize-ido.el"))
	  )
      ;;(if (file-exists-p jde-file)
      ;;(load-file jde-file))
      (if (file-exists-p org-file)
	  (load-file org-file))
      (if (file-exists-p remember-file)
	  (load-file remember-file))
      ;;(if (file-exists-p ido-file)
      ;;(load-file ido-file))
      ))

;;----------------------------------------------------------------------
;;----------------------------------------------------------------------
;; FH 24/7/2006: tentative de résoudre les problèmes jde/build en introduisant les 
;; logiciel msys et mingw
(defun msys ()
  "initialise les variables d'environnement et demarre bash (.emacs)"
  (interactive)
  (setq explicit-shell-file-name "sh")
  (setq exec-path '("d:/donnees/programmes/msys/bin/"))
  (setq shell-command-default-error-buffer "bash.log")
  (shell "*msys*")
)
;; En modifiant la variable shell-file-name, la ligne de commande ant est ok, mais
;; ant n'arrive pas à gérér correctement les noms de fichiers
;; (setq shell-file-name "d:/donnees/programmes/msys/bin/sh.exe")

(defun fh-start-puzzle()
  (interactive)
  (find-file "d:/Donnees/fhollender/projects/e2/include/")
  (find-file "d:/Donnees/fhollender/projects/e2/src/")
  ;;(ecb-activate)
  )

(global-set-key [f12] 'fh-start-puzzle)

(setq inferior-lisp-program "d:/Donnees/programmes/sbcl-1.0.13/sbcl.exe")
(add-to-list 'load-path "d:/Donnees/programmes/emtools/slime-2.0/")
(require 'slime)
(slime-setup)

;; JAVASCRIPT
(if (file-exists-p "d:/DONNEES/programmes/emtools/javascript-mode/javascript.el")
    (load-file "d:/DONNEES/programmes/emtools/javascript-mode/javascript.el"))

(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))

(defun dired-work-js()
  (interactive)
  (dired "d:/Donnees/fhollender/dev/")
)

(defun dired-work-zsh()
  (interactive)
  (dired "d:/Donnees/fhollender/dev/zshscripts/")
)

(defun dired-data()
  (interactive)
  (dired "c:/donneesfh/data/")
)



(defun dired-jsliblive()
  (interactive)
  (dired "D:/Donnees/fhollender/FirefoxProfile/9ywiti2n.default/extensions/{DF8E5247-8E0A-4de6-B393-0735A39DFD80}/chrome/jsliblive/")
)

;; (defun do-ecb-activate()
;;   (interactive)
;;   (dired "d:/Donnees/fhollender/projects/webextract/src/")
;;   (ecb-activate)
;;   (find-file "d:/Donnees/fhollender/projects/webextract/src/webextract.java")
;; )

;;(global-set-key [f5] 'dired-work-zsh)
;;(global-set-key [f6] 'dired-data)

;;(grep-apply-setting 'grep-highlight-matches nil)
;;

;; 2012/10/12: maggit
(add-to-list 'load-path "d:/DONNEES/programmes/emtools/magit")
(require 'magit)

;; 2013/6
;; invest in dev env
;;  dired
(global-set-key [C-return] 'save-buffer)
(global-set-key [?\C-=] 'dired)

