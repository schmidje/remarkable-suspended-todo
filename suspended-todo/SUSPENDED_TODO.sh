#!/bin/sh

gmc=/opt/bin/gm

todo_img=/home/root/.local/share/remarkable/xochitl/DUID.thumbnails/IUID.jpg
template_suspended_img=/home/root/suspended-todo/suspended_template.png
todo_suspended_img=/home/root/suspended-todo/suspended_todo.png

# area filled by the TODO list
# widthxheight+tlx+tly
geometry_opt=720x960+341+809

if test -f "$todo_img"
then
    $gmc composite -geometry $geometry_opt $todo_img $template_suspended_img  $todo_suspended_img
    
    cp -f $todo_suspended_img /usr/share/remarkable/suspended.png    
fi



 
 