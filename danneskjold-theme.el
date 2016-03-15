;;; danneskjold-theme.el --- beautiful high-contrast theme

;; Copyright (c) 2016 Dmitry Akatov

;; Author: Dmitry Akatov <akatovda@yandex.com>
;; URL: https://github.com/rails-to-cosmos/
;; Package-Version: 20160311.458


;;; Commentary:

;;; Code:
(deftheme danneskjold
  "Created 2016-03-16.")

(setq-default buffers-menu-max-size 30
              case-fold-search t
              compilation-scroll-output t
              ediff-split-window-function 'split-window-horizontally
              ediff-window-setup-function 'ediff-setup-windows-plain
              grep-highlight-matches t
              grep-scroll-output t
              make-backup-files nil
              mouse-yank-at-point t
              save-interprogram-paste-before-kill t
              scroll-preserve-screen-position 'always
              set-mark-command-repeat-pop t
              show-trailing-whitespace nil
              tooltip-delay 1.5
              truncate-lines nil
              truncate-partial-width-windows nil
              visible-bell t
              line-spacing 7
              indent-tabs-mode nil)

(custom-set-faces
 '(default ((t (:inherit nil
                         :stipple nil
                         :inverse-video nil
                         :box nil
                         :strike-through nil
                         :overline nil
                         :underline nil
                         :slant normal
                         :weight normal
                         :height 120
                         :width normal
                         ;; :family "Inconsolata"
                         :foundry nil
                         :family "Menlo")))))

