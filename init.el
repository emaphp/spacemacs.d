;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     git
     markdown
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     version-control
     html
     javascript
     react
     php
     go
     rust
     docker
     yaml
     nginx
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(vue-mode)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 15
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;;
  ;; PUT CONFIGURATION VALUES HERE
  ;;

  ;; web-mode indentation
  (setq-default custom-web-mode-indent 2)

  ;; json-mode indentation
  (setq-default custom-json-mode-indent 4)

  ;; org-mode directory
  (setq-default custom-org-mode-dir "~/gitlab/org")

  ;; org-mode agenda
  (setq-default custom-org-mode-agenda-dir (concat custom-org-mode-dir "/agenda"))

  ;; org-capture file
  (setq-default custom-org-mode-capture-file "notes.org")

  ;;
  ;; GENERAL
  ;;

  ;; Set Spacemacs as the default commit message editor
  (global-git-commit-mode t)

  ;; Display line numbers
  (global-display-line-numbers-mode)

  ;; Show filename in frame title
  ;; http://emacsredux.com/blog/2013/04/07/display-visited-files-path-in-the-frame-title/
  (setq frame-title-format
        '((:eval (if (buffer-file-name)
                     (abbreviate-file-name (buffer-file-name))
                   "%b"))))

  ;; Include snippets from .spacemacs.d folder
  (setq yas-snippet-dirs
        '("~/.emacs.d/snippets"
          "~/.spacemacs.d/snippets"
          ))

  ;;
  ;; WEB
  ;;

  ;; Set web-mode indentation
  (setq css-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-attr-indent-offset 4)
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-code-indent-offset 2)
  (setq-default js2-basic-offset 2
                jssc-indent-offset-basic-offset 2
                js-indent-level 2)

  ;; Highlights current column in web-mode
  (setq-default web-mode-enable-current-column-highlight t)

  ;; Open Blade templates using web-mode instead of php-mode
  (add-to-list 'auto-mode-alist '("\\.blade.php\\'" . web-mode))

  (with-eval-after-load 'web-mode
    (yas-minor-mode t))

  (with-eval-after-load 'js2-mode
    (yas-minor-mode t))

  (with-eval-after-load 'js-mode
    (yas-minor-mode t))

  (with-eval-after-load 'json-mode
    (yas-minor-mode t))

  (with-eval-after-load 'nxml-mode
    (yas-minor-mode t))

  (with-eval-after-load 'xml-mode
    (yas-minor-mode t))

  (with-eval-after-load 'php-mode
    (yas-minor-mode t))

  (with-eval-after-load 'go-mode
    (yas-minor-mode t))

  ;;
  ;; ORG
  ;;

  ;; Apply configuration though hook
  (with-eval-after-load 'org
    ;; org-mode default directory
    (setq org-directory custom-org-mode-dir)

    ;; org-agenda files
    (setq org-agenda-files (list custom-org-mode-agenda-dir))

    ;; org-capture files
    (setq org-default-notes-file custom-org-mode-capture-file)

    ;; org-refile targets
    (setq org-refile-targets
          '((nil :maxlevel . 3)
            (org-agenda-files :maxlevel . 3)))
    )

  ;;
  ;; MARKDOWN
  ;;

  ;; When exporting to HTML, generate a document with an standard HTML5 compliant doctype
  (eval-after-load "markdown-mode"
    '(defalias 'markdown-add-xhtml-header-and-footer 'as/markdown-add-xhtml-header-and-footer))

  (defun as/markdown-add-xhtml-header-and-footer (title)
    "Wrap XHTML header and footer with given TITLE around current buffer."
    (goto-char (point-min))
    (insert "<!DOCTYPE html>\n"
            "<html>\n"
            "<head>\n<title>")
    (insert title)
    (insert "</title>\n")
    (insert "<meta charset=\"utf-8\" />\n")
    (when (> (length markdown-css-paths) 0)
      (insert (mapconcat 'markdown-stylesheet-link-string markdown-css-paths "\n")))
    (insert "\n</head>\n\n"
            "<body>\n\n")
    (goto-char (point-max))
    (insert "\n"
            "</body>\n"
            "</html>\n"))

  ;;
  ;; GO
  ;;

  ;; Update imports on save
  (setq gofmt-command "goimports")

  ;; Use gometalinter
  (with-eval-after-load 'go
    (go :variables go-use-gometalinter t)
    )

  ;;
  ;; RUST
  ;;

  (setq rust-format-on-save t)

  ;;
  ;; UTILS
  ;;

  (defun html-escape-region (start end)
    "Scapes HTML in the selected region"
    (interactive "r")
    (save-excursion
      (save-restriction
        (narrow-to-region start end)
        (goto-char (point-min))
        (replace-string "&" "&amp;")
        (goto-char (point-min))
        (replace-string "<" "&lt;")
        (goto-char (point-min))
        (replace-string ">" "&gt;")
        )))

  ;; Source: https://www.emacswiki.org/emacs/CopyingWholeLines
  (defun copy-whole-line (arg)
    "Copy lines (as many as prefix argument) in the kill ring"
    (interactive "p")
    (kill-ring-save (line-beginning-position)
                    (line-beginning-position (+ 1 arg))))

  (defun copy-org-link (&optional complete-file link-location)
    "Copies a org-mode link to clipboard"
    (interactive "P")
    (cond
     ((org-in-regexp org-bracket-link-regexp 1)
      (kill-new (org-link-unescape (org-match-string-no-properties 1)))
      (message "Link copied"))
     ((message "No link at point"))))

  (defun wrap-edited-area (start end)
    "Wraps content between edit comments"
    (interactive "r")
    (save-excursion
      (goto-char end) (insert "/* EDIT:END */\n"))
    (next-line)
    (indent-for-tab-command)
    (save-excursion
      (goto-char start) (insert "/* EDIT:START */\n"))
    (indent-for-tab-command))

  ;;
  ;; SPACEBADGE
  ;;

  (defun spacebadge-org-mode ()
    "Inserts a Spacemacs badge in org-mode"
    (interactive)
    (insert "[[https://github.com/syl20bnr/spacemacs][file:https://cdn.rawgit.com/syl20bnr/spacemacs/442d025779da2f62fc86c2082703697714db6514/assets/spacemacs-badge.svg]]
"))

  (defun spacebadge-markdown-mode ()
    "Inserts a Spacemacs badge in markdown-mode"
    (interactive)
    (insert "[![Built with Spacemacs](https://cdn.rawgit.com/syl20bnr/spacemacs/442d025779da2f62fc86c2082703697714db6514/assets/spacemacs-badge.svg)](http://github.com/syl20bnr/spacemacs)
"))

  (defun spacebadge-web-mode ()
    "Inserts a Spacemacs badge in web-mode"
    (interactive)
    (insert "<a href=\"https://github.com/syl20bnr/spacemacs\"><img src=\"https://cdn.rawgit.com/syl20bnr/spacemacs/442d025779da2f62fc86c2082703697714db6514/assets/spacemacs-badge.svg\" /></a>"
            ))

  ;;
  ;; KEY BINDINGS
  ;;

  ;; C-c C-y calls copy-whole-line
  (global-set-key "\C-c\C-y" 'copy-whole-line)

  ;; C-+ increases text size, C-- decreases it
  (define-key global-map (kbd "C-+") 'text-scale-increase)
  (define-key global-map (kbd "C--") 'text-scale-decrease)

  ;; SPC o s calls just-one-space
  (spacemacs/set-leader-keys "os" 'just-one-space)

  ;; markdown-mode: SPC o T generates table of contents
  (spacemacs/set-leader-keys "oT" 'markdown-toc-generate-toc)

  ;; SPC o E escapes html in region
  (spacemacs/set-leader-keys "oE" 'html-escape-region)

  ;; SPC o d calls diff-buffer-with-file
  (spacemacs/set-leader-keys "od" 'diff-buffer-with-file)

  ;; Yasnippet shortcuts
  (spacemacs/declare-prefix "oy" "yasnippet")
  ;; SPC o y i inserts a snippet using yasnippet
  (spacemacs/set-leader-keys "oyi" 'yas-insert-snippet)
  ;; SPC o y n creates a new snippet. If nothing happens, check that yas-minor-mode is enabled.
  (spacemacs/set-leader-keys "oyn" 'yas-new-snippet)
  ;; C-c y calls yas-expand
  (global-set-key "\C-c\C-e" 'yas-expand)

  ;; Org-mode shortcuts
  (spacemacs/declare-prefix "oo" "org")
  ;; SPC o o i inserts an org template
  (spacemacs/set-leader-keys "ooi" 'org-insert-structure-template)
  ;; SPC o o x calls org-cut-subtree. Useful for moving stuff around.
  (spacemacs/set-leader-keys "oox" 'org-cut-subtree)
  ;; SPC o o l calls copy-org-link
  (spacemacs/set-leader-keys "ool" 'copy-org-link)
  ;; SPC o c calls org-capture
  (spacemacs/set-leader-keys "ooc" 'org-capture)
  ;; f12 calls org-agenda
  (global-set-key (kbd "<f12>")
                  (lambda () (interactive) (find-file (concat custom-org-mode-dir "/" custom-org-mode-capture-file))))

  ;; Spacebadge shortcuts
  (spacemacs/declare-prefix "ob" "spacebadge")
  (spacemacs/set-leader-keys "obo" 'spacebadge-org-mode)
  (spacemacs/set-leader-keys "obm" 'spacebadge-markdown-mode)
  (spacemacs/set-leader-keys "obw" 'spacebadge-web-mode)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flycheck-rust yaml-mode nginx-mode flycheck-pos-tip flycheck helm-company helm-c-yasnippet fuzzy company-web web-completion-data company-tern tern company-statistics company-go company-anaconda company auto-yasnippet ac-ispell auto-complete dockerfile-mode docker tablist docker-tramp toml-mode racer pos-tip cargo rust-mode vue-mode edit-indirect ssass-mode vue-html-mode yapfify web-mode web-beautify tagedit smeargle slim-mode scss-mode sass-mode pyvenv pytest pyenv-mode py-isort pug-mode pip-requirements phpunit phpcbf php-extras php-auto-yasnippets orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download mmm-mode markdown-toc markdown-mode magit-gitflow livid-mode skewer-mode simple-httpd live-py-mode json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc hy-mode dash-functional htmlize helm-pydoc helm-gitignore helm-css-scss haml-mode go-guru go-eldoc go-mode gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md evil-magit magit magit-popup git-commit with-editor emmet-mode drupal-mode php-mode diff-hl cython-mode coffee-mode anaconda-mode pythonic ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
