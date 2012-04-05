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

