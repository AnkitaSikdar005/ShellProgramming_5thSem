echo "Enter 1  for showing the content of the current folder"
echo "Enter 2  for showing the present working directory"
echo "Enter 3  for showing the calender of the current month"
echo "Enter 4  for exit"

while [ 1 ]
do
echo "Enter the choice"	
read choice
case $choice in 
1)
echo " Contents of the current folder"
ls
;;
2)
echo  "Presnt working directory:"
pwd
;;
3)      
echo "calender of the current month:"
date
;;
4)     
echo "Existing...."
exit
;;
*)      
echo "invalid $choice"
;;
esac
done
  
