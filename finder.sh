#!/bin/bash
home:

clear
echo
echo


echo "                     ~FINDER~ "                    
echo "                   :5GGGGGGGY.    ~777??^ "        
echo "                    JGGGGGGGGG?  ^Y7!~~:?G! "      
echo "                    ~GGGGGGGGP~ ^5^!~.. ^G5 "       
echo "              .^7??7~~?5PPP5?:  Y!:7    JBJ "       
echo "            .75GGGGGG5~ .:.     Y7    :YBY.                    version - 1.0"       
echo "           !PGGGGGPGGGGJ.       :J?!7YP57                Founder - Anindya Ghoshal"        
echo "         .JGGGGGGG7?GGGG5~       ~P7!~^                  (c) Copyright aoneTech."          
echo "        .YGGGGGGGGG?!5GGGG?.  :!JPP7 "              
echo "        YGGGGGGGGGGG5~JGGGG57YPGGGGP: "             
echo "       7GGGGGGGGGGGGGG~~PGGGGGGGPJ!. "              
echo "      :PGGGGGGGGGGGGGG! :YGGG5?~. "                 
echo "      .~~~~~~~~~~~~~~~.   ^~^. "
echo "                             . "   
echo
echo                


select find in "Search File" "Search Directtory" Quit; do

case $find in

"Search File")
clear

echo
echo 
echo "                                             ~finder~  "                        
echo "                                           :7JYJJJYYJ!. "                     
echo "                                         .YP7        JP7 "                   
echo "                                        .PY:          ^GJ  "                  
echo "                                        7#:  ~FILE~    !#:                 FINDER"                 
echo "                                        ~#^            ?B.             Using Find Files."                 
echo "                                         JG~          ?G~  "                  
echo "                                          ~5Y000000000)Y7: "                 
echo "                                            :!7????7~:P##B?: "                
echo "                                                      .7G##BJ. "             
echo "                                                        .7GP7. "            
echo "                                                          .. "
echo

select file in "Find Files" "Find Files Using File Extension" "Find Files With Permissions" "Find Files Without Permissions" "Find Read-Only Files" "Find Executable Files" "Find all Empty Files" "Find all Hidden Files" "Find Single File Based on User" "Find all Files Based on User" "Find Files Using File Extension Based on User" "Find Last __ Days Modified Files" "Find Last __ Days Accessed Files" "Find Modified Files in Last __ Hours" "Find Accessed Files in Last __ Hours" "Find Files Using File Size" "Find Files Using File Size Between __MB - __MB" "Clear" "exit"; do

case $file in 
"Find Files")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
  read -p "Enter Dictory: " d
  find "$d" -iname "$f1"
else
echo
read -p "Enter File Name: " f1
echo
read -p "Search File Current Directory (.) Over The Computer (/) : " f5
find "$f5" -iname "$f1"
read
fi
;;
 
"Find Files Using File Extension")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
  read -p "Enter Dictory: " d
echo
read -p "Enter File extension (txt) :" f4
echo
read -p "Search File Current Directory (.) Over The Computer (/) : " f5
find "$f5" -type f -name "*.$f4"
read
fi
;;

"Find Files With Permissions")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
 echo
  read -p "Enter Dictory: " d
  echo
  read -p "Enter File Permissions (777): " f7
  find "$d" -type f -perm "$f7"
  read
else
read -p "Enter File Permissions (777): " f7
read -p "Search File Current Directory (.) Over The Computer (/) : " f8
find "$f8" -type f -perm "$f7"
read
fi
;;

"Find Files Without Permissions")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
  read -p "Enter Dictory: " d
  echo
  read -p "Enter File Permissions (777): " f0
  find "$d" -type f ! -perm "$f0"
  read
  else
echo
read -p "Enter File Permissions (777): " f9
echo
read -p "Search File Current Directory (.) Over The Computer (/) : " f10
find "$f10" -type f ! -perm "$f9"
read
fi
;;

"Find Read-Only Files")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
  read -p "Enter Dictory: " d
  find "$d" -perm /u=r
 else
echo
read -p "Search File Current Directory (.) Over The Computer (/) : " f11
find "$f11" -perm /u=r
read
fi
;;

"Find Executable Files")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
  read -p "Enter Dictory: " d
  find "$d" -perm /a=x
else
read -p "Search File Current Directory (.) Over The Computer (/) : " f12
find "$f12" -perm /a=x
read
fi
;;

"Find all Empty Files")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
  echo
  read -p "Enter Dictory: " d
  find "$d" -type f -empty
  read
