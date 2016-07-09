# dict-replace
Translation and word replacement auxiliary tool for Emacs.

You can use it by downloading `dict-replace.el` into `~/.emacs.d` or a similar folder and adding a key binding to the `dict-translate` command.

For example, you can add the following lines into your `.emacs` file to get the command bound to `<f5>`:
```
(load-file "./.emacs.d/dict-replace.el")
(global-set-key (kbd "<f5>") 'dict-translate)
```
