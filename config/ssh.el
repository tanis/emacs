(require 'tramp)

;;; 设置一下tramp-methods中ssh协议相关的内容，使得ssh支持ssh-agent forwarding，这样可以透过一个ssh服务器访问另一个ssh服
;;; 务器，而不需要输入密码。其中关键起到作用的是第10行的("-A")，也就是运行ssh的时候打开ssh-agent forwarding功能
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

;;; 设置访问host1.com和host2.com所用的默认用户名
(add-to-list 'tramp-default-user-alist  
             '(nil "\\`host1\\.com\\'" "labrador"))  
(add-to-list 'tramp-default-user-alist  
             '(nil "\\`host2\\.com\\'" "labrador"))  

;;;设置访问host2.com时需要通过host3.com作为代理
(add-to-list 'tramp-default-proxies-alist  
             '("\\`host2\\.com\\'" nil "/ssh:labrador@host3.com:"))  
;;; 设置访问host2.com所默认用的协议
(add-to-list 'tramp-default-method-alist  
             '("\\`host2\\.com\\'" nil "ssh"))