(let ((bg "#000000")
      (fg "#ffffff")

      ;; Shades of grey
      (black "#000000")
      (frost "#D0E1F9" )
      (comment "#8593AE")
      (anthracite "#3a3f4b")
      (slightly-brighter-than-midnight "#282c34")
      (as-dark-as-midnight "#21252b")
      (white "#FFFFFF")

      ;; Shades of yellow
      (sunrise "#FFDB45")
      (saffron "#F9BA32")

      ;; Shades of green
      (spring-flower "#B3DE81")

      ;; Shades of blue
      (twitter "#4CB5F5")

      ;; Shades of red
      (waddles "#FF87BA")
      (krayola "#E38B75")
      (santa "#F34A4A"))

  (custom-theme-set-faces
   'danneskjold
   `(default ((t (:foreground ,fg :background ,bg))))
   `(fringe ((t (:background ,bg))))
   `(region ((t (:background ,anthracite))))
   `(button ((t (:foreground ,frost :underline t))))
   `(link ((t (:foreground ,frost :underline t))))
   `(menu ((t (:foreground ,fg :background ,as-dark-as-midnight))))

   `(font-lock-string-face ((t (:foreground ,krayola))))
   `(font-lock-builtin-face ((t (:foreground ,twitter))))
   `(font-lock-variable-name-face ((t (:foreground ,sunrise))))
   `(font-lock-keyword-face ((t (:foreground ,frost))))
   `(font-lock-comment-face ((t (:foreground ,comment))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,anthracite))))
   `(font-lock-function-name-face ((t (:foreground ,fg))))
   `(font-lock-type-face ((t (:foreground ,saffron))))
   `(font-lock-constant-face ((t (:foreground ,fg))))

   ;; Mode-line
   `(mode-line ((t (:background ,as-dark-as-midnight
                    :foreground ,fg
                    :box ,(list
                           :line-width 4
                           :color as-dark-as-midnight)))))
   `(mode-line-inactive ((t (:background ,slightly-brighter-than-midnight
                             :foreground ,fg
                             :box ,(list
                                    :line-width 4
                                    :color slightly-brighter-than-midnight)))))
   `(mode-line-buffer-id ((t (:foreground ,fg))))


   `(font-lock-warning-face ((t (:foreground ,santa))))
   `(compilation-warning ((t (:foreground ,santa))))
   `(highlight ((t (:background ,as-dark-as-midnight :foreground ,frost))))

   `(linum ((t (:foreground ,anthracite))))

   `(widget-field ((t (:foreground ,fg :background ,slightly-brighter-than-midnight))))
   `(widget-button ((t (:foreground ,saffron))))

   ;; Highlight quoted mode-line
   `(highlight-quoted-symbol ((t (:foreground ,waddles))))

   ;; hl-line and hlinum-activate
   `(linum-highlight-face ((t (:foreground ,anthracite :background ,as-dark-as-midnight :weight bold))))
   `(hl-line ((t (:background ,as-dark-as-midnight))))

   ;; magit
   ;;`(magit-diff-added-highlight ((t (:background ,"#35B82C" :foreground ,fg))))
   ;;`(magit-diff-removed-highlight ((t (:background "sunrise"))))
   ;;`(magit-diff-context-highlight ((t (:background ,bg))))

   ;; Org
   `(org-todo ((t (:foreground ,santa))))
   `(org-done ((t (:foreground ,spring-flower))))
   ;; `(org-date ((t (:foreground ,sunrise))))
   `(org-hide ((t (:foreground ,anthracite))))
   `(org-link ((t (:foreground ,frost :underline t))))
   `(org-date ((t (:foreground ,comment))))

   `(org-level-1 ((t (:foreground ,twitter))))
   `(org-level-2 ((t (:foreground ,frost))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,spring-flower))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,santa))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,frost))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,saffron))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,waddles))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,frost))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,spring-flower))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,santa))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,frost))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,saffron))))

   ;; Company-mode
   ;; `(company-tooltip ((t (:foreground ,fg :background ,as-dark-as-midnight))))
   ;; `(company-tooltip-selection ((t (:foreground ,fg :background ,slightly-brighter-than-midnight))))
   ;; `(company-scrollbar-fg ((t (:background ,as-dark-as-midnight))))
   ;; `(company-scrollbar-bg ((t (:background ,slightly-brighter-than-midnight))))
   ;; `(company-tooltip-common ((t (:foreground ,saffron))))
   ;; `(company-preview ((t (:background ,slightly-brighter-than-midnight))))
   ;; `(company-preview-common ((t (:background ,slightly-brighter-than-midnight :foreground ,santa))))
   ;; `(company-mouse ((t (:background ,as-dark-as-midnight))))

   ;; Flycheck
   `(flycheck-warning ((t (:foreground ,santa :underline t))))

   ;; js2-mode
   `(js2-function-param ((t (:foreground ,saffron))))

   ;; erc
   `(erc-timestamp-face ((t (:foreground ,santa))))
   `(erc-prompt-face ((t (:foreground ,spring-flower))))
   `(erc-nick-default-face ((t (:foreground ,frost))))
   `(erc-notice-face ((t (:foreground ,waddles))))
   `(erc-button ((t (:foreground ,frost))))
   `(erc-current-nick-face ((t (:foreground ,santa))))

   ;; eshell
   `(eshell-prompt ((t (:foreground ,santa))))
   `(eshell-ls-executable ((t (:foreground ,spring-flower))))
   `(eshell-ls-directory ((t (:foreground ,twitter))))
   `(eshell-ls-readonly ((t (:foreground ,anthracite))))

   ;; dired
   `(dired-directory ((t (:foreground ,twitter))))
   `(dired-git-face ((t (:foreground ,santa))))
   `(dired-ignored ((t (:foreground ,anthracite))))
   `(dired-filetype-omit ((t (:foreground ,anthracite))))
   `(dired-filetype-common ((t (:foreground ,saffron))))
   `(dired-filetype-execute ((t (:foreground ,spring-flower))))
   `(dired-filetype-source ((t (:foreground ,waddles))))
   `(dired-filetype-plain ((t (:foreground ,comment))))
   `(dired-filetype-link ((t (:foreground ,twitter :underline t))))
   `(dired-flagged ((t (:foreground ,santa :underline t))))
   `(dired-marked ((t (:foreground ,saffron :underline t))))

   `(diredp-dir-heading ((t (:foreground ,saffron))))

   `(dired-subtree-depth-1-face ((t (:background ,"#21252b"))))
   `(dired-subtree-depth-2-face ((t (:background ,"#282c34"))))
   `(dired-subtree-depth-3-face ((t (:background ,bg))))

   ;; ido
   `(minibuffer-prompt ((t (:foreground ,comment))))
   `(ido-first-match ((t (:foreground ,frost))))
   `(ido-only-match ((t (:foreground ,frost))))
   `(ido-subdir ((t (:foreground ,frost))))
   `(ido-vertical-match-face ((t (:foreground ,twitter))))

   ;; vertical-border
   `(vertical-border ((t (:foreground "#282a2e"))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
	       (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'danneskjold)
;;; danneskjold-theme.el ends here
