# git-scripts

## What?
This repo contains a few small scripts for easily managing student forks of a main classroom repo.
There are two folders in this project, a folder for Windows and one for Unix (Linux or Mac). The Windows scripts are written in bash and Unix scripts in bash.

## How?
1. Create a folder on your hard drive where you will clone all of the repos.
2. Download the three files (2 scripts and 1 text file) into that folder. ([Windows](/windows) or [Unix](/unix))
3. Modify the `class_info.txt` file with the class and student data (see below).
4. Run the `clone_git_repos` script. You should ideally only ever have to run this script once but it is safe to run multiple times (say if a new student is added to the class).
5. To update the student repos, run the `git_pull` script. WARNING: This will discard any modifications made to any git-tracked files in the repository!

## class_info.txt
This file must be in a specific format for the scripts to be able to parse it. Luckily, it's not complicated! The first line of the file must be the name of repo that the students have forked. (NOTE: if the student changed the name of the repo when they forked it this script will not pick it up - but the student probably shouldn't have done that :)). The rest of the file should be pairs of values representing the students. The first value is the name of the folder where the repo will be cloned  and the second value is the student's github username. Put each pair of items on a new line. 

### example
Let's pretend we have a class repo called `Demogorgon-Defense` and we have 5 students in the class: Will, Mike, Lucas, Dustin, and Jane. Here's what the class_info.txt file would look like. Again, the part before the comma can be whatever you want but the students' names are probably simplest. I would not recommend having folder names with spaces.
```
Demogorgon-Defense
will,wByers
mike,mikeWheel
lucas,lSinclair
dustin,dustinH
jane,eleven
```

IMPORTANT NOTE: If you are running the bash script (Linux or Mac) the `class_info.txt` file MUST end with either a blank line or something else or the last line of the file will not be read. For that reason, I recommend putting a `$$` as the last line of the file. You'll notice that I did that for the example file in the /unix folder.
