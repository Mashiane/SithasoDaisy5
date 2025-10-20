start http://127.0.0.1:1001/_/
start http://127.0.0.1:1001/sd5addressbook/index.html
pocketbase serve --dev --http="127.0.0.1:1001" --queryTimeout=120
pause