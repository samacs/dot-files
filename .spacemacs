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
   ;;/node/v6 or `spacemacs'. (default 'spacemacs)
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
     octave
     php
     erlang
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     colors
     helm
     asm
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t)
     better-defaults
     emacs-lisp
     git
     (markdown :variables
               markdown-live-preview-engine 'vmd)
     org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            shell-default-term-shell "/bin/zsh")
     shell-scripts
     ;; spell-checking
     syntax-checking
     ;; version-control
     c-c++
     html
     common-lisp
     chrome
     csv
     csharp
     osx
     dash
     docker
     elixir
     flow-for-emacs
     go
     javascript
     java
     python
     ruby
     ruby-on-rails
     sql
     swift
     smex
     typescript
     yaml
     ansible
     nginx
     restclient
     react
     vagrant
     spotify
     search-engine
     ;; slack
     ;; samacs
     themes-megapack)
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      helm-dash
                                      key-chord
                                      pig-mode
                                      mmm-mode
                                      origami
                                      magit-gitflow
                                      ansible
                                      tern-auto-complete
                                      ruby-refactor
                                      yatemplate
                                      multi-term
                                      ;; company-robe
                                      minimap)
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
   dotspacemacs-editing-style 'emacs
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
   ;; dotspacemacs-themes '(spacemacs-dark
   ;;                       spacemacs-light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         monokai
                         leuven
                         zenburn
                         dracula-theme)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
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
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
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
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
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
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setenv "PATH" (concat (getenv "PATH") ":/Users/samacs/.nvm/versions/node/v6.9.1/bin"))
  (setq exec-path (append exec-path '("/Users/samacs/.nvm/versions/node/v6.9.1/bin")))
  (setq projectile-enable-caching t)

  ;; Java configuration
  (setq eclim-eclipse-dir "~/eclipse/java-neon/Eclipse.app/Contents/Eclipse"
        eclim-executable "/Users/samacs/.p2/pool/plugins/org.eclim_2.6.0/bin/eclim")
  (setq eclimd-executable "/Users/samacs/.p2/pool/plugins/org.eclim_2.6.0/bin/eclimd"
        eclimd-default-workspace "/Users/samacs/eclipse/workspace"
        eclimd-wait-for-process nil)

  ;; unset a bunch of keys
  (global-unset-key (kbd "C-x C-c"))
  (global-unset-key (kbd "C-x 1"))
  (global-unset-key (kbd "C-x 2"))
  (global-unset-key (kbd "C-x 3"))
  (global-unset-key (kbd "C-x 0"))
  (global-unset-key (kbd "C-x o"))
  (global-unset-key (kbd "C-x o"))
  (global-unset-key (kbd "C-x k"))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; (setq browse-url-browser-function 'browse-url-chrome)

  ;; (spacemacs/enable-smooth-scrolling t)

  ;;; Scroll one line at a time (less "jumpy" than defualts)
  ;; (setq mouse-wheel-scroll-amount '( ((shift) . 1))) ;; Two lines at a time
  ;; (setq mouse-wheel-progressive-speed nil) ;; Don't accelerate scrolling
  ;; (setq mouse-wheel-follow-mouse 't) ;; Scroll window under mouse

  ;; Configure autopair
  ;; (autopair-global-mode)

  ;; (load-file "~/.slack.el")

  ;; Configure multi-term
  (setq multi-term-program "/bin/zsh")
  (add-hook 'term-mode-hook
            (lambda ()
              (setq term-buffer-maximum-size 10000)))
  (add-hook 'term-mode-hook
            (lambda ()
              (setq show-trailing-whitespace nil)
              (autopair-mode -1)))
  (add-hook 'term-mode-hook
            (lambda ()
              (define-key term-raw-map (kbd "C-y") 'term-paste)))
  (defcustom term-unbind-key-list
    '("C-z" "C-x" "C-c" "C-h" "C-y" "<ESC>")
    "The key list that will need to be unbind."
    :type 'list
    :group 'multi-term)

  (defcustom term-bind-key-alist
    '(
      ("C-c C-c" . term-interrupt-subjob)
      ("C-p" . previous-line)
      ("C-h" . next-line)
      ("C-s" . isearch-forward)
      ("C-r" . isearch-backward)
      ("C-m" . term-send-raw)
      ("M-f" . term-send-forward-word)
      ("M-b" . term-send-backward-word)
      ("M-o" . term-send-backspace)
      ("M-p" . term-send-up)
      ("M-n" . term-send-down)
      ("M-M" . term-send-forward-kill-word)
      ("M-N" . term-send-backward-kill-word)
      ("M-r" . term-send-reverse-search-history)
      ("M-," . term-send-input)
      ("M-." . comint-dynamic-complete))
    "The key alist that will need to be bind.
If you don't like default setup, modify it, with (KEY . COMMAND) format."
    :type 'alist
    :group 'multi-term)

  (add-hook 'term-mode-hook
            (lambda ()
              (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
              (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))))

  (require 'magit-gitflow)
  (add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
  (add-hook 'ruby-mode-hook '(rvm-activate-corresponding-ruby company-robe))

  ;; (add-hook 'ruby-mode-hook '())
  ;; (add-hook 'robe-mode-hook 'ac-robe-setup robe-mode)
  (eval-after-load 'company
    '(push 'company-robe company-backends))
  (eval-after-load 'ruby-mode-hook
    '(robe-start rvm-activate-corresponding-ruby))

  (defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
    (rvm-activate-corresponding-ruby))

  (eval-after-load 'origami
    '(progn
       (defun rb-show-only (buffer point)
         (interactive (list (current-buffer) (point)))
         (progn (origami-show-only-node buffer point)
                (minimap-new-minimap)))
       (defun rb-toggle-rec (buffer point)
         (interactive (list (current-buffer) (point)))
         (progn (origami-recursively-toggle-node buffer point)
                (minimap-new-minimap)))

       (define-key evil-normal-state-map "æ" 'rb-show-only)
       (define-key evil-normal-state-map "Z" 'origami-toggle-node)
       (define-key evil-visual-state-map "Z" 'origami-toggle-node)
       (define-key evil-insert-state-map "C-Z" 'origami-toggle-node)
       (define-key evil-normal-state-map "z" 'rb-toggle-rec)
       (define-key evil-visual-state-map "z" 'rb-toggle-rec)
       (define-key evil-insert-state-map "C-z" 'rb-toggle-rec)
       ))

  (setq minimap-window-location 'right)

  ;; YATemplate setup
  (setq yatemplate-dir "~/.emacs.d/templates/")
  (yatemplate-fill-alist)
  (setq define-auto-insert t)

  (autoload 'apache-mode "apache-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.htaccess\\'"   . apache-mode))
  (add-to-list 'auto-mode-alist '("httpd\\.conf\\'"  . apache-mode))
  (add-to-list 'auto-mode-alist '("srm\\.conf\\'"    . apache-mode))
  (add-to-list 'auto-mode-alist '("access\\.conf\\'" . apache-mode))
  (add-to-list 'auto-mode-alist '("sites-\\(available\\|enabled\\)/" . apache-mode))

  (setq web-mode-engines-alist '(("php" . "\\.phtml\\'")))

  (add-hook 'python-mode-hook 'anaconda-eldoc-mode)

  (setq tide-format-options '(:indentSize 2 :tabSize 2))

  (when (eq system-type 'darwin) ;; Mac specific settings
    (setq mac-option-modifier 'meta)
    (setq mac-command-modifier 'meta)
    (global-set-key [kp-delete] 'delete-char)) ;; Sets fn-delete to be right-delete

  ;; Answering y/n is faster than yes/no.
  (fset 'yes-or-no-p 'y-or-n-p)

  ;; Ask before exiting
  (defun confirm-exit-emacs ()
    "Ask for confirmation before exiting Emacs."
    (interactive)
    (if (y-or-n-p "Are you sure you want to exit? ")
        (save-buffers-kill-emacs)))

  ;; Do not ask about running processes when exiting.
  (defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
    "Prevent annoying \"Active processes exist\" query when you quit Emacs."
    (flet ((process-list ())) ad-do-it))

  (defvar my-bindings-map
    (let ((map (make-sparse-keymap)))
      (define-key map (kbd "C-x C-c") 'confirm-exit-emacs)
      (define-key map (kbd "<f1>") 'shell-pop)
      (define-key map (kbd "M-1") 'delete-other-windows)
      (define-key map (kbd "M-2") 'split-window-vertically)
      (define-key map (kbd "M-3") 'split-window-horizontally)
      (define-key map (kbd "M-0") 'delete-window)
      (define-key map (kbd "M-o") 'ace-window)
      (define-key map (kbd "M-k") 'kill-this-buffer)
      (define-key map (kbd "C-x C-m") 'smex)
      (define-key map (kbd "M-x") 'smex-major-mode-commands)
      map))

  (define-minor-mode my-key-bindings-minor-mode
    "A minor mode that sets my own key bindings globally." t " My" my-bindings-map)

  (my-key-bindings-minor-mode +1)

  (defun turn-off-bindings-setup-hook ()
    "Turn the my-keys mode off."
    (my-key-bindings-minor-mode 0))

  (add-hook 'minibuffer-setup-hook 'turn-off-bindings-setup-hook)

  (defadvice load (after give-my-keybindings-priority)
    "Try to ensure that my keybindings always have priority."
    (if (not (eq (car (car minor-mode-map-alist)) 'my-key-bindings-minor-mode))
        (let ((mykeys (assq 'my-key-bindings-minor-mode minor-mode-map-alist)))
          (assq-delete-all 'my-key-bindings-minor-mode minor-mode-map-alist)
          (push mykeys minor-mode-map-alist))))

  (ad-activate 'load)

  ;; Scale fonts
  (global-set-key (kbd "C-+") 'text-scale-increase)
  (global-set-key (kbd "C--") 'text-scale-decrease)

  (global-set-key [S-left] 'windmove-left)
  (global-set-key [S-right] 'windmove-right)
  (global-set-key [S-up] 'windmove-up)
  (global-set-key [S-down] 'windmove-down)

  (global-set-key (kbd "M-]") 'next-multiframe-window)
  (global-set-key (kbd "M-[") 'previous-multiframe-window)

  (setq-default js2-basic-offset 2
                js-indent-level 2)
  (defun my-web-mode-hook ()
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-indent-style 2))
  (add-hook 'web-mode-hook 'my-web-mode-hook)

  (add-hook 'js-mode-hook (lambda () (tern-mode t)))

  (push '("\\.js\\'" . react-mode) auto-mode-alist)

  ;; (dotspacemacs-default-theme 'spacemacs-dark)
  ;; (dotspacemacs-default-theme 'dracula-theme)
  (add-hook 'js-mode-hook (lambda () (tern-mode t)))

  (add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" "f04122bbc305a202967fa1838e20ff741455307c2ae80a26035fbf5d637e325f" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (insert-shebang fish-mode company-shell slack emojify circe oauth2 websocket ht shut-up f s autopair winum unfill solarized-theme restclient-helm ob-restclient madhat2r-theme fuzzy flymd flycheck-credo company-restclient know-your-http-well company-ansible gmail-message-mode ham-mode html-to-markdown edit-server yatemplate ruby-refactor pig-mode key-chord minimap apache-mode dockerfile-mode docker tablist docker-tramp async company-emacs-eclim eclim company-inf-ruby tern-auto-complete phpunit phpcbf php-extras php-auto-yasnippets drupal-mode php-mode bind-key packed avy iedit smartparens bind-map highlight evil helm helm-core projectile hydra dash helm-dash dash-at-point reveal-in-osx-finder rainbow-mode rainbow-identifiers pbcopy osx-trash osx-dictionary launchctl flycheck-pos-tip color-identifiers-mode erlang synonymous x86-lookup nasm-mode list-themes-here-theme vmd-mode zonokai-theme zenburn-theme zen-and-art-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pastels-on-dark-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme firebelly-theme farmhouse-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-quickhelp pos-tip color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme smex yapfify yaml-mode xterm-color web-mode web-beautify vagrant-tramp vagrant tide typescript-mode tagedit swift-mode sql-indent spotify smeargle slime-company slime slim-mode shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe restclient rbenv pyvenv pytest pyenv-mode py-isort pug-mode projectile-rails rake inflections pip-requirements orgit org-projectile org-present org-pomodoro alert log4e gntp org-download omnisharp ob-http ob-elixir org nginx-mode mwim multi-term mmm-mode minitest markdown-toc markdown-mode magit-gitflow livid-mode skewer-mode simple-httpd live-py-mode less-css-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc jinja2-mode hy-mode htmlize helm-spotify multi helm-pydoc helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode go-guru go-eldoc gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md flycheck-mix flycheck feature-mode evil-magit magit magit-popup git-commit with-editor eshell-z eshell-prompt-extras esh-help engine-mode emmet-mode disaster cython-mode csv-mode csharp-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-go go-mode company-c-headers company-anaconda common-lisp-snippets coffee-mode cmake-mode clang-format chruby bundler inf-ruby auto-yasnippet yasnippet ansible-doc ansible anaconda-mode pythonic alchemist company elixir-mode ac-ispell auto-complete ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spacemacs-theme spaceline restart-emacs request rainbow-delimiters quelpa popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide ido-vertical-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
