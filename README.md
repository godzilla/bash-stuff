lines to add to .bashrc

export PS1='`whoami`:$PWD>'
alias la='ls -lFArt --full-time'
alias p='. p'



This is a colection of bash utils I wrote over the years

p - a directory changer util to easily change directories without typing alot

usage:
    p 
        shows p table
    p blah  
        this will add key "blah" and value of current directory to a table
        or 
        go to directory matching "blah key"
    p blah cls
        remove "blah" entry from p table

    must have alias p='. p'  in .bashrc










