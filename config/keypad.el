;;Emacs 21 中已经是缺省设置。按 C-n 或向下键时不添加新行。
;;(setq next-line-add-newlines nil)
 
;;设置home键指向buffer开头，end键指向buffer结尾
;(global-set-key [home] 'beginning-of-buffer)
;(global-set-key [end] 'end-of-buffer)


;; "C-,"设为屏幕左移命令
(global-set-key (kbd "C-,") 'scroll-left)
;; "C-."设为屏幕右移命令
(global-set-key (kbd "C-.") 'scroll-right)

(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info )

(global-set-key [f3] 'repeat-complex-command)

;; 跳转到 Emacs 的另一个buffer窗口
(global-set-key [f4] 'other-window)

;;目的是开一个shell的小buffer，用于更方便地测试程序(也就是运行程序了)，我经常会用到。
;;f8就是另开一个buffer然后打开shell，C-f8则是在当前的buffer打开shell
(defun open-eshell-other-buffer ()
  "Open eshell in other buffer"
  (interactive)
  (split-window-vertically)
  (eshell))
(global-set-key [(f8)] 'open-eshell-other-buffer)
(global-set-key [C-f8] 'eshell)


;;设置f9调用speedbar命令
;;使用 n 和 p 可以上下移动，
;; + 展开目录或文件进行浏览，- 收缩，RET 访问目录或文件，g 更新 speedbar。
(global-set-key [f9] 'speedbar)

;;设置[C-f9]为调用dired命令
(global-set-key [C-f9] 'dired)

;;设置F10为撤销
;(global-set-key [f10] 'undo)
;;F10设置为打开muse
(global-set-key [f10] 'muse-project-find-file)

;;设置F11快捷键指定Emacs 的日历系统
(global-set-key [f11] 'calendar)

;;设置F12 快速察看日程安排
(global-set-key [f12] 'list-bookmarks)

;;设置M-g为goto-line
(global-set-key (kbd "M-g") 'goto-line)


;;取消control+space键设为mark
(global-set-key (kbd "C-SPC") 'nil)

;;这样 我就不用按 C-@ 来 setmark 了, C-@ 很不好按。
(global-set-key (kbd "M-<SPC>") 'set-mark-command)


;;  C-f5, 设置编译命令; f5, 保存所有文件然后编译当前窗口文件
(defun du-onekey-compile ()
  "Save buffers and start compile"
  (interactive)
  (save-some-buffers t)
  (switch-to-buffer-other-window "*compilation*")
  (compile compile-command))
  (global-set-key [C-f5] 'compile)
  (global-set-key [f5] 'du-onekey-compile)

;;F6设置为在Emacs中调用gdb
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

