# TASK 2

## LINUX TERMINAL AND COMMANDS 

### LEVEL 0

##### The goal of this level is for you to log into the game using SSH. The host to which you need to connect is bandit.labs.overthewire.org, on port 2220. The username is bandit0 and the password is bandit0. Once logged in, go to the Level 1 page to find out how to beat Level 1.


 


$ ssh bandit0@bandit.labs.overthewire.org -p 2220  

$ssh #Secure shell,protokol koji koristimo za povezivanje na odre�eni server
bandit0 - #ime korisnika 
@bandit.labs.overthewire.org - #adresa,tj veza servera kojem �elimo pristupiti
-p 2220 - #port na kojem pristupamo serveru,u ovom slu�aju to je 2220


### LEVEL 0-1
##### The password for the next level is stored in a file called readme located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.
 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadr�aj direktorija

$ cat readme - #komanda koja nam is�itava sadr�aj iz fajla readme

### LEVEL 1-2
##### The password for the next level is stored in a file called - located in the home directory


 

$ cat < -  #komanda koja nam izlistava sadr�aj filea "-" koji se nalazi u home direktoriju


### LEVEL 2-3
##### The password for the next level is stored in a file called spaces in this filename located in the home directory

 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadr�aj direktorija

$ cat "spaces in this filename" - #komanda koja nam is�itava sadr�aj iz fajla spaces in this filename,u ovom slu�aju koristimo znakove navoda jer bez njih se ime fajla �ita kao odvojen argument,a s navodnicima kao jedan argument


### LEVEL 3-4
##### The password for the next level is stored in a hidden file in the inhere directory.

 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadr�aj direktorija

$ cd inhere - #komanda kojom se prebacujemo u inhere direktorij

$ find - #komanda kojom pronalazimo sve fajlove i direktorije u inhere direktoriju

$ cat .hidden - #komanda koja ispisuje sadr�aj iz fajla hidden

### LEVEL 4-5
##### The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the �reset� command.

 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadr�aj direktorija

$ cd inhere - #komanda kojom se prebacujemo u inhere direktorij

$ file ./*  - #komanda kojom koristimo * kao wildcard za pretra�ivanje svih fajlova koji po�inju sa -file

$ cat ./-file07 - #komanda kojom prikazujemo sadr�aj fajla    -file07


### LEVEL 5-6
##### The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:

human-readable
1033 bytes in size
not executable

 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadr�aj direktorija

$ cd inhere - #komanda kojom se prebacujemo u inhere direktorij

$ find -size 1033c - #komanda kojom pretra�ujemo fajl veli�ine 1033 bajta

$ cat .file2 - # komanda kojom prikazujemo sadr�aj fajla      -file2


### LEVEL 6-7
##### The password for the next level is stored somewhere on the server and has all of the following properties:

owned by user bandit7
owned by group bandit6
33 bytes in size


 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls -la  - #komanda koja izlistava pro�ireni sadr�aj direktorija

$ find / -size 33c -user bandit7 -group bandit6 -type f 2>/dev/null  - # komanda kojom pretra�ujemo fajl koji je veli�ine 33 bajta,�iji je vlasnik korisnik pod imenom bandit7 i grupa pod imenom bandit6, 2>/dev/null je komanda kojom otpisujemo sve one fajlove kojima nemamo pristup te nam tako ostane jedan fajl koji odgovara kriterijima (ovako sam ja razumio zadnju komandu,slu�io sam se internetom za pomo�)

$ cat /var/lib/dpkg/info/bandit7.password - #komanda kojom ispisujemo fajl bandit7.password, /var/lib/dpkg/info je putanja do fajla


### LEVEL 7-8
##### The password for the next level is stored in the file data.txt next to the word millionth


 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadr�aj direktorija

$ grep "millionth" data.txt  - # komanda kojom pretra�ujemo fajl data.txt i u njoj tra�imo rije� millionth te �e nam prikazati tra�eni password koji se nalazi pored te rije�i


### LEVEL 8-9
##### The password for the next level is stored in the file data.txt and is the only line of text that occurs only once

 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadr�aj direktorija

$ cat data.txt|sort|uniq -u  -  #komanda koja nam ispisuje sadr�aj fajla data.txt, uniq komanda sortira samo unikatne linije tj. one koje se ponavljaju samo jednom


### LEVEL 9-10
##### The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several �=� characters.


 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadr�aj direktorija

$ strings data.txt | grep ==  -  #komanda strings mo�e se upotrebiti za prikazivanje vidljivih karaktera u izvr�noj ili binarnoj datoteci, u ovom slu�aju tra�enim stringovima prethodi "=" znak


### LEVEL 10-11
##### The password for the next level is stored in the file data.txt, which contains base64 encoded data

 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadr�aj direktorija

$ base64 -d data.txt  -  #base64 je enkodiran podatak, -d �e dekodirati podatak iz fajla data.txt




