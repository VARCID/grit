# written by Verena Berg on 2015-06-25
# changed by Verena Berg on 2015-06-29

# This is an installation script for GRIT.
# This script uses sudo and apt-get.
# If you want to do the installation via this script, please make sure sudo and apt-get is enabled.
# This is a direkt installation. That means you'll don't need vagrant.

#!/bin/bash

#install required software first

#update your packages

sudo apt-get update

#In the folloing the -y option is used that you do not have to say 'yes' when the installations ask you if they should continue.

#install OpenJDK

sudo apt-get -y install openjdk-8-jre

#You will need the javac Compiler. The javac Compiler comes with the openjdk-8-jdk package

sudo apt-get -y install openjdk-8-jdk

#install Texlive

sudo apt-get -y install texlive-full

#install the Gnu-C-Compiler

sudo apt-get -y install gcc

#install Glasgow-Haskell-Compiler

sudo apt-get -y install ghc

#install Subversion

sudo apt-get -y install subversion libapache2-svn

#install Secure Copy

sudo apt-get -y install openssh-server openssh-client

#install the G++ Compiler

sudo apt-get -y install g++

#install Virtualbox. You will need this for ILIAS

sudo apt-get -y install virtualbox

#install Git. You will need git to get GRIT.

sudo apt-get -y install git

#install Gradle. You will need it for the installation of GRIT

sudo apt-get -y install gradle

#If you've read the guide for the manual installation you'll maybe miss the installation of vagrant.
#This is no neglegt. We do not need to install vagrant here, because this script installs GRIT directly on your computer.
#You do not have to use vagrant later on.

#Clone our Repository for getting GRIT. Only the master branch will be checked out automatically.
#But we made our changes to the development branch. So we clone the development branch instead.

#git clone https://github.com/VARCID/grit.git

git clone https://github.com/VARCID/grit.git --branch development 

#now there should be a directory called grit. Move there to install GRIT.

cd grit

#use gradlew to install GRIT on your computer.

./gradlew
./gradlew install
