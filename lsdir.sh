#Write a shell script called lsdirs which lists just the directories in the current directory.												
#!/bin/bash
ls -l | grep "^d"|awk "{print $9}"

