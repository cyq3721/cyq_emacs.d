;;; image+-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "image+" "image+.el" (0 0 0 0))
;;; Generated autoloads from image+.el

(autoload 'imagex-sticky-mode "image+" "\
To manipulate Image at point.

This is a minor mode.  If called interactively, toggle the
`Imagex-Sticky mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `imagex-sticky-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(put 'imagex-global-sticky-mode 'globalized-minor-mode t)

(defvar imagex-global-sticky-mode nil "\
Non-nil if Imagex-Global-Sticky mode is enabled.
See the `imagex-global-sticky-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `imagex-global-sticky-mode'.")

(custom-autoload 'imagex-global-sticky-mode "image+" nil)

(autoload 'imagex-global-sticky-mode "image+" "\
Toggle Imagex-Sticky mode in all buffers.
With prefix ARG, enable Imagex-Global-Sticky mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Imagex-Sticky mode is enabled in all buffers where
`imagex-sticky-mode-maybe' would do it.

See `imagex-sticky-mode' for more information on Imagex-Sticky mode.

\(fn &optional ARG)" t nil)

(defvar imagex-auto-adjust-mode nil "\
Non-nil if Imagex-Auto-Adjust mode is enabled.
See the `imagex-auto-adjust-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `imagex-auto-adjust-mode'.")

(custom-autoload 'imagex-auto-adjust-mode "image+" nil)

(autoload 'imagex-auto-adjust-mode "image+" "\
Adjust image to current frame automatically in `image-mode'.

This is a minor mode.  If called interactively, toggle the
`Imagex-Auto-Adjust mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='imagex-auto-adjust-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

Type \\[imagex-sticky-restore-original] to restore the original image.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "image+" '("imagex-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; image+-autoloads.el ends here
