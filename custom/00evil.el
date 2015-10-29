(require 'evil)
(evil-mode 1)
(setq evil-shift-width 2)

(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ";")
(evil-leader/set-key
  "e" 'find-file
  "b" 'projectile-switch-to-buffer
  "g" 'ag-project
  "s" 'save-buffer
  "f" 'projectile-find-file
  "m" 'magit-status
  "k" 'kill-buffer)

(eval-after-load "evil"
  '(progn
     (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
     (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
     (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
     (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)))
