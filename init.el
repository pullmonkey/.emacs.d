(setq url-proxy-services '(("http" . "wwwproxy.sandia.gov:80")))

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)
(add-to-list 'load-path "~/.emacs.d/custom")
(load "00common-setup.el")
(load "00evil.el")
(load "01projectile.el")


