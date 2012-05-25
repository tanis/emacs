;;Emacs 21 ���Ѿ���ȱʡ���á��� C-n �����¼�ʱ��������С�
;;(setq next-line-add-newlines nil)
 
;;����home��ָ��buffer��ͷ��end��ָ��buffer��β
;(global-set-key [home] 'beginning-of-buffer)
;(global-set-key [end] 'end-of-buffer)


;; "C-,"��Ϊ��Ļ��������
(global-set-key (kbd "C-,") 'scroll-left)
;; "C-."��Ϊ��Ļ��������
(global-set-key (kbd "C-.") 'scroll-right)

(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info )

(global-set-key [f3] 'repeat-complex-command)

;; ��ת�� Emacs ����һ��buffer����
(global-set-key [f4] 'other-window)

;;Ŀ���ǿ�һ��shell��Сbuffer�����ڸ�����ز��Գ���(Ҳ�������г�����)���Ҿ������õ���
;;f8������һ��bufferȻ���shell��C-f8�����ڵ�ǰ��buffer��shell
(defun open-eshell-other-buffer ()
  "Open eshell in other buffer"
  (interactive)
  (split-window-vertically)
  (eshell))
(global-set-key [(f8)] 'open-eshell-other-buffer)
(global-set-key [C-f8] 'eshell)


;;����f9����speedbar����
;;ʹ�� n �� p ���������ƶ���
;; + չ��Ŀ¼���ļ����������- ������RET ����Ŀ¼���ļ���g ���� speedbar��
(global-set-key [f9] 'speedbar)

;;����[C-f9]Ϊ����dired����
(global-set-key [C-f9] 'dired)

;;����F10Ϊ����
;(global-set-key [f10] 'undo)
;;F10����Ϊ��muse
(global-set-key [f10] 'muse-project-find-file)

;;����F11��ݼ�ָ��Emacs ������ϵͳ
(global-set-key [f11] 'calendar)

;;����F12 ���ٲ쿴�ճ̰���
(global-set-key [f12] 'list-bookmarks)

;;����M-gΪgoto-line
(global-set-key (kbd "M-g") 'goto-line)


;;ȡ��control+space����Ϊmark
(global-set-key (kbd "C-SPC") 'nil)

;;���� �ҾͲ��ð� C-@ �� setmark ��, C-@ �ܲ��ð���
(global-set-key (kbd "M-<SPC>") 'set-mark-command)


;;  C-f5, ���ñ�������; f5, ���������ļ�Ȼ����뵱ǰ�����ļ�
(defun du-onekey-compile ()
  "Save buffers and start compile"
  (interactive)
  (save-some-buffers t)
  (switch-to-buffer-other-window "*compilation*")
  (compile compile-command))
  (global-set-key [C-f5] 'compile)
  (global-set-key [f5] 'du-onekey-compile)

;;F6����Ϊ��Emacs�е���gdb
(global-set-key [f6] 'gdb)            

(global-set-key [C-f7] 'previous-error)
(global-set-key [f7] 'next-error)


;; speedbar: a file tree view
;;;(global-set-key [(f4)] 'speedbar-get-focus)

;; Alt+/ auto-complete
;(define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)

;; use C-o replace outline-minor-mode's prefix: C-c @
(setq outline-minor-mode-prefix (kbd "C-o"))
;; C-o C-q or C-o q, do same work
(mapc (lambda (bind)
        (define-key outline-minor-mode-map
            (car bind)
          (cdr bind)))
      `((,(kbd "C-o q") . hide-sublevels)
        (,(kbd "C-o C-q") . hide-sublevels)
        (,(kbd "C-o a") . show-all)
        (,(kbd "C-o C-a") . show-all)
        (,(kbd "C-o t") . hide-body)
        (,(kbd "C-o C-t") . hide-body)
        (,(kbd "C-o c") . hide-entry)
        (,(kbd "C-o C-c") . hide-entry)
        (,(kbd "C-o e") . show-entry)
        (,(kbd "C-o C-e") . show-entry)
        (,(kbd "C-o l") . hide-leaves)
        (,(kbd "C-o C-l") . hide-leaves)
        (,(kbd "C-o k") . show-branches)
        (,(kbd "C-o C-k") . show-branches)
        (,(kbd "C-o d") . hide-subtree)
        (,(kbd "C-o C-d") . hide-subtree)))

