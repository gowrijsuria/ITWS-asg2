cat to_replace.txt | xargs -n1 | xargs -I {} mv ./replace/{}.txt ./replace/{}{}.txt

