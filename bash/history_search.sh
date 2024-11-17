# Bind the terminal up / down arrows to search history based on entered text.
if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi
