:: Why? because windows can't do an OR within the conditional
IF NOT DEFINED API_KEY GOTO defkeysecret
IF NOT DEFINED API_SECRET GOTO defkeysecret
GOTO skipdef

:defkeysecret

SET API_KEY=45867622
SET API_SECRET=f2a6b3f0627d0b1c7603194781765623754431e3

:skipdef

RD /q /s storage

php.exe -S https://first-proj-1.herokuapp.com/ -t web web/index.php
