# Shell-scripting-mini-project.
This project demonstrates how to create and execute shell scripts for performing repetitative tasks.

# Shell Scripting

### Shell scripting is like writing a recipe for your computer to follow - it's a way to automate tasks by putting commands in a file that your operating system can execute. 

## Basic Components of a Shell Script

* The Shebang (#!). This tells the system which interpreter to use, like specifying which chef will follow your recipe.

```bash
#!/bin/bash
```

* Commands. These are the actual instructions, like steps in your recipe.

* Variables. Containers to store information that might change.
```
COFFEE_TYPE ="Expresso"
PRICE=3.59
```

## Daily Backup Script
### At the end of each day, you want to :
* Backup log data
* Move to safe location
* Clean uo temporary files

### Create a file backup.sh and add the content below

[](./backup.sh)

![](./img/ls-script.png)


### Modify script file to permission to be able to execute the script. The script will create a folder named with today's date. Check if the folder has been created, then copy log from mysql and mongodb files into the folder.

* Run `chmod 700 backup.sh`

![](./img/chmod.png)

* List the directory to very files nad folder before executing the script.

![](./img/ls-dir.png)

