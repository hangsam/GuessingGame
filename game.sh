#!/bin/bash

#Declaring functions
#This function display the iD,firstname and time by logging User.
User(){ 
	echo "---------"
	echo " Welcome to program "
	echo " Your ID:$1. Usernameis:$2"
	echo "The time you access on :"$(date) #current date and time
	echo ""
}
#Country Team and code
#country function
country(){
	echo "***************************Five best Football team*****************************"
	echo " 1) Brazil(BRZ) "
	echo " 2) Argentina(ARG) "
	echo " 3) Nepal(NEP) "
	echo " 4) China(CHI) "
	echo " 5) England(ENG) "
	echo "*********************************************************************"; echo ""
	Team #calling country team method
}

#Check team
#Football team details and selection of best football team.
Team(){
	echo "Select the best football team."
	code=""
	until [[ $code == ARG ]]
	do
	echo -e "Enter the Country code:\c"
	read code
	case $code in
	ARG) echo "The Argentina team is the best football team as they have won the world cup in 1978 and 1986 AD. In present day, Lionel Messi is captain of Argentina Football team." 
	chooseplayer
;;
	BRZ) echo "Oops! Brazil is not selected as best football team in the program. Please,Try again!!Select best football team"
;;
	NEP) 
	echo "Sorry, This time Nepal is not selected as best football team in the program. PLease,Try again!!Select best football team"
;;
	CHI)
	echo "Extermely sorry! China is not selected as best football team in the program .Please,Try again!!Select best football team"
;;
	ENG)
	echo "Better luck Next time! England is not selected as best football team in the program. Please,Try again!!Select best football team"
;;
	*)
	echo "That's not even an answer option ! Use the right code:- ARG ."
	esac
	done
}

#choosing three best football players
chooseplayer(){
	echo ""
	echo ".....................Five best star Football player......................."
	echo " 1) Kiran Chemjong(KC) "
	echo " 2) Lionel Messi(LM) "
	echo " 3) Neymar Junior(NJ) "
	echo " 4) Zheng Zhi(ZZ) "
	echo " 5) Harry Kane(HK) "
	echo "..........................................................................."; echo ""
	echo "******Among 5,Choose your 3 favourite players******"
	echo -e "Enter players CODE(seperating by spaces):\c"
	read code1 code2 code3
	choose=($code1 $code2 $code3)
	if [[ ${#choose[@]} -eq 3 ]]
	then
	if [ $code1 = $code2 ] || [ $code1 = $code3 ] || [ $code2 = $code3 ]
	then
	echo -e " You have entered the same player code multiple times."
	echo " Try again."
	chooseplayer
else
	for cho in $choose
	do
	if [[ $cho == "LM"  ||  $cho == "NJ"  ||  $cho == "KC"  || $cho == "ZZ"  ||  $cho == "HK" ]]
	then
		continue
	else
	echo " Code needs to be from the five best star football player list. "
	chooseplayer #calls itself,when the wrong input is provided
	fi
	done
fi
	choosen three player
else
	echo " ERROR ! "
	echo " Answer needs to be from the five best star player list. "
	echo " Give 3 answers seperated by space on the same line. "
	echo -e "Enter three code of the player seperated by space again."
	chooseplayer
	fi
}

	choosen(){
	if [ $1 == 3 ]
	then
		echo "Among three player.Select your favourite player?"
		PS3="select the player:"
		select favourite in $code1 $code2 $code3
		do
			case $favourite in
			"LM")
				FileRead LM
				break
;;
			"NJ")
				FileRead NJ
				break
;;
			"KC")
				FileRead KC
				break
;;
			"ZZ")
				echo "****************************************************************"
				echo "Sorry!!!!Player data does not exist."
				echo "****************************************************************"; 
				Team
				break
;;
			"HK")
				echo "****************************************************************"
				echo "Sorry!!!!Player data does not exist."
				echo "****************************************************************"; 
				Team
				break
;;
			*)
				echo "invalid input!choose again Valid code only."
				choosen 3
;;
		esac
done
	ContN #calling continue function for program
else
	echo ""
	echo "ALert!! Enter input are out of range.Please enter three valid code with space."
	chooseplayer 
fi
}
	#checking file of player
	FileRead(){
		if [[ -f $1 ]]
	then
		cat $1
	else
		echo "****************************************************************"
		echo "Sorry!!!!Player data does not exist."
		echo "****************************************************************"; 
		
	echo ""
	contN
fi
}

#asking to continue or not
ContN(){
	echo -e "\nDo you want to continue again? Click yes for continue or no for exit:\c"
	read userinput
	if [ $userinput == yes ]
	then
		country #country function for re-starting program
	else
		echo "Thanks for using program"
		echo "Have a great day"		
		exit
	fi
}
	if [ $# == 2 ]
	then
	while [[ $input -lt 5 ]]
	do
	echo -e "What is the secret key:\c"
	read secretkey
	if [[ $secretkey == 1234 ]]
	then
		User $1 $2
		country
		break
	else
		echo "Secret key is wrong ! Try again. "
		let input++
	fi
	done
else
	echo "Please enter two arguments which are username and id"
fi 
