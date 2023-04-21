# Write a shell script to illustrate switch case.
echo -n "Enter the name of you favourite game: ";
read game
case "$game" in
    cricket|Cricket)
        echo "your favourite game is cricket"
        ;;
    volleyball|Volleyball)
        echo "You favourite game is volleyball"
        ;;
    *)
        echo "You favourite game is not my favourite game 😶"
esac