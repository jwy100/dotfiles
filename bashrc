function color(){
        echo "\e[$2m$1\e[0m"
}

function block(){
        echo "$(color "[" 90)$1$(color "]" 90)"
}

echo -ne '\e]11;#19202b\e\\'

who=$(block $(color "\u@\H" 32))

where=$(block $(color "\w" 36))
git=$(color "\$(__git_ps1)" 95)
export PS1="$who$where$git\n\$ "
