;;; crazy-theme.el --- Minimalistic light color theme

;; Copyright (c) 2023 Eval EXEC

;; Author: Eval EXEC <execvy@gmail.com>
;; Keywords: theme colors crazy
;; URL: http://github.com/eval-exec/crazy-theme.el
;; Package-Requires: ((emacs "24"))

;; This file is not part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; The theme attempts to reduce the usage of colors to a minimum based on my
;; personal preferences.  It's not fully monochrome, for example diffs and
;; active regions are distinguished via colors. The theme assumes no font-lock,
;; i.e. (global-font-lock-mode 0), so there is very little customization for
;; syntax aware faces. The used colors are from the base16 set that is available
;; at: https://github.com/chriskempson/base16 set.

;; More information: http://github.com/eval-exec/crazy-theme.el


;;; Commentary:

;;; Code:

(deftheme crazy
  "Crazy - An Crazy Emacs theme for the crazy people.")


(defun crazy-rgb-code()
  (list
   (random 256)
   (random 256)
   (random 256)))

(defun crazy-rgb()
  (apply 'format "#%02X%02X%02X" (crazy-rgb-code)))

(crazy-rgb)

(custom-theme-set-faces
 'crazy

 `(default ((t (:foreground (crazy-rgb) :background (crazy-rgb)))))
 `(success ((t (:foreground ,crazy-green))))
 `(warning ((t (:foreground ,crazy-orange-2))))
 `(error ((t (:foreground ,crazy-red-1 :weight bold))))
 `(link ((t (:foreground ,crazy-blue :underline t :weight bold))))
 `(link-visited ((t (:foreground ,crazy-blue :underline t :weight normal))))
 `(cursor ((t (:background ,crazy-accent))))
 `(fringe ((t (:background ,crazy-bg))))
 `(region ((t (:background ,crazy-gray :distant-foreground ,crazy-mono-2))))
 `(highlight ((t (:background ,crazy-gray :distant-foreground ,crazy-mono-2))))
 `(hl-line ((t (:background ,crazy-bg-hl :distant-foreground nil))))
 `(header-line ((t (:background ,crazy-black))))
 `(vertical-border ((t (:background ,crazy-border :foreground ,crazy-border))))
 `(secondary-selection ((t (:background ,crazy-bg-1))))
 `(query-replace ((t (:inherit (isearch)))))
 `(minibuffer-prompt ((t (:foreground ,crazy-silver))))
 `(tooltip ((t (:foreground ,crazy-fg :background ,crazy-bg-1 :inherit variable-pitch))))
 `(font-lock-builtin-face ((t (:foreground ,crazy-cyan))))
 `(font-lock-comment-face ((t (:foreground ,crazy-mono-3 :slant italic))))
 `(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 `(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
 `(font-lock-function-name-face ((t (:foreground ,crazy-blue))))
 `(font-lock-keyword-face ((t (:foreground ,crazy-purple :weight normal))))
 `(font-lock-preprocessor-face ((t (:foreground ,crazy-mono-2))))
 `(font-lock-string-face ((t (:foreground ,crazy-green))))
 `(font-lock-type-face ((t (:foreground ,crazy-orange-2))))
 `(font-lock-constant-face ((t (:foreground ,crazy-cyan))))
 `(font-lock-variable-name-face ((t (:foreground ,crazy-red-1))))
 `(font-lock-warning-face ((t (:foreground ,crazy-mono-3 :bold t))))
 `(font-lock-negation-char-face ((t (:foreground ,crazy-cyan :bold t))))
 `(mode-line ((t (:background ,crazy-black :foreground ,crazy-silver :box (:color ,crazy-border :line-width 1)))))
 `(mode-line-buffer-id ((t (:weight bold))))
 `(mode-line-emphasis ((t (:weight bold))))
 `(mode-line-inactive ((t (:background ,crazy-border :foreground ,crazy-gray :box (:color ,crazy-border :line-width 1)))))
 `(window-divider ((t (:foreground ,crazy-border))))
 `(window-divider-first-pixel ((t (:foreground ,crazy-border))))
 `(window-divider-last-pixel ((t (:foreground ,crazy-border))))
 `(custom-state ((t (:foreground ,crazy-green))))
 `(ido-first-match ((t (:foreground ,crazy-purple :weight bold))))
 `(ido-only-match ((t (:foreground ,crazy-red-1 :weight bold))))
 `(ido-subdir ((t (:foreground ,crazy-blue))))
 `(ido-virtual ((t (:foreground ,crazy-mono-3))))
 `(ace-jump-face-background ((t (:foreground ,crazy-mono-3 :background ,crazy-bg-1 :inverse-video nil))))
 `(ace-jump-face-foreground ((t (:foreground ,crazy-red-1 :background ,crazy-bg-1 :inverse-video nil))))
 `(aw-background-face ((t (:inherit font-lock-comment-face))))
 `(aw-leading-char-face ((t (:foreground ,crazy-red-1 :weight bold))))
 `(centaur-tabs-default ((t (:background ,crazy-black :foreground ,crazy-black))))
 `(centaur-tabs-selected ((t (:background ,crazy-bg :foreground ,crazy-fg :weight bold))))
 `(centaur-tabs-unselected ((t (:background ,crazy-black :foreground ,crazy-fg :weight light))))
 `(centaur-tabs-selected-modified ((t (:background ,crazy-bg :foreground ,crazy-blue :weight bold))))
 `(centaur-tabs-unselected-modified ((t (:background ,crazy-black :weight light :foreground ,crazy-blue))))
 `(centaur-tabs-active-bar-face ((t (:background ,crazy-accent))))
 `(centaur-tabs-modified-marker-selected ((t (:inherit 'centaur-tabs-selected :foreground,crazy-accent))))
 `(centaur-tabs-modified-marker-unselected ((t (:inherit 'centaur-tabs-unselected :foreground,crazy-accent))))
 `(company-tooltip ((t (:foreground ,crazy-fg :background ,crazy-bg-1))))
 `(company-tooltip-annotation ((t (:foreground ,crazy-mono-2 :background ,crazy-bg-1))))
 `(company-tooltip-annotation-selection ((t (:foreground ,crazy-mono-2 :background ,crazy-gray))))
 `(company-tooltip-selection ((t (:foreground ,crazy-fg :background ,crazy-gray))))
 `(company-tooltip-mouse ((t (:background ,crazy-gray))))
 `(company-tooltip-common ((t (:foreground ,crazy-orange-2 :background ,crazy-bg-1))))
 `(company-tooltip-common-selection ((t (:foreground ,crazy-orange-2 :background ,crazy-gray))))
 `(company-preview ((t (:background ,crazy-bg))))
 `(company-preview-common ((t (:foreground ,crazy-orange-2 :background ,crazy-bg))))
 `(company-scrollbar-fg ((t (:background ,crazy-mono-1))))
 `(company-scrollbar-bg ((t (:background ,crazy-bg-1))))
 `(company-template-field ((t (:inherit highlight))))
 `(doom-modeline-bar ((t (:background ,crazy-accent))))
 `(flyspell-duplicate ((t (:underline (:color ,crazy-orange-1 :style wave)))))
 `(flyspell-incorrect ((t (:underline (:color ,crazy-red-1 :style wave)))))
 `(flymake-error ((t (:underline (:color ,crazy-red-1 :style wave)))))
 `(flymake-note ((t (:underline (:color ,crazy-green :style wave)))))
 `(flymake-warning ((t (:underline (:color ,crazy-orange-1 :style wave)))))
 `(flycheck-error ((t (:underline (:color ,crazy-red-1 :style wave)))))
 `(flycheck-info ((t (:underline (:color ,crazy-green :style wave)))))
 `(flycheck-warning ((t (:underline (:color ,crazy-orange-1 :style wave)))))
 `(compilation-face ((t (:foreground ,crazy-fg))))
 `(compilation-line-number ((t (:foreground ,crazy-mono-2))))
 `(compilation-column-number ((t (:foreground ,crazy-mono-2))))
 `(compilation-mode-line-exit ((t (:inherit compilation-info :weight bold))))
 `(compilation-mode-line-fail ((t (:inherit compilation-error :weight bold))))
 `(isearch ((t (:foreground ,crazy-bg :background ,crazy-purple))))
 `(isearch-fail ((t (:foreground ,crazy-red-2 :background nil))))
 `(lazy-highlight ((t (:foreground ,crazy-purple :background ,crazy-bg-1 :underline ,crazy-purple))))
 '(diff-hl-change ((t (:foreground "#E9C062" :background "#8b733a"))))
 '(diff-hl-delete ((t (:foreground "#CC6666" :background "#7a3d3d"))))
 '(diff-hl-insert ((t (:foreground "#A8FF60" :background "#547f30"))))
 '(dired-directory ((t (:inherit (font-lock-keyword-face)))))
 '(dired-flagged ((t (:inherit (diff-hl-delete)))))
 '(dired-symlink ((t (:foreground "#FD5FF1"))))
 `(dired-async-failures ((t (:inherit error))))
 `(dired-async-message ((t (:inherit success))))
 `(dired-async-mode-message ((t (:foreground ,crazy-orange-1))))
 `(helm-header ((t (:foreground ,crazy-mono-2 :background ,crazy-bg :underline nil :box (:line-width 6 :color ,crazy-bg)))))
 `(helm-source-header ((t (:foreground ,crazy-orange-2 :background ,crazy-bg :underline nil :weight bold :box (:line-width 6 :color ,crazy-bg)))))
 `(helm-selection ((t (:background ,crazy-gray))))
 `(helm-selection-line ((t (:background ,crazy-gray))))
 `(helm-visible-mark ((t (:background ,crazy-bg :foreground ,crazy-orange-2))))
 `(helm-candidate-number ((t (:foreground ,crazy-green :background ,crazy-bg-1))))
 `(helm-separator ((t (:background ,crazy-bg :foreground ,crazy-red-1))))
 `(helm-M-x-key ((t (:foreground ,crazy-orange-1))))
 `(helm-bookmark-addressbook ((t (:foreground ,crazy-orange-1))))
 `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
 `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
 `(helm-bookmark-gnus ((t (:foreground ,crazy-purple))))
 `(helm-bookmark-info ((t (:foreground ,crazy-green))))
 `(helm-bookmark-man ((t (:foreground ,crazy-orange-2))))
 `(helm-bookmark-w3m ((t (:foreground ,crazy-purple))))
 `(helm-match ((t (:foreground ,crazy-orange-2))))
 `(helm-ff-directory ((t (:foreground ,crazy-cyan :background ,crazy-bg :weight bold))))
 `(helm-ff-file ((t (:foreground ,crazy-fg :background ,crazy-bg :weight normal))))
 `(helm-ff-executable ((t (:foreground ,crazy-green :background ,crazy-bg :weight normal))))
 `(helm-ff-invalid-symlink ((t (:foreground ,crazy-red-1 :background ,crazy-bg :weight bold))))
 `(helm-ff-symlink ((t (:foreground ,crazy-orange-2 :background ,crazy-bg :weight bold))))
 `(helm-ff-prefix ((t (:foreground ,crazy-bg :background ,crazy-orange-2 :weight normal))))
 `(helm-buffer-not-saved ((t (:foreground ,crazy-red-1))))
 `(helm-buffer-process ((t (:foreground ,crazy-mono-2))))
 `(helm-buffer-saved-out ((t (:foreground ,crazy-fg))))
 `(helm-buffer-size ((t (:foreground ,crazy-mono-2))))
 `(helm-buffer-directory ((t (:foreground ,crazy-purple))))
 `(helm-grep-cmd-line ((t (:foreground ,crazy-cyan))))
 `(helm-grep-file ((t (:foreground ,crazy-fg))))
 `(helm-grep-finish ((t (:foreground ,crazy-green))))
 `(helm-grep-lineno ((t (:foreground ,crazy-mono-2))))
 `(helm-grep-finish ((t (:foreground ,crazy-red-1))))
 `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
 `(helm-swoop-target-line-block-face ((t (:background ,crazy-mono-3 :foreground "#222222"))))
 `(helm-swoop-target-line-face ((t (:background ,crazy-mono-3 :foreground "#222222"))))
 `(helm-swoop-target-word-face ((t (:background ,crazy-purple :foreground "#ffffff"))))
 `(helm-locate-finish ((t (:foreground ,crazy-green))))
 `(info-menu-star ((t (:foreground ,crazy-red-1))))
 `(ivy-confirm-face ((t (:inherit minibuffer-prompt :foreground ,crazy-green))))
 `(ivy-current-match ((t (:background ,crazy-gray :weight normal))))
 `(ivy-highlight-face ((t (:inherit font-lock-builtin-face))))
 `(ivy-match-required-face ((t (:inherit minibuffer-prompt :foreground ,crazy-red-1))))
 `(ivy-minibuffer-match-face-1 ((t (:background ,crazy-bg-hl))))
 `(ivy-minibuffer-match-face-2 ((t (:inherit ivy-minibuffer-match-face-1 :background ,crazy-black :foreground ,crazy-purple :weight semi-bold))))
 `(ivy-minibuffer-match-face-3 ((t (:inherit ivy-minibuffer-match-face-2 :background ,crazy-black :foreground ,crazy-green :weight semi-bold))))
 `(ivy-minibuffer-match-face-4 ((t (:inherit ivy-minibuffer-match-face-2 :background ,crazy-black :foreground ,crazy-orange-2 :weight semi-bold))))
 `(ivy-minibuffer-match-highlight ((t (:inherit ivy-current-match))))
 `(ivy-modified-buffer ((t (:inherit default :foreground ,crazy-orange-1))))
 `(ivy-virtual ((t (:inherit font-lock-builtin-face :slant italic))))
 `(counsel-key-binding ((t (:foreground ,crazy-orange-2 :weight bold))))
 `(swiper-match-face-1 ((t (:inherit ivy-minibuffer-match-face-1))))
 `(swiper-match-face-2 ((t (:inherit ivy-minibuffer-match-face-2))))
 `(swiper-match-face-3 ((t (:inherit ivy-minibuffer-match-face-3))))
 `(swiper-match-face-4 ((t (:inherit ivy-minibuffer-match-face-4))))
 `(git-commit-comment-action  ((t (:foreground ,crazy-green :weight bold))))
 `(git-commit-comment-branch  ((t (:foreground ,crazy-blue :weight bold))))
 `(git-commit-comment-heading ((t (:foreground ,crazy-orange-2 :weight bold))))
 `(git-gutter:added ((t (:foreground ,crazy-green :weight bold))))
 `(git-gutter:deleted ((t (:foreground ,crazy-red-1 :weight bold))))
 `(git-gutter:modified ((t (:foreground ,crazy-orange-1 :weight bold))))
 `(eshell-ls-archive ((t (:foreground ,crazy-purple :weight bold))))
 `(eshell-ls-backup ((t (:foreground ,crazy-orange-2))))
 `(eshell-ls-clutter ((t (:foreground ,crazy-red-2 :weight bold))))
 `(eshell-ls-directory ((t (:foreground ,crazy-blue :weight bold))))
 `(eshell-ls-executable ((t (:foreground ,crazy-green :weight bold))))
 `(eshell-ls-missing ((t (:foreground ,crazy-red-1 :weight bold))))
 `(eshell-ls-product ((t (:foreground ,crazy-orange-2))))
 `(eshell-ls-special ((t (:foreground "#FD5FF1" :weight bold))))
 `(eshell-ls-symlink ((t (:foreground ,crazy-cyan :weight bold))))
 `(eshell-ls-unreadable ((t (:foreground ,crazy-mono-1))))
 `(eshell-prompt ((t (:inherit minibuffer-prompt))))
 `(Man-overstrike ((t (:inherit font-lock-type-face :weight bold))))
 `(Man-underline ((t (:inherit font-lock-keyword-face :slant italic :weight bold))))
 `(woman-bold ((t (:inherit font-lock-type-face :weight bold))))
 `(woman-italic ((t (:inherit font-lock-keyword-face :slant italic :weight bold))))
 `(dictionary-button-face ((t (:inherit widget-button))))
 `(dictionary-reference-face ((t (:inherit font-lock-type-face :weight bold))))
 `(dictionary-word-entry-face ((t (:inherit font-lock-keyword-face :slant italic :weight bold))))
 `(erc-error-face ((t (:inherit error))))
 `(erc-input-face ((t (:inherit shadow))))
 `(erc-my-nick-face ((t (:foreground ,crazy-accent))))
 `(erc-notice-face ((t (:inherit font-lock-comment-face))))
 `(erc-timestamp-face ((t (:foreground ,crazy-green :weight bold))))
 `(jabber-roster-user-online ((t (:foreground ,crazy-green))))
 `(jabber-roster-user-away ((t (:foreground ,crazy-red-1))))
 `(jabber-roster-user-xa ((t (:foreground ,crazy-red-2))))
 `(jabber-roster-user-dnd ((t (:foreground ,crazy-purple))))
 `(jabber-roster-user-chatty ((t (:foreground ,crazy-orange-2))))
 `(jabber-roster-user-error ((t (:foreground ,crazy-red-1 :bold t))))
 `(jabber-roster-user-offline ((t (:foreground ,crazy-mono-3))))
 `(jabber-chat-prompt-local ((t (:foreground ,crazy-blue))))
 `(jabber-chat-prompt-foreign ((t (:foreground ,crazy-orange-2))))
 `(jabber-chat-prompt-system ((t (:foreground ,crazy-mono-3))))
 `(jabber-chat-error ((t (:inherit jabber-roster-user-error))))
 `(jabber-rare-time-face ((t (:foreground ,crazy-cyan))))
 `(jabber-activity-face ((t (:inherit jabber-chat-prompt-foreign))))
 `(jabber-activity-personal-face ((t (:inherit jabber-chat-prompt-local))))
 `(eww-form-checkbox ((t (:inherit eww-form-submit))))
 `(eww-form-file ((t (:inherit eww-form-submit))))
 `(eww-form-select ((t (:inherit eww-form-submit))))
 `(eww-form-submit ((t (:background ,crazy-gray :foreground ,crazy-fg :box (:line-width 2 :color ,crazy-border :style released-button)))))
 `(eww-form-text ((t (:inherit widget-field :box (:line-width 1 :color ,crazy-border)))))
 `(eww-form-textarea ((t (:inherit eww-form-text))))
 `(eww-invalid-certificate ((t (:foreground ,crazy-red-1))))
 `(eww-valid-certificate ((t (:foreground ,crazy-green))))
 `(js2-error ((t (:underline (:color ,crazy-red-1 :style wave)))))
 `(js2-external-variable ((t (:foreground ,crazy-cyan))))
 `(js2-warning ((t (:underline (:color ,crazy-orange-1 :style wave)))))
 `(js2-function-call ((t (:inherit (font-lock-function-name-face)))))
 `(js2-function-param ((t (:foreground ,crazy-mono-1))))
 `(js2-jsdoc-tag ((t (:foreground ,crazy-purple))))
 `(js2-jsdoc-type ((t (:foreground ,crazy-orange-2))))
 `(js2-jsdoc-value((t (:foreground ,crazy-red-1))))
 `(js2-object-property ((t (:foreground ,crazy-red-1))))
 `(ediff-fine-diff-Ancestor                ((t (:background "#885555"))))
 `(ediff-fine-diff-A                       ((t (:background "#885555"))))
 `(ediff-fine-diff-B                       ((t (:background "#558855"))))
 `(ediff-fine-diff-C                       ((t (:background "#555588"))))
 `(ediff-current-diff-Ancestor             ((t (:background "#663333"))))
 `(ediff-current-diff-A                    ((t (:background "#663333"))))
 `(ediff-current-diff-B                    ((t (:background "#336633"))))
 `(ediff-current-diff-C                    ((t (:background "#333366"))))
 `(ediff-even-diff-Ancestor                ((t (:background "#181a1f"))))
 `(ediff-even-diff-A                       ((t (:background "#181a1f"))))
 `(ediff-even-diff-B                       ((t (:background "#181a1f"))))
 `(ediff-even-diff-C                       ((t (:background "#181a1f"))))
 `(ediff-odd-diff-Ancestor                 ((t (:background "#181a1f"))))
 `(ediff-odd-diff-A                        ((t (:background "#181a1f"))))
 `(ediff-odd-diff-B                        ((t (:background "#181a1f"))))
 `(ediff-odd-diff-C                        ((t (:background "#181a1f"))))
 `(magit-section-highlight ((t (:background ,crazy-bg-hl))))
 `(magit-section-heading ((t (:foreground ,crazy-orange-2 :weight bold))))
 `(magit-section-heading-selection ((t (:foreground ,crazy-fg :weight bold))))
 `(magit-diff-file-heading ((t (:weight bold))))
 `(magit-diff-file-heading-highlight ((t (:background ,crazy-gray :weight bold))))
 `(magit-diff-file-heading-selection ((t (:foreground ,crazy-orange-2 :background ,crazy-bg-hl :weight bold))))
 `(magit-diff-hunk-heading ((t (:foreground ,crazy-mono-2 :background ,crazy-gray))))
 `(magit-diff-hunk-heading-highlight ((t (:foreground ,crazy-mono-1 :background ,crazy-mono-3))))
 `(magit-diff-hunk-heading-selection ((t (:foreground ,crazy-purple :background ,crazy-mono-3))))
 `(magit-diff-context ((t (:foreground ,crazy-fg))))
 `(magit-diff-context-highlight ((t (:background ,crazy-bg-1 :foreground ,crazy-fg))))
 `(magit-diffstat-added ((t (:foreground ,crazy-green))))
 `(magit-diffstat-removed ((t (:foreground ,crazy-red-1))))
 `(magit-process-ok ((t (:foreground ,crazy-green))))
 `(magit-process-ng ((t (:foreground ,crazy-red-1))))
 `(magit-log-author ((t (:foreground ,crazy-orange-2))))
 `(magit-log-date ((t (:foreground ,crazy-mono-2))))
 `(magit-log-graph ((t (:foreground ,crazy-silver))))
 `(magit-sequence-pick ((t (:foreground ,crazy-orange-2))))
 `(magit-sequence-stop ((t (:foreground ,crazy-green))))
 `(magit-sequence-part ((t (:foreground ,crazy-orange-1))))
 `(magit-sequence-head ((t (:foreground ,crazy-blue))))
 `(magit-sequence-drop ((t (:foreground ,crazy-red-1))))
 `(magit-sequence-done ((t (:foreground ,crazy-mono-2))))
 `(magit-sequence-onto ((t (:foreground ,crazy-mono-2))))
 `(magit-bisect-good ((t (:foreground ,crazy-green))))
 `(magit-bisect-skip ((t (:foreground ,crazy-orange-1))))
 `(magit-bisect-bad ((t (:foreground ,crazy-red-1))))
 `(magit-blame-heading ((t (:background ,crazy-bg-1 :foreground ,crazy-mono-2))))
 `(magit-blame-hash ((t (:background ,crazy-bg-1 :foreground ,crazy-purple))))
 `(magit-blame-name ((t (:background ,crazy-bg-1 :foreground ,crazy-orange-2))))
 `(magit-blame-date ((t (:background ,crazy-bg-1 :foreground ,crazy-mono-3))))
 `(magit-blame-summary ((t (:background ,crazy-bg-1 :foreground ,crazy-mono-2))))
 `(magit-dimmed ((t (:foreground ,crazy-mono-2))))
 `(magit-hash ((t (:foreground ,crazy-purple))))
 `(magit-tag  ((t (:foreground ,crazy-orange-1 :weight bold))))
 `(magit-branch-remote  ((t (:foreground ,crazy-green :weight bold))))
 `(magit-branch-local   ((t (:foreground ,crazy-blue :weight bold))))
 `(magit-branch-current ((t (:foreground ,crazy-blue :weight bold :box t))))
 `(magit-head           ((t (:foreground ,crazy-blue :weight bold))))
 `(magit-refname        ((t (:background ,crazy-bg :foreground ,crazy-fg :weight bold))))
 `(magit-refname-stash  ((t (:background ,crazy-bg :foreground ,crazy-fg :weight bold))))
 `(magit-refname-wip    ((t (:background ,crazy-bg :foreground ,crazy-fg :weight bold))))
 `(magit-signature-good      ((t (:foreground ,crazy-green))))
 `(magit-signature-bad       ((t (:foreground ,crazy-red-1))))
 `(magit-signature-untrusted ((t (:foreground ,crazy-orange-1))))
 `(magit-cherry-unmatched    ((t (:foreground ,crazy-cyan))))
 `(magit-cherry-equivalent   ((t (:foreground ,crazy-purple))))
 `(magit-reflog-commit       ((t (:foreground ,crazy-green))))
 `(magit-reflog-amend        ((t (:foreground ,crazy-purple))))
 `(magit-reflog-merge        ((t (:foreground ,crazy-green))))
 `(magit-reflog-checkout     ((t (:foreground ,crazy-blue))))
 `(magit-reflog-reset        ((t (:foreground ,crazy-red-1))))
 `(magit-reflog-rebase       ((t (:foreground ,crazy-purple))))
 `(magit-reflog-cherry-pick  ((t (:foreground ,crazy-green))))
 `(magit-reflog-remote       ((t (:foreground ,crazy-cyan))))
 `(magit-reflog-other        ((t (:foreground ,crazy-cyan))))
 `(message-cited-text ((t (:foreground ,crazy-green))))
 `(message-header-cc ((t (:foreground ,crazy-orange-1 :weight bold))))
 `(message-header-name ((t (:foreground ,crazy-purple))))
 `(message-header-newsgroups ((t (:foreground ,crazy-orange-2 :weight bold :slant italic))))
 `(message-header-other ((t (:foreground ,crazy-red-1))))
 `(message-header-subject ((t (:foreground ,crazy-blue))))
 `(message-header-to ((t (:foreground ,crazy-orange-2 :weight bold))))
 `(message-header-xheader ((t (:foreground ,crazy-silver))))
 `(message-mml ((t (:foreground ,crazy-purple))))
 `(message-separator ((t (:foreground ,crazy-mono-3 :slant italic))))
 `(epa-field-body ((t (:foreground ,crazy-blue :slant italic))))
 `(epa-field-name ((t (:foreground ,crazy-cyan :weight bold))))
 `(notmuch-crypto-decryption ((t (:foreground ,crazy-purple :background ,crazy-black))))
 `(notmuch-crypto-signature-bad ((t (:foreground ,crazy-red-1 :background ,crazy-black))))
 `(notmuch-crypto-signature-good ((t (:foreground ,crazy-green :background ,crazy-black))))
 `(notmuch-crypto-signature-good-key ((t (:foreground ,crazy-green :background ,crazy-black))))
 `(notmuch-crypto-signature-unknown ((t (:foreground ,crazy-orange-1 :background ,crazy-black))))
 `(notmuch-hello-logo-background ((t (:inherit default))))
 `(notmuch-message-summary-face ((t (:background ,crazy-black))))
 `(notmuch-search-count ((t (:inherit default :foreground ,crazy-silver))))
 `(notmuch-search-date ((t (:inherit default :foreground ,crazy-purple))))
 `(notmuch-search-matching-authors ((t (:inherit default :foreground ,crazy-orange-2))))
 `(notmuch-search-non-matching-authors ((t (:inherit font-lock-comment-face :slant italic))))
 `(notmuch-tag-added ((t (:underline t))))
 `(notmuch-tag-deleted ((t (:strike-through ,crazy-red-2))))
 `(notmuch-tag-face ((t (:foreground ,crazy-green))))
 `(notmuch-tag-unread ((t (:foreground ,crazy-red-1))))
 `(notmuch-tree-match-author-face ((t (:inherit notmuch-search-matching-authors))))
 `(notmuch-tree-match-date-face ((t (:inherit notmuch-search-date))))
 `(notmuch-tree-match-face ((t (:weight semi-bold))))
 `(notmuch-tree-match-tag-face ((t (:inherit notmuch-tag-face))))
 `(notmuch-tree-no-match-face ((t (:slant italic :weight light :inherit font-lock-comment-face))))
 `(elfeed-log-debug-level-face ((t (:background ,crazy-black :foreground ,crazy-green))))
 `(elfeed-log-error-level-face ((t (:background ,crazy-black :foreground ,crazy-red-1))))
 `(elfeed-log-info-level-face ((t (:background ,crazy-black :foreground ,crazy-blue))))
 `(elfeed-log-warn-level-face ((t (:background ,crazy-black :foreground ,crazy-orange-1))))
 `(elfeed-search-date-face ((t (:foreground ,crazy-purple))))
 `(elfeed-search-feed-face ((t (:foreground ,crazy-orange-2))))
 `(elfeed-search-tag-face ((t (:foreground ,crazy-green))))
 `(elfeed-search-title-face ((t (:foreground ,crazy-mono-1))))
 `(elfeed-search-unread-count-face ((t (:foreground ,crazy-silver))))
 `(persp-selected-face ((t (:foreground ,crazy-blue))))
 `(powerline-active1 ((,class (:background ,crazy-bg-hl :foreground ,crazy-purple))))
 `(powerline-active2 ((,class (:background ,crazy-bg-hl :foreground ,crazy-purple))))
 `(powerline-inactive1 ((,class (:background ,crazy-bg :foreground ,crazy-fg))))
 `(powerline-inactive2 ((,class (:background ,crazy-bg :foreground ,crazy-fg))))
 `(rainbow-delimiters-depth-1-face ((t (:foreground ,crazy-blue))))
 `(rainbow-delimiters-depth-2-face ((t (:foreground ,crazy-green))))
 `(rainbow-delimiters-depth-3-face ((t (:foreground ,crazy-orange-1))))
 `(rainbow-delimiters-depth-4-face ((t (:foreground ,crazy-cyan))))
 `(rainbow-delimiters-depth-5-face ((t (:foreground ,crazy-purple))))
 `(rainbow-delimiters-depth-6-face ((t (:foreground ,crazy-orange-2))))
 `(rainbow-delimiters-depth-7-face ((t (:foreground ,crazy-blue))))
 `(rainbow-delimiters-depth-8-face ((t (:foreground ,crazy-green))))
 `(rainbow-delimiters-depth-9-face ((t (:foreground ,crazy-orange-1))))
 `(rainbow-delimiters-depth-10-face ((t (:foreground ,crazy-cyan))))
 `(rainbow-delimiters-depth-11-face ((t (:foreground ,crazy-purple))))
 `(rainbow-delimiters-depth-12-face ((t (:foreground ,crazy-orange-2))))
 `(rainbow-delimiters-unmatched-face ((t (:foreground ,crazy-red-1 :weight bold))))
 `(rbenv-active-ruby-face ((t (:foreground ,crazy-green))))
 `(elixir-crazy-face ((t (:foreground ,crazy-cyan))))
 `(elixir-attribute-face ((t (:foreground ,crazy-red-1))))
 `(show-paren-match ((,class (:foreground ,crazy-purple :inherit bold :underline t))))
 `(show-paren-mismatch ((,class (:foreground ,crazy-red-1 :inherit bold :underline t))))
 `(sh-heredoc ((t (:inherit font-lock-string-face :slant italic))))
 `(cider-fringe-good-face ((t (:foreground ,crazy-green))))
 `(sly-error-face ((t (:underline (:color ,crazy-red-1 :style wave)))))
 `(sly-mrepl-note-face ((t (:inherit font-lock-comment-face))))
 `(sly-mrepl-output-face ((t (:inherit font-lock-string-face))))
 `(sly-mrepl-prompt-face ((t (:inherit comint-highlight-prompt))))
 `(sly-note-face ((t (:underline (:color ,crazy-green :style wave)))))
 `(sly-style-warning-face ((t (:underline (:color ,crazy-orange-2 :style wave)))))
 `(sly-warning-face ((t (:underline (:color ,crazy-orange-1 :style wave)))))
 `(sp-show-pair-mismatch-face ((t (:foreground ,crazy-red-1 :background ,crazy-gray :weight bold))))
 `(sp-show-pair-match-face ((t (:background ,crazy-gray :weight bold))))
 `(lispy-face-hint ((t (:background ,crazy-border :foreground ,crazy-orange-2))))
 `(lispyville-special-face ((t (:foreground ,crazy-red-1))))
 `(spaceline-flycheck-error  ((,class (:foreground ,crazy-red-1))))
 `(spaceline-flycheck-info   ((,class (:foreground ,crazy-green))))
 `(spaceline-flycheck-warning((,class (:foreground ,crazy-orange-1))))
 `(spaceline-python-venv ((,class (:foreground ,crazy-purple))))
 `(solaire-default-face ((,class (:inherit default :background ,crazy-black))))
 `(solaire-minibuffer-face ((,class (:inherit default :background ,crazy-black))))
 `(web-mode-doctype-face ((t (:inherit font-lock-comment-face))))
 `(web-mode-error-face ((t (:background ,crazy-black :foreground ,crazy-red-1))))
 `(web-mode-html-attr-equal-face ((t (:inherit default))))
 `(web-mode-html-attr-name-face ((t (:foreground ,crazy-orange-1))))
 `(web-mode-html-tag-bracket-face ((t (:inherit default))))
 `(web-mode-html-tag-face ((t (:foreground ,crazy-red-1))))
 `(web-mode-symbol-face ((t (:foreground ,crazy-orange-1))))
 `(nxml-attribute-local-name ((t (:foreground ,crazy-orange-1))))
 `(nxml-element-local-name ((t (:foreground ,crazy-red-1))))
 `(nxml-markup-declaration-delimiter ((t (:inherit (font-lock-comment-face nxml-delimiter)))))
 `(nxml-processing-instruction-delimiter ((t (:inherit nxml-markup-declaration-delimiter))))
 `(flx-highlight-face ((t (:inherit (link) :weight bold))))
 `(rpm-spec-tag-face ((t (:foreground ,crazy-blue))))
 `(rpm-spec-obsolete-tag-face ((t (:foreground "#FFFFFF" :background ,crazy-red-2))))
 `(rpm-spec-macro-face ((t (:foreground ,crazy-orange-2))))
 `(rpm-spec-var-face ((t (:foreground ,crazy-red-1))))
 `(rpm-spec-doc-face ((t (:foreground ,crazy-purple))))
 `(rpm-spec-dir-face ((t (:foreground ,crazy-cyan))))
 `(rpm-spec-package-face ((t (:foreground ,crazy-red-2))))
 `(rpm-spec-ghost-face ((t (:foreground ,crazy-red-2))))
 `(rpm-spec-section-face ((t (:foreground ,crazy-orange-2))))
 `(guix-true ((t (:foreground ,crazy-green :weight bold))))
 `(guix-build-log-phase-end ((t (:inherit success))))
 `(guix-build-log-phase-start ((t (:inherit success :weight bold))))
 `(gomoku-O ((t (:foreground ,crazy-red-1 :weight bold))))
 `(gomoku-X ((t (:foreground ,crazy-green :weight bold))))
 `(tabbar-default ((,class (:foreground ,crazy-fg :background ,crazy-black))))
 `(tabbar-highlight ((,class (:underline t))))
 `(tabbar-button ((,class (:foreground ,crazy-fg :background ,crazy-bg))))
 `(tabbar-button-highlight ((,class (:inherit 'tabbar-button :inverse-video t))))
 `(tabbar-modified ((,class (:inherit tabbar-button :foreground ,crazy-purple :weight light :slant italic))))
 `(tabbar-unselected ((,class (:inherit tabbar-default :foreground ,crazy-fg :background ,crazy-black :slant italic :underline nil :box (:line-width 1 :color ,crazy-bg)))))
 `(tabbar-unselected-modified ((,class (:inherit tabbar-modified :background ,crazy-black :underline nil :box (:line-width 1 :color ,crazy-bg)))))
 `(tabbar-selected ((,class (:inherit tabbar-default :foreground ,crazy-fg :background ,crazy-bg :weight bold :underline nil :box (:line-width 1 :color ,crazy-bg)))))
 `(tabbar-selected-modified ((,class (:inherit tabbar-selected :foreground ,crazy-purple :underline nil :box (:line-width 1 :color ,crazy-bg)))))
 `(linum ((t (:foreground ,crazy-gutter :background ,crazy-bg))))
 `(linum-highlight-face ((t (:foreground ,crazy-fg :background ,crazy-bg))))
 `(line-number ((t (:foreground ,crazy-gutter :background ,crazy-bg))))
 `(line-number-current-line ((t (:foreground ,crazy-fg :background ,crazy-bg))))
 `(reb-match-0 ((t (:background ,crazy-gray))))
 `(reb-match-1 ((t (:background ,crazy-black :foreground ,crazy-purple :weight semi-bold))))
 `(reb-match-2 ((t (:background ,crazy-black :foreground ,crazy-green :weight semi-bold))))
 `(reb-match-3 ((t (:background ,crazy-black :foreground ,crazy-orange-2 :weight semi-bold))))
 `(desktop-entry-deprecated-keyword-face ((t (:inherit font-lock-warning-face))))
 `(desktop-entry-group-header-face ((t (:inherit font-lock-type-face))))
 `(desktop-entry-locale-face ((t (:inherit font-lock-string-face))))
 `(desktop-entry-unknown-keyword-face ((t (:underline (:color ,crazy-red-1 :style wave) :inherit font-lock-keyword-face))))
 `(desktop-entry-value-face ((t (:inherit default))))
 `(font-latex-sectioning-0-face ((t (:foreground ,crazy-blue :height 1.0))))
 `(font-latex-sectioning-1-face ((t (:foreground ,crazy-blue :height 1.0))))
 `(font-latex-sectioning-2-face ((t (:foreground ,crazy-blue :height 1.0))))
 `(font-latex-sectioning-3-face ((t (:foreground ,crazy-blue :height 1.0))))
 `(font-latex-sectioning-4-face ((t (:foreground ,crazy-blue :height 1.0))))
 `(font-latex-sectioning-5-face ((t (:foreground ,crazy-blue :height 1.0))))
 `(font-latex-bold-face ((t (:foreground ,crazy-green :weight bold))))
 `(font-latex-italic-face ((t (:foreground ,crazy-green))))
 `(font-latex-warning-face ((t (:foreground ,crazy-red-1))))
 `(font-latex-doctex-preprocessor-face ((t (:foreground ,crazy-cyan))))
 `(font-latex-script-char-face ((t (:foreground ,crazy-mono-2))))
 `(org-date ((t (:foreground ,crazy-cyan))))
 `(org-document-info ((t (:foreground ,crazy-mono-2))))
 `(org-document-info-keyword ((t (:inherit org-meta-line :underline t))))
 `(org-document-title ((t (:weight bold))))
 `(org-footnote ((t (:foreground ,crazy-cyan))))
 `(org-sexp-date ((t (:foreground ,crazy-cyan))))
 `(diary ((t (:inherit warning))))
 `(holiday ((t (:foreground ,crazy-green))))
 `(breakpoint-disabled ((t (:foreground ,crazy-orange-1))))
 `(breakpoint-enabled ((t (:foreground ,crazy-red-1 :weight bold))))
 `(realgud-overlay-arrow1        ((t (:foreground ,crazy-green))))
 `(realgud-overlay-arrow3        ((t (:foreground ,crazy-orange-1))   `(realgud-overlay-arrow2        ((t (:foreground ,crazy-orange-2))))))
 '(realgud-bp-enabled-face       ((t (:inherit (error)))))
 `(realgud-bp-disabled-face      ((t (:inherit (secondary-selection)))))
 `(realgud-bp-line-enabled-face  ((t (:box (:color ,crazy-red-1)))))
 `(realgud-bp-line-disabled-face ((t (:box (:color ,crazy-gray)))))
 `(realgud-line-number           ((t (:foreground ,crazy-mono-2))))
 `(realgud-backtrace-number      ((t (:inherit (secondary-selection)))))
 `(rmsbolt-current-line-face ((t (:inherit hl-line :weight bold))))
 `(ruler-mode-column-number ((t (:inherit ruler-mode-default))))
 `(ruler-mode-comment-column ((t (:foreground ,crazy-red-1))))
 `(ruler-mode-current-column ((t (:foreground ,crazy-accent :inherit ruler-mode-default))))
 `(ruler-mode-default ((t (:inherit mode-line))))
 `(ruler-mode-fill-column ((t (:foreground ,crazy-orange-1 :inherit ruler-mode-default))))
 `(ruler-mode-fringes ((t (:foreground ,crazy-green :inherit ruler-mode-default))))
 `(ruler-mode-goal-column ((t (:foreground ,crazy-cyan :inherit ruler-mode-default))))
 `(ruler-mode-margins ((t (:inherit ruler-mode-default))))
 `(ruler-mode-tab-stop ((t (:foreground ,crazy-mono-3 :inherit ruler-mode-default))))
 `(undo-tree-visualizer-current-face ((t (:foreground ,crazy-red-1))))
 `(undo-tree-visualizer-register-face ((t (:foreground ,crazy-orange-1))))
 `(undo-tree-visualizer-unmodified-face ((t (:foreground ,crazy-cyan))))
 `(tab-bar-tab-inactive ((t (:background ,crazy-bg-hl :foreground ,crazy-fg))))
 `(tab-bar-tab          ((t (:background ,crazy-bg :foreground ,crazy-purple))))
 `(tab-bar              ((t (:background ,crazy-bg-hl))))
 )

 (custom-theme-set-variables
  'crazy
  ;; fill-column-indicator
  `(fci-rule-color ,crazy-gray)

  ;; tetris
  ;; | Tetromino | Color                    |
  ;; | O         | `crazy-orange-2' |
  ;; | J         | `crazy-blue'     |
  ;; | L         | `crazy-orange-1' |
  ;; | Z         | `crazy-red-1'    |
  ;; | S         | `crazy-green'    |
  ;; | T         | `crazy-purple'   |
  ;; | I         | `crazy-cyan'     |
  '(tetris-x-colors
	[[229 192 123] [97 175 239] [209 154 102] [224 108 117] [152 195 121] [198 120 221] [86 182 194]])

  ;; ansi-color
  `(ansi-color-names-vector
	[,crazy-black ,crazy-red-1 ,crazy-green ,crazy-orange-2
				  ,crazy-blue ,crazy-purple ,crazy-cyan ,crazy-fg])
  )

;;;###autoload
(and load-file-name
	 (boundp 'custom-theme-load-path)
	 (add-to-list 'custom-theme-load-path
				  (file-name-as-directory
				   (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'crazy)

;; Local Variables:
;; no-byte-compile: t
;; End:
;;; crazy-theme.el ends here
