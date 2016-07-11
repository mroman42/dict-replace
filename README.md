# dict-replace
Translation and word replacement auxiliary tool for Emacs. It was designed to ease the task of translating between languages with a similar grammar, where almost every word can be replaced with its literal translation. Examples of these similar grammar languages would be Spanish-Italian or English-Swedish (I guess (?)).

![output](https://cloud.githubusercontent.com/assets/5337877/16708704/c135c06e-45fc-11e6-9f96-9b60e3d938c7.gif)
*Translation example between Catalan and Spanish, almost every word can be translated in-place* 

## Installation

You can use it by downloading `dict-replace.el` into `~/.emacs.d` or a similar folder and adding a key binding to the `dict-translate` command.

For example, you can add the following lines into your `.emacs` file to get the command bound to `<f5>`:
```
(load-file "./.emacs.d/dict-replace.el")
(global-set-key (kbd "<f5>") 'dict-translate)
```

## Usage

There are two interactive commands in `dict-replace.el`:

 * `dict-translate`: translates the word under the cursor using the dictionary.
 * `dict-load`: loads a file into the `*dict*` buffer