else
echo
read -p "Search File Current Directory (.) Over The Computer (/) : " f13
find "$f13" -type f -empty
read
fi
;; 

"Find all Hidden Files")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
 echo
 read -p "Enter Dictory: " d
 echo ....
 find "$d" -type f -name ".*"
 read
else
echo
read -p "Search File Current Directory (.) Over The Computer (/) : " f14
find "$f14" -type f -name ".*"
read
fi
;;

"Find Single File Based on User")
echo
read -p "Enter User Name: " f15
echo
read -p "Enter File Name: " f16
find / -user "$f15" -iname "$f16"
read 
;;

"Find all Files Based on User")
echo
read -p "Enter User Name: " f17
find /home -user "$f17"
read
;;

"Find Files Using File Extension Based on User")
echo
read -p "Enter User Name: " f18
echo
read -p "Enter File Extension (txt) : " f19
find /home -user "$f18" -iname "*.$f19"
read
;;

"Find Last __ Days Modified Files")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
 read -p "Enter Dictory: " d
echo
read -p "Enter Days (50): " f20
find "$d" -mtime -"$f20"
read
else 
echo
read -p "Enter Days (50): " f21
find / -mtime -"$f21"
echo
fi
;;

"Find Last __ Days Accessed Files")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
read -p "Enter Dictory: " d
echo
read -p "Enter Days (50): " f22
find "$d" -atime -"$f22"
read
else
echo
read -p "Enter Days (50): " f23
find / -atime -"$f23"
read
fi
;;

"Find Modified Files in Last __ Hours")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
read -p "Enter Dictory: " d
echo
read -p "Enter Hours (write hours like minutes 60): " f24
find "$d" -mmin -"$f24"
read
else
echo
read -p "Enter Hours (write hours like minutes 60): " f25
find / -mmin -"$f25"
read
fi
;;

"Find Accessed Files in Last __ Hours")
echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
read -p "Enter Dictory: " d
echo
read -p "Enter Hours (write hours like minutes 60): " f26
find "$d" -amin -"$f26"
read
else
echo
read -p "Enter Hours (write hours like minutes 60): " f27
find / -amin -"$f27"
read
fi
;;
 
 "Find Files Using File Size")
 echo
read -p "What You Want Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
read -p "Enter Dictory: " d
echo
read -p "Enter File Size (10M): " f28
find "$d" -size -"$f28"
read
else
echo
read -p "Enter File Size (10M): " f29
find / -size -"$f29"
read
fi
;;

"Find Files Using File Size Between __MB - __MB")
 echo
read -p "What You Want to Set in the Directory of Your Choice (yes/no) : " s
if [ "$s" == yes ];
then
echo
read -p "Enter Dictory: " d
echo
read -p "Enter File Size (10M): " f29
echo
read -p "File Size (50M): " f30
find "$d" -size +"$f29" -size -"$f30"
read
else
echo
read -p "Enter File Size (10M): " f30
echo 
read -p "File Size (50M): " f29
find / -size +"$f30" -size -"$f30"
read
fi
;;

Clear)
clear
echo -n "ENTER->"
read
;;
exit)
exit
;;

esac
done
;;





"Search Directtory") 
clear

echo
echo 
echo "                                             ~finder~  "                        
echo "                                           :7JYJJJYYJ!. "                     
echo "                                         .YP7        JP7 "                   
echo "                                        .PY:          ^GJ  "                  
echo "                                        7#:   ~DIR~    !#:                 FINDER"                 
echo "                                        ~#^            ?B.             Using DIR Files."                 
echo "                                         JG~          ?G~  "                  
echo "                                          ~5Y000000000)Y7: "                 
echo "                                            :!7????7~:P##B?: "                
echo "                                                      .7G##BJ. "             
echo "                                                        .7GP7. "            
echo "                                                          .. "
echo

select dir in "Find Directories Using Name" "Find Directories With Permissions" "Find Directories Without Permissions" "Find all Empty Directories" "Clear" exit ;do

case $dir in 

"Find Directories Using Name")
echo
read -p "Enter Directories Name: " d1
find / -type d -name "$d1"
read
;;

"Find Directories With Permissions")
echo
read -p "Enter Permissions Number (777): " d2
find / -type d -perm -"$d2"
read
;;

"Find Directories Without Permissions")
echo
read -p "Enter Permissions Number (777): " d3
find / -type d ! -perm -"$d3"
read
;;

"Find all Empty Directories")
find /  -type d -empty
read
;;

"Clear")
clear
echo -n "ENTER->"
read
;;

exit)
exit
;;

esac
done



;;

Quit)
break
;;

esac
done