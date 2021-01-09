# warnings or errors occured during tasks

## : not a valid identifierame

The text file that constitutes the shell script was written in a editor,
which saves files as DOS text files by default. 
Which, from the __Unix point of view__, has a superfluous carriage return `(\r)` at the end of each line. 
This confuses `sh`.

To remove the `\r` use :
```bash
$ tr -d '\r' <q.sh >q-new.sh
$ mv q-new.sh q.sh
```
