;;; packages.el --- writing layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Anton Linevych <linevich@desktop>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `writing-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `writing/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `writing/pre-init-PACKAGE' and/or
;;   `writing/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst writing-packages
  '(writeroom-mode
    markdown-mode
    )
  "Layer requirements")


;;; Line wrapping
(turn-on-fci-mode)
(setq-default fill-column 100)
(setq-default writeroom-width fill-column)

;;; packages.el ends here
