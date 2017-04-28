#!/bin/bash

#   This is a script to rename files using lists.

set -o pipefail
set -e

OLD=${HOME}/renaming/NAM_parents_oldnames.txt
NEW=${HOME}/renaming/NAM_parents_newnames.txt

paste ${OLD} ${NEW} | while read OLDNAME NEWNAME;
do mv ${OLDNAME} ${NEWNAME};
done
