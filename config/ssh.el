(require 'tramp)

;;; ����һ��tramp-methods��sshЭ����ص����ݣ�ʹ��ssh֧��ssh-agent forwarding����������͸��һ��ssh������������һ��ssh��
;;; ������������Ҫ�������롣���йؼ������õ��ǵ�10�е�("-A")��Ҳ��������ssh��ʱ���ssh-agent forwarding����
(let ((my-tramp-methods nil)  
      (my-tramp-ssh-method   
       '("ssh"   
         (tramp-login-program "ssh")   
         (tramp-login-args (("%h")   
                            ("-l" "%u")  
                            ("-p" "%p")   
                            ("-e" "none")   
                            ("-A")))  
         (tramp-remote-sh "/bin/sh")   
         (tramp-copy-program nil)   
         (tramp-copy-args nil)  
         (tramp-copy-keep-date nil)  
         (tramp-password-end-of-line nil)   
         (tramp-gw-args (("-o" "GlobalKnownHostsFile=/dev/null")   
                         ("-o" "UserKnownHostsFile=/dev/null")  
                         ("-o" "StrictHostKeyChecking=no")))   
         (tramp-default-port 22))))  
  (setq tramp-methods (dolist (elt tramp-methods my-tramp-methods)  
                        (if (string= (car elt) "ssh")  
                            (setq my-tramp-methods (cons my-tramp-ssh-method my-tramp-methods))  
                          (setq my-tramp-methods (cons elt my-tramp-methods))))))  

;;; ���÷���host1.com��host2.com���õ�Ĭ���û���
(add-to-list 'tramp-default-user-alist  
             '(nil "\\`host1\\.com\\'" "labrador"))  
(add-to-list 'tramp-default-user-alist  
             '(nil "\\`host2\\.com\\'" "labrador"))  

;;;���÷���host2.comʱ��Ҫͨ��host3.com��Ϊ����
(add-to-list 'tramp-default-proxies-alist  
             '("\\`host2\\.com\\'" nil "/ssh:labrador@host3.com:"))  
;;; ���÷���host2.com��Ĭ���õ�Э��
(add-to-list 'tramp-default-method-alist  
             '("\\`host2\\.com\\'" nil "ssh"))
