# Arch-Linux-BSPWM

## **Desktop screenshots | Скриншоты рабочего стола**


![screen](https://i.imgur.com/P8moDD1.jpg)


![screen1]()


![screen2]()


## **Installing**
Run these commands in the terminal:

   `sudo xbps-install -Sy git`  


   `git clone https://github.com/kkbesp/Arch-Linux-BSPWM`  


   `cd Arch-Linux-BSPWM`   


**Note**
1. Telegram theme installation link - https://t.me/addtheme/kkbesp0
2. After executing the script you should
`sudo reboot`


**Aliases**  
Configuration file - ~/.zshrc


`ys` = `yay -S`   *Installing the package*


`yu` = `yay -Su`   *System update*


`yr` = `yay -R`   *Removing a package*


**Key combinations**


***Run programs***  
Configuration file - ~/.config/sxhkd/sxhkdrc

Open terminal (st)  
`super` + `enter`

Open program launcher manager (rofi)  
`alt` + `d`

Take a screenshot of the entire screen  
`print`

Capture a screenshot of the highlighted area  
`super` + `print`

Take a screenshot after 5 seconds  
`super` + `alt` + `print`


***Management of bspwm***  
The configuration file is ~/.config/sxhkd/sxhkdrc

Hide/show polybar  
`super` + `ctrl` + `p`

Exit bspwm  
`super` + `alt` + `q`

Restart from bspwm  
`super` + `alt` + `r`

Close the window  
`super` + `q`

Change the window `super` + `alt` + `q`  
`super` + `shift` + `h,j,k,l`  
`super` + `shift` + `arrows`

Change the indentation of windows on the current desktop  
`super` + `mouse wheel`

Change window indents globally  
`super` + `alt` + `mouse wheel

Change window modes (pseudo-tiling, floating, tiling, full-screen)  
`super` + `a,s,d,f`

Changing window modes (tiling, floating)  
`alt` + `space`

Change window focus  
`alt` + `shift` + `tab`  
`super` + `h,j,k,l`  
`uper` + `arrows`  

Move the window to another desktop    
`super` + `shift` + `digit`

Change the desktop  
`super` + `digit`

Change window size  
`super` + `right mouse button`  
`super` + `alt` + `h,j,k,l`  

Moving the floating window  
`super` + `left mouse button`  
