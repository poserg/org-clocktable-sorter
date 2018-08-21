#+BEGIN_SRC emacs-lisp :results silent
(defun my-org-clocktable-sorter (ipos tables params)
  (setq tables (cl-sort tables (lambda (table1 table2) (> (nth 1 table1) (nth 1 table2)))))
  (funcall (or org-clock-clocktable-formatter 'org-clocktable-write-default) ipos tables params))
#+END_SRC
