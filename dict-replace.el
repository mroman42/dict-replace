(defun dict-translate ()
  (interactive)
  (let ((oword (downcase (thing-at-point 'word)))
	(tword (downcase (dict-lookup (thing-at-point 'word)))))
    (other-window 1)
    (left-word)
    (search-forward oword)
    (replace-match tword)
    )
  )


(defun dict-lookup (word)
  (switch-to-buffer-other-window "*dict*")
  (goto-char (point-min))

  (if (search-forward-regexp (format "^%s -> " word) nil t)
       (thing-at-point 'word)
       
    (let ((trans-word (read-from-minibuffer (format "Enter translation for %s: " word))))
	  (goto-char (point-max))
	  (insert (format "\n%s -> %s" word trans-word))
	  (symbol-value 'trans-word)
	  )
    ) 
  )


(defun dict-load ()
  (interactive)
  (switch-to-buffer-other-window "*dict*")
  (insert-file-contents (read-file-name "Enter dictionary filename: "))
  (other-window 1)
  )
