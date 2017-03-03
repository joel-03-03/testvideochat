:: Why? because windows can't do an OR within the conditional
IF NOT DEFINED API_KEY GOTO defkeysecret
IF NOT DEFINED API_SECRET GOTO defkeysecret
GOTO skipdef

:defkeysecret

SET API_KEY=45785862
SET API_SECRET=39f2736f837834a4ff1e33a3f1d90cd94670d610

:skipdef

RD /q /s storage

php.exe -S localhost:8080 -t web web/index.php
