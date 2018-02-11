#!/usr/bin/env bash
clear
rm -rf Repo
mkdir Repo
cd Repo
echo "$(tput sgr0)"
echo "$(tput setaf 2)========> Welcome to the Repo-Creator ! \n"			
echo "$(Tput setaf 0)This tool is the Only tool outside for easily creating Cydia Repos ! \n\n $(tput setaf 1)This Tool is just for creating the normal Repo ! Not for adding files to a existing repo ! use iRepoAutomator by iSn0w for that ! \n $(tput setaf 0)"
	sleep 1
echo "Made by :$(tput setaf 6) iSn0w$(tput setaf 0)"
	sleep 1
echo "Version : 1.1.0-Release 2"
	sleep 1
echo "ok, we gonna create a cydia repo now, but before we start the coding part i need some information about the Repo !"
read -p "What should be the name of the repo ? ==> $(tput bold)" reponame
echo "Origin: $reponame" >> Release
echo "Label: $reponame" >> Release
echo "\n$(tput sgr0)$(tput setaf 2) ok, the repo name is $reponame ! $(tput setaf 0)\n"
echo "Codename: ios" >> Release
echo "gonna mark this repo as $(tput bold) stable $(tput sgr0) and $(tput bold) Release $(tput sgr0) version ! "
echo "Suite: stable" >> Release
echo "So we gonna select $(tput bold)1.0$(tput sgr0) for the Version"
echo "Version: 1.0" >> Release
echo "So Cydia is based for iOS system. We gonna select iPhoneos-arm as the Architecture...."
echo "Architecture: iphoneos-arm" >> Release
echo "Components: main" >> Release
read -p "What should be the description for the repo ? ==> $(tput bold)" descriptionrepo
echo "$(tput sgr0) Description: $descriptionrepo" >> Release
echo "\n \n The first Part of our repo is now done ! \n \n"
echo "$(tput sgr0)now im generating the XML and HTML Files..."
sleep 1
echo "<repo>" >> repo.xml
echo "	<footerlinks>" >> repo.xml
echo "		<link>"	>> repo.xml
echo "			<name>iSn0w</name>" >> repo.xml	
echo "			<url>https://twitter.com/iSn0we</url>" >> repo.xml
echo "			<iconclass>fa fa-twitter</iconclass>" >> repo.xml
echo "		</link>" >> repo.xml
echo "		<link>" >> repo.xml
echo "			<name>Edit this text too!</name>" >> repo.xml
echo " 			<url>paste a URL here</url>" >> repo.xml
echo "			<iconclass>fa fa-thumbs-up</iconclass>" >> repo.xml
echo "		</link>" >> repo.xml
echo "	</footerlinks>" >> repo.xml
echo "</repo>" >> repo.xml
echo "The repo.xml file is done ! now i will generate a index.html ! ( Please keep the script running !)"
echo " now we will add some default packages made by isn0w to the repository !"
mkdir debs
cd debs
wget https://github.com/LilWebDev/Website2/blob/master/publicrepo/debs/com.supermamon.newpackage_2.0.0-1_iphoneos-arm.deb
wget https://github.com/LilWebDev/Website2/blob/master/publicrepo/debs/com.supermamon.oldpackage_1.0.0-1_iphoneos-arm.deb
cd ..
echo "adding essential but important stuff now...."
wget https://github.com/LilWebDev/Website2/tree/master/publicrepo/depictions
wget https://github.com/LilWebDev/Website2/blob/master/publicrepo/CydiaIcon.png
wget https://github.com/LilWebDev/Website2/blob/master/publicrepo/CydiaIcon.xcf
echo "getting a default packages.bz2 file ..."
wget https://github.com/LilWebDev/Website2/blob/master/publicrepo/Packages.bz2
echo "got the file...."
clear
echo "$(tput setaf 2)========> Repo Creator Part 3 ( MAIN ) ! \n"
echo "now we will just tell you how you can go on with this reposotory! so we generated bunch of files in the folder Repo/ ! you can see Packages.bz2 for example ! in this file the debian archives (.deb folders in the /deb folder) listed !\n Those are the tweaks which are listed Inside the cydia Reposotory !"
read -p "press any button to procceed !"
clear 
echo "$(tput setaf 2)========> Repo Creator Part 3 ( Packages.bz2 )! \n"
echo "A normal paragraph in the extracted Packages.bz2 file looks like this: \n"

