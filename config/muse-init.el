;;; muse-init.el --- Initialize Emacs Muse

;; This file is part of Michael Olson's Emacs settings.

;; The code in this file may be used, distributed, and modified
;; without restriction.

;; I use initsplit.el to separate customize settings on a per-project
;; basis.

;; In order to see the scripts that I use to publish my website to a
;; remote webserver, check out
;; http://mwolson.org/projects/SiteScripts.html.

;;; Setup

;; Add to load path
(add-to-list 'load-path "~/emacs/packages/muse/lisp")
(add-to-list 'load-path "~/emacs/packages/muse/experimental")

;; Initialize
(require 'outline)       ; I like outline-style faces
(require 'muse)          ; load generic module
(require 'muse-colors)   ; load coloring/font-lock module
(require 'muse-mode)     ; load authoring mode
;(require 'muse-blosxom)  ; load blosxom module
;(require 'muse-docbook)  ; load DocBook publishing style
(require 'muse-html)     ; load (X)HTML publishing style
;(require 'muse-latex)    ; load LaTeX/PDF publishing styles
;(require 'muse-latex2png) ; publish <latex> tags
(require 'muse-project)  ; load support for projects
;(require 'muse-texinfo)  ; load Info publishing style
(require 'muse-wiki)     ; load Wiki support
;(require 'muse-xml)      ; load XML support
;(require 'muse-message)  ; load message support (experimental)

;; Setup projects

;; Here is an example of making a customized version of your favorite
;; publisher.  All this does is run `my-muse-blosoxm-finalize' on the
;; published file immediately after saving it.

;; This turns relative links into absolute links


;; This uses a different header and footer than normal


;; Define a draft style which provides extra space between sections



;; Define a style with unnumbered titles


;; Here is my master project listing.
(setq muse-project-alist
      '(("website" ("~/emacs/content/wiki/web/" :default "index")
         (:base "xhtml" :path "~/WebRoot/muse")))
)


(setq muse-html-style-sheet "<link rel=\"stylesheet\" type=\"text/css\" charset=\"utf-8\" media=\"all\" href=\"../muse.css\" />")

(setq muse-xhtml-style-sheet "<link rel=\"stylesheet\" type=\"text/css\" charset=\"utf-8\" media=\"all\" href=\"../muse.css\" />")

;; Wiki settings

;;; Functions

;; Turn relative links into absolute ones


;; Make sure my interproject links become absolute when published in
;; PDFs

;; Switch to the given project and prompt for a file


;; Make the current file display correctly in Xanga
;; I call this using C-c p x now.



;; Turn a word or phrase into a clickable Wikipedia link


;;; Key customizations




;;; Custom variables

;; fix outline mode judge regex, since "\\*+" make **important** also as outline
;; and, open outline-minor, hide-body
(add-hook 'muse-mode-hook
          '(lambda ()
             (setq outline-regexp "\\*+ ")
             (outline-minor-mode)
             (hide-body)))

;; use color, not bigger font for title
(setq muse-colors-autogen-headings 'outline)


;; just indent, not jump among references -- replace by org-cycle
(define-key muse-mode-map [tab] 'indent-for-tab-command)

;; org-cycle -- why kdb not defined???
;;; in title do outline, in body do indent
;; (require 'org)
;; (define-key muse-mode-map (kdb "<tab>") 'org-cycle)
;;(define-key muse-mode-map (kbd "<S-iso-lefttab>") 'org-shifttab)

;;; muse-init.el ends here
