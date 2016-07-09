# dict-replace
Translation and word replacement auxiliary tool for Emacs.

![output](https://cloud.githubusercontent.com/assets/5337877/16708704/c135c06e-45fc-11e6-9f96-9b60e3d938c7.gif)

You can use it by downloading `dict-replace.el` into `~/.emacs.d` or a similar folder and adding a key binding to the `dict-translate` command.

For example, you can add the following lines into your `.emacs` file to get the command bound to `<f5>`:
```
(load-file "./.emacs.d/dict-replace.el")
(global-set-key (kbd "<f5>") 'dict-translate)
```
