;;系统自动保存的设置
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(default-frame-alist (quote ((top . 0) (height . 33))))
 '(line-number-mode nil)
 '(make-backup-files nil)
 '(menu-bar-mode t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(tool-bar-style (quote text))
 '(w32-system-shells (quote ("cmd" "cmd.exe" "command" "4nt" "4nt.exe" "4dos" "4dos.exe" "tcc" "tcc.exe" "ndos" "ndos.exe"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "YaHei Consolas Hybrid"))))
 '(tool-bar ((t (:background "systembuttonface" :foreground "systembuttontext" :box (:line-width 1 :style released-button))))))
;;字体设置
;(set-default-font "Courier New-12")
;(if window-system (set-fontset-font(frame-parameter nil 'font)'unicode'("Yahei Consolas Hybrid"."unicode-bmp")))

;;普通设置
;(display-time-mode 1);显示时间
;(setq display-time-24hr-format t);24小时格式
;(setq display-time-day-and-date t);显示日期
(mouse-avoidance-mode 'animate);光标移动到鼠标时，鼠标自动弹开
(show-paren-mode 't)
(setq show-paren-style 'parentheses);括号匹配
(setq visible-bell t);关闭出错提示音
(setq inhibit-startup-message t);关闭启动时的“开机画面”
(setq frame-title-format "%b") ;在标题栏中显示文件的名称（最顶层）
;(setq auto-image-file-mode);自动打开和显示图片
;(setq image-type-auto-detectabel t)
(global-font-lock-mode t);自动语法加亮   
(setq-default cursor-type 'bar);将光标设置为竖线，方块为'box
;(require 'color-theme)
;(color-theme-standard emacs 21);颜色模式
(setq x-select-enable-clipboard t);支持与外部程序的粘贴
;(setq-default auto-fill-function 'do-auto-fill)
;(setq default-fill-column 80);设置80列就自动换行
(setq default-tab-width 4);设置tab键为4个空格
(setq scroll-margin 2);上下个两行时光标就停止
(setq scroll-step 1);滚动模式为1行
(setq auto-save-default nil);不生成#-emacs#文件
;(setq-default makebackup-files nil);不生成临时文件

;;鼠标滚动设置
(defun up-slightly() (interactive)(scroll-up 1))
(defun down-slightly() (interactive)(scroll-down 1))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)


(add-to-list 'load-path "~/.emacs.d/modes")
(autoload 'markdown-mode "markdown-mode.el"
    "Major mode for editing Markdown files" t)
(setq auto-mode-alist
    (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

;; 关闭在固定列处自动换行
(remove-hook 'text-mode-hook 'turn-on-auto-fill)
;; 打开自动到右边框后自动换行
(global-visual-line-mode t)
