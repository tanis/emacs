;; ����������ڵ�·���ӵ� EMACS �� load-path
(add-to-list 'load-path "~/emacs/packages/others")

(load "gnuserv")
(gnuserv-start)
;;�������õĸ�����Ϣ,���ںܶ�ط����á�
(setq user-full-name "Zhang Tanis")
(setq user-mail-address "tanis.zhang@gmail.com")

;; ����ʱ�������ʶ�����һ�α����ļ���ʱ�䡣
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S chunyu")


;============================ ���Ի����ַ������� =================================
;;��һ������Ҫ����linux �����£�windows��ûʲô����
;; (set-language-environment 'Chinese-GB)
;; (set-keyboard-coding-system 'utf-8)
;; (set-clipboard-coding-system 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-buffer-file-coding-system 'utf-8)
;; (set-default-coding-systems 'utf-8)
;; (set-selection-coding-system 'utf-8)
;; (modify-coding-system-alist 'process "*" 'utf-8)
;; (setq default-process-coding-system '(utf-8 . utf-8))
;; (setq-default pathname-coding-system 'utf-8)
;; (set-file-name-coding-system 'utf-8)
;; (setq ansi-color-for-comint-mode t) ;;����shell-mode����,����û����
;=========================== ���Ի����ַ������ý��� ===============================

;============================ MS Windows�������������� ===========================
(setq default-frame-alist
(append
  '((font . "fontset-chinese")) default-frame-alist))


(create-fontset-from-fontset-spec
  "-outline-Courier New-normal-r-normal-normal-13-97-96-96-c-*-fontset-chinese")
(set-fontset-font
 "fontset-default" nil
 "-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
(set-fontset-font
 "fontset-chinese" 'kana
 "-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
(set-fontset-font
 "fontset-chinese" 'han
 "-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
(set-fontset-font
 "fontset-chinese" 'cjk-misc
 "-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
(set-fontset-font
 "fontset-chinese" 'symbol
 "-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
(set-default-font "fontset-chinese")

;===========================MS Windows�������������ý��� =========================


;============================ Linux�������������� =================================

;; (create-fontset-from-fontset-spec
;; "-*-courier-medium-r-normal-*-14-*-*-*-*-*-fontset-courier")
;; (set-default-font "fontset-courier")
;; (setq default-frame-alist
;; (append
;; '((font . "fontset-courier")) default-frame-alist))

;; (set-fontset-font
;; "fontset-default" nil
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gb2312.1980-*" nil 'prepend)
;; (set-fontset-font
;; "fontset-courier" 'kana
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)
;; (set-fontset-font
;; "fontset-courier" 'han
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)
;; (set-fontset-font
;; "fontset-courier" 'cjk-misc
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)

;============================ Linux�������������ý��� ==============================

;;;;;;;;;;;;;;;;;;;;���Ի����������ý���;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;�����Ӣ�Ļ��Ų�����ȷfill������,����ûʲô��
;; (put-charset-property 'chinese-cns11643-5 'nospace-between-words t)
;; (put-charset-property 'chinese-cns11643-6 'nospace-between-words t)
;; (put-charset-property 'chinese-cns11643-7 'nospace-between-words t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;  ���ô��ڽ��� ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;ȡ��������
(set-scroll-bar-mode nil)

;;���ù������ڴ����Ҳ࣬��Ĭ���������
;;(customize-set-variable 'scroll-bar-mode 'right))

;;ȡ��������
(tool-bar-mode nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;  ���ý������  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;   ��ʾʱ������   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(display-time-mode 1);;����ʱ����ʾ���ã���minibuffer������Ǹ�����
(setq display-time-24hr-format t);;ʱ��ʹ��24Сʱ��
(setq display-time-day-and-date t);;ʱ����ʾ�������ں;���ʱ��
(setq display-time-use-mail-icon t);;ʱ�����Ա������ʼ�����
(setq display-time-interval 10);;ʱ��ı仯Ƶ�ʣ���λ�������ţ�
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;  ��ʾʱ�����ý���  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;���Ʋ���ϰ��;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;�رշ��˵ĳ���ʱ����ʾ��
(setq visible-bell t)
;;�ر�emacs����ʱ�Ļ���
(setq inhibit-startup-message t)

;; �ı� Emacs ��ִ��Ҫ��ش� yes ����Ϊ���� y ��ո����ʾ yes��n ��ʾ no��
(fset 'yes-or-no-p 'y-or-n-p)

;;��ʾ���к�
(setq column-number-mode t)
(setq line-number-mode t)

;;��Ҫ����������Ǹ��ط�������������ݡ��Ҳ�ϲ���������������ҵ��ĵ����һ���㡣�Ҿ������ù�궨λ��Ȼ������м����Ҫ�õĶࡣ������Ĺ�����ĵ����Ǹ�λ�ã������� minibuffer������м�һ�����X selection �����ݾͱ����뵽�Ǹ�λ�á�
(setq mouse-yank-at-point t)

;;����ճ��������Ŀ����.��һ���ܴ��kill ring(���ļ�¼����). ������ֹ�Ҳ�С��ɾ����Ҫ�Ķ���
(setq kill-ring-max 200)

; Autofill in all modes;;
(setq-default auto-fill-function 'do-auto-fill)
;;�� fill-column ��Ϊ 60. ���������ָ��ö�
(setq default-fill-column 120)

;;���� TAB �ַ���indent, �������ܶ���ֵĴ��󡣱༭ Makefile ��ʱ��Ҳ���õ��ģ���Ϊ makefile-mode ��� TAB �����ó������� TAB �ַ������Ҽ�����ʾ�ġ�
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-stop-list ())

;;���Եݹ��ʹ�� minibuffer
(setq enable-recursive-minibuffers t)

;;����ȱʡ��ģʽ��text��,������auto-fill��ģʽ.�����ǻ���ģʽfundamental-mode
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;;����ƥ��ʱ���Ը�����ʾ����һ�ߵ����ţ�����겻�ᷳ�˵�������һ�����Ŵ���
(setq show-paren-mode t) ;;������ƥ����ʾģʽ
(setq show-paren-style 'parenthesis)

;;�ڱ�������ʾbuffer�����֣������� emacs@wangyin.com ����û�õ���ʾ��
(setq frame-title-format "emacs@%b")

;;�� Emacs ����ֱ�Ӵ򿪺���ʾͼƬ��
(setq auto-image-file-mode t)

;��ѹ���ļ�ʱ�Զ���ѹ����
;(auto-compression-mode 1)  

;;�����﷨������
(setq global-font-lock-mode t)

;; ��������ʱ�ļ�
(setq-default make-backup-files nil)

;;����emacs���ⲿ���������ճ��
(setq x-select-enable-clipboard t)

;;ʹ������м�����ճ��
(setq mouse-yank-at-point t)

;; �Զ������ļ�ĩ����һ����
(setq require-final-newline t)

;; ����� man page ʱ��ֱ����ת�� man buffer��
(setq Man-notify-method 'pushy)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;���Ʋ���ϰ�߽���;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load-library "~/emacs/config/muse-init")
(load-library "~/emacs/config/calendar")
