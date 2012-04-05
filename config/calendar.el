;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  �������� ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;����������һЩ��ɫ
(setq calendar-load-hook
'(lambda ()
(set-face-foreground 'diary-face "skyblue")
(set-face-background 'holiday-face "slate blue")
(set-face-foreground 'holiday-face "white")))

;;���������ڵط��ľ�γ�ȣ�calendar���и�����������ʳ��Ԥ�⣬����ľ�γ������ϵ�ġ�
;; ��emacs�ܼ����ճ������ʱ�䣬�� calendar ���� S ���ɿ���
(setq calendar-latitude +24.4)
(setq calendar-longitude +118.1)
(setq calendar-location-name "����")

;; ����������ʾ���� calendar ���� pC ��ʾ����
(setq chinese-calendar-celestial-stem
  ["��" "��" "��" "��" "��" "��" "��" "��" "��" "��"])
(setq chinese-calendar-terrestrial-branch
  ["��" "��" "��" "î" "��" "��" "��" "δ" "��" "��" "��" "��"])

;; ���� calendar ����ʾ
(setq calendar-remove-frame-by-deleting t)
(setq calendar-week-start-day 1)            ; ��������һΪÿ�ܵĵ�һ��
(setq mark-diary-entries-in-calendar t)     ; ���calendar����diary������
(setq mark-holidays-in-calendar nil)        ; Ϊ��ͻ����diary�����ڣ�calendar�ϲ���ǽ���
(setq view-calendar-holidays-initially nil) ; ��calendar��ʱ����ʾһ�ѽ���

;; ȥ�������ĵĽ��գ��趨�Լ�����Ľ��գ��� calendar ���� h ��ʾ����
(setq christian-holidays nil)
(setq hebrew-holidays nil)
(setq islamic-holidays nil)
(setq solar-holidays nil)
(setq general-holidays '((holiday-fixed 1 1 "Ԫ��")
                         (holiday-fixed 2 14 "���˽�")
                         (holiday-fixed 3 14 "��ɫ���˽�")
                         (holiday-fixed 4 1 "���˽�")
                         (holiday-fixed 5 1 "�Ͷ���")
                         (holiday-float 5 0 2 "ĸ�׽�")
                         (holiday-fixed 6 1 "��ͯ��")
                         (holiday-float 6 0 3 "���׽�")
                         (holiday-fixed 7 1 "������")
                         (holiday-fixed 8 1 "������")
                         (holiday-fixed 9 10 "��ʦ��")
                         (holiday-fixed 10 1 "�����")
                         (holiday-fixed 12 25 "ʥ����")))

;;Calendarģʽ֧�ָ��ַ�ʽ�����ĵ�ǰ����
;;������ġ�ǰ����ָ��û�е�������һ�죬������ָ�Ѿ���ȥ�����ӣ�
;;  q      �˳�calendarģʽ
;; C-f     �õ�ǰ������ǰһ��
;; C-b     �õ�ǰ�������һ��
;; C-n     �õ�ǰ������ǰһ��
;; C-p     �õ�ǰ�������һ��
;; M-}     �õ�ǰ������ǰһ����
;; M-{     �õ�ǰ�������һ����
;; C-x ]   �õ�ǰ������ǰһ��
;; C-x [   �õ�ǰ�������һ��
;; C-a     �ƶ�����ǰ�ܵĵ�һ��
;; C-e     �ƶ�����ǰ�ܵ����һ��
;; M-a     �ƶ�����ǰ�µĵ�һ��
;; M-e     �ද����ǰ�µ����һ��
;; M-<     �ƶ�����ǰ��ĵ�һ��
;; M->     �ƶ�����ǰ������һ��

;;Calendarģʽ֧���ƶ������ƶ����������ڵķ�ʽ
;; g d     �ƶ���һ���ر������
;;  o      ʹĳ��������·���Ϊ�м���·�
;;  .      �ƶ������������
;; p d     ��ʾĳһ����һ���е�λ�ã�Ҳ��ʾ����Ȼ��ж����졣
;; C-c C-l ˢ��Calendar����

;; Calendar֧������LATEX���롣
;; t m     ������������
;; t M     ��������һ������������
;; t d     ��������������һ����������
;; t w 1   ��һҳ����������ܵ�����
;; t w 2   ����ҳ����������ܵ�����
;; t w 3   ����һ��ISO-SYTLE���ĵ�ǰ������
;; t w 4   ����һ������һ��ʼ�ĵ�ǰ������
;; t y     ���ɵ�ǰ�������

;;EMACS Calendar֧�����ý��գ�
;; h       ��ʾ��ǰ�Ľ���
;; x       ���嵱��Ϊĳ������
;; u       ȡ�������ѱ�����Ľ���
;; e       ��ʾ������ǰ�������µĽ��ա�
;; M-x holiday  ������Ĵ��ڵ���ʾ��ǰ�������µĽ��ա�


;; ���⣬����һЩ����ģ�����˼�����
;; S       ��ʾ������ճ�����ʱ��(�Ǵ�д��S)
;; p C     ��ʾũ������ʹ��
;; g C     ʹ��ũ���ƶ����ڿ���ʹ��


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  �������ý��� ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  �����ռ� ;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;

(setq diary-file "~/diary");; Ĭ�ϵ��ռ��ļ�
(setq diary-mail-addr "tanis.zhang@gmail.com")
(add-hook 'diary-hook 'appt-make-list)
;;���㴴����һ��'~/diary'�ļ�����Ϳ���ʹ��calendarȥ�鿴��������ݡ�����Բ鿴������¼�������������� ��
;;  d     ��ʾ��ѡ�е����ڵ������¼�
;;  s     ��ʾ�����¼����������ڵģ�δ���ڵĵȵ�

;; ����һ���¼���������
;; 02/11/1989
;;     Bill B. visits Princeton today
;;     2pm Cognitive Studies Committee meeting
;;     2:30-5:30 Liz at Lawrenceville
;;     4:00pm Dentist appt
;;     7:30pm Dinner at George's
;;     8:00-10:00pm concert

;; �����¼������
;; i d   Ϊ�����������һ���¼�
;; i w   Ϊ�����ܴ���һ�����¼�
;; i m   Ϊ��ǰ�´���һ�����¼�
;; i y   Ϊ��ǰ�괴��һ�����¼�
;; i a   Ϊ��ǰ���ڴ���һ�����������
;; i c   ����һ��ѭ�����¼�


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  �����ռǽ���  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