echo "Package: RealSubstrate"
echo "Version: 0.0.1-20+debug"
echo "Architecture: iphoneos-arm"
echo "Maintainer: iSn0w"
echo "Installed-Size: 120"
echo "Depends: mobilesubstrate"
echo "Filename: /Users/lucapasc/Desktop/iOS/Tweaks/tw/rt/packages/rt_0.0.1-19+debug_iphoneos-arm.deb"
echo "Size: 5770"
echo "MD5sum: 948f5c72c39ff810727340c668e7cdda"
echo "SHA1: 125c2838e9fa72bd9c3b49fec4aa62da449a1521"
echo "SHA256: d166fc275f27ca910a1309480d07609e46eaf4a078bbffdd7717db83c6db53b0"
echo "Section: Tweaks"
echo "Description: An awesome MobileSubstrate tweak!"
echo "Author: iSN0w"

echo "\n \n"
read -p " $(tput sgr0) this would be shown as RealSubstrate inside Cydia ! you can get those informations rather by using my tool ( Aviable on Github ) or just typing in dpkg-scanpackages <.deb name>"
echo "\n \n"
read -p "now well, to add a tweak or application debian archive you will have to add the dpkg-scanpackages <App/Tweak> inside the terminal and add the result to the extracted part of Packages.bz2 "
echo "\n \n"
read -p "when the bz2 archive is decompressed once, and you will compress it again type in, 'bzip2 -k -v Packages' into terminal. voila, the Packages.bz2 will be created and the decompressed will stay ! ( the -k (keep) function )"
echo "\n \n"
read -p "so well how you can see to create a cydia Repository isnt that hard ! we already made the biggest part, and its your turn to modify files like repo.xml now !"
echo " \n \n \n"
read -p " Ok some extra stuff for you : \n the file repo.xml will be shown at the bottom of each debian archive inside Cydia. the depencies which we have also setten up, are the description for every package, the changelog and could also be many other things ! if you have any problems or issues just contact me on reddit ! @LucaTheDev"
echo "\n \n Tip: Learning iOS Objective C Development is the fundamental of iOS TweakDeveloping!"
clear 
echo "$(tput setaf 2)========> Repo Creator Part 3 ( Packages.bz2 )! \n"
echo "$(tput sgr0) So Now lets take a look at the Repo.xml file which is shown in every repo at the very bottom !"
read -p "$(tput bold) editxml
if [[ $editxml == "yes" || $editxml == "Yes" ]]; then
	echo "========> Repo Creator Part 3 , edit the repo.xml! \n"
	rm -f repo.xml
	echo "$(tput sgr0)ok now we gonna edit the repo.xml file !\n"
	echo "ok a normal repo.xml file looks like this : \n"
	echo "<repo>" 
	echo "	<footerlinks>"
	echo "		<link>"	
	echo "			<name>iSn0w</name>" 
	echo "			<url>https://twitter.com/iSn0we</url>" 
	echo "			<iconclass>fa fa-twitter</iconclass>"
	echo "		</link>" 
	echo "		<link>" 
	echo "			<name>Edit this text too!</name>" 
	echo " 			<url>paste a URL here</url>" 
	echo "			<iconclass>fa fa-thumbs-up</iconclass>"
	echo "		</link>" 
	echo "	</footerlinks>" 
	echo "</repo>" 
	sleep 1
	echo "ok, now i gonna teach you the structure, which is pretty easy !"
    clear
    echo "So the <link> tag just defines a column at the bottom of each tweak"
    wait 1
    echo "inside the <link> tag is a <name>XXX</name> tag ! this is the text which is shown at the bottom of the tweak !"
    echo "the <url>example.com</url> tag just defines a link which opens when the user taps onto the column !"
    echo "<iconclass>fa fa-XX</iconclass> defines a Font-Awesome icon which is shown next to the name inside the Tweakview in Cydia. this could be the name of any icon from fontawesome.com"
    sleep 1
    echo "So lets just create a one column view !"
    echo "What should be the name for the column ?"
    read columnview
    echo "adding..."
    echo "ok !"
    echo "<repo>" >> repo.xml
    echo "    <footerlinks>" >> repo.xml
    echo "        <link>" >> repo.xml
    echo "             <name>$columnview</name>" >> repo.xml
    echo "added !"
    echo "now we need a URL for the column !"
    read columnurl
    echo "ok thats good...."
    echo "              <URL>$columnurl</URL>" >> repo.xml
    echo "added the url ! "
    echo "now we will just add a fa fa- icon !"
    read -p "Just type in 'fa fa-twitter' for example" faicon
    echo "adding the fa icon"
    echo "              <iconclass>$faicon</iconclass>" >> repo.xml
    echo "ok the column view is done ! closing the remaining tags..."
    echo "          </link>" >> repo.xml
    echo "  </footerlinks" >> repo.xml
    echo "</repo>" >> repo.xml
    echo "ok this is done now !"
fi
echo "$(tput sgr0)"
