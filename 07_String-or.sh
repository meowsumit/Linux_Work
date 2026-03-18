#!/bin.bash
myVar="Hey Buddy !, How are You?"
myVarLength=${#myVar}
echo "Length of the String is $myVarLength"
echo "Length of the String direct is ${#myVar}"  

echo "UpperCase is ----- ${myVar^^}"
echo "LowerCase is ----- ${myVar,,}"
 
newVar=${myVar/Buddy/Meow}
echo "$newVar"

#After Slicing
echo "The Slice part is ${myVar:4:5}"

