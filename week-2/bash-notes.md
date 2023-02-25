# TASK 2

## LINUX TERMINAL AND COMMANDS 

### LEVEL 0

##### The goal of this level is for you to log into the game using SSH. The host to which you need to connect is bandit.labs.overthewire.org, on port 2220. The username is bandit0 and the password is bandit0. Once logged in, go to the Level 1 page to find out how to beat Level 1.


 ![lvl0](https://user-images.githubusercontent.com/119709783/221324357-93abdd81-1d7b-46bd-983b-0686d1715951.png)



$ ssh bandit0@bandit.labs.overthewire.org -p 2220  

$ssh #Secure shell,protokol koji koristimo za povezivanje na odredjeni server
bandit0 - #ime korisnika 
@bandit.labs.overthewire.org - #adresa,tj veza servera kojem želimo pristupiti
-p 2220 - #port na kojem pristupamo serveru,u ovom slucaju to je 2220


### LEVEL 0-1
##### The password for the next level is stored in a file called readme located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.
 ![lvl0-1](https://user-images.githubusercontent.com/119709783/221324408-e9acc233-22f4-4993-8645-ecfda9ecfa88.png)


$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadržaj direktorija

$ cat readme - #komanda koja nam iscitava sadržaj iz fajla readme

### LEVEL 1-2
##### The password for the next level is stored in a file called - located in the home directory

![lvl 1-2](https://user-images.githubusercontent.com/119709783/221324420-e2a66815-75df-445c-96c1-5a60eacb283c.png)

 

$ cat < -  #komanda koja nam izlistava sadržaj filea "-" koji se nalazi u home direktoriju


### LEVEL 2-3
##### The password for the next level is stored in a file called spaces in this filename located in the home directory

 ![lvl2-3](https://user-images.githubusercontent.com/119709783/221324432-0129bf68-bd22-4be7-9804-5bbb6ee15128.png)


$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadržaj direktorija

$ cat "spaces in this filename" - #komanda koja nam isèitava sadržaj iz fajla spaces in this filename,u ovom slucaju koristimo znakove navoda jer bez njih se ime fajla cita kao odvojen argument,a s navodnicima kao jedan argument


### LEVEL 3-4
##### The password for the next level is stored in a hidden file in the inhere directory.

 ![lvl3-4](https://user-images.githubusercontent.com/119709783/221324443-4a311669-d06a-4e66-98c8-e5be9ff6286f.png)


$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadržaj direktorija

$ cd inhere - #komanda kojom se prebacujemo u inhere direktorij

$ find - #komanda kojom pronalazimo sve fajlove i direktorije u inhere direktoriju

$ cat .hidden - #komanda koja ispisuje sadržaj iz fajla hidden

### LEVEL 4-5
##### The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the “reset” command.

 ![lvl4-5](https://user-images.githubusercontent.com/119709783/221324461-243a3bc3-a678-41c6-970f-3f55c891e17b.png)


$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadržaj direktorija

$ cd inhere - #komanda kojom se prebacujemo u inhere direktorij

$ file ./*  - #komanda kojom koristimo * kao wildcard za pretraživanje svih fajlova koji pocinju sa -file

$ cat ./-file07 - #komanda kojom prikazujemo sadržaj fajla    -file07


### LEVEL 5-6
##### The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:

human-readable
1033 bytes in size
not executable

 ![lvl5-6](https://user-images.githubusercontent.com/119709783/221324467-5709b9f5-0063-4734-8435-ed059de6728b.png)


$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadržaj direktorija

$ cd inhere - #komanda kojom se prebacujemo u inhere direktorij

$ find -size 1033c - #komanda kojom pretražujemo fajl velicine 1033 bajta

$ cat .file2 - # komanda kojom prikazujemo sadržaj fajla      -file2


### LEVEL 6-7
##### The password for the next level is stored somewhere on the server and has all of the following properties:

owned by user bandit7
owned by group bandit6
33 bytes in size


![lvl6-7](https://user-images.githubusercontent.com/119709783/221324482-c0981c3a-ea94-4e51-a489-5a36acedac18.png)
 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls -la  - #komanda koja izlistava prošireni sadržaj direktorija

$ find / -size 33c -user bandit7 -group bandit6 -type f 2>/dev/null  - # komanda kojom pretražujemo fajl koji je velicine 33 bajta,ciji je vlasnik korisnik pod imenom bandit7 i grupa pod imenom bandit6, 2>/dev/null je komanda kojom otpisujemo sve one fajlove kojima nemamo pristup te nam tako ostane jedan fajl koji odgovara kriterijima (ovako sam ja razumio zadnju komandu,služio sam se internetom za pomoc)

$ cat /var/lib/dpkg/info/bandit7.password - #komanda kojom ispisujemo fajl bandit7.password, /var/lib/dpkg/info je putanja do fajla


### LEVEL 7-8
##### The password for the next level is stored in the file data.txt next to the word millionth


![lvl7-8](https://user-images.githubusercontent.com/119709783/221324494-1842fa66-e48e-48af-8654-3ec4c88604cf.png)
 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadržaj direktorija

$ grep "millionth" data.txt  - # komanda kojom pretražujemo fajl data.txt i u njoj tražimo rijec millionth te æe nam prikazati traženi password koji se nalazi pored te rijeci


### LEVEL 8-9
##### The password for the next level is stored in the file data.txt and is the only line of text that occurs only once

 ![lvl8-9](https://user-images.githubusercontent.com/119709783/221324503-4f5c3f63-2db1-4dc4-b12d-38f2cc4700d6.png)


$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadržaj direktorija

$ cat data.txt|sort|uniq -u  -  #komanda koja nam ispisuje sadržaj fajla data.txt, uniq komanda sortira samo unikatne linije tj. one koje se ponavljaju samo jednom


### LEVEL 9-10
##### The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters.

![lvl9-10](https://user-images.githubusercontent.com/119709783/221324510-d45e297b-ce62-4214-bf9a-3aaaedf16139.png)

 

$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadržaj direktorija

$ strings data.txt | grep ==  -  #komanda strings može se upotrebiti za prikazivanje vidljivih karaktera u izvršnoj ili binarnoj datoteci, u ovom slucaju traženim stringovima prethodi "=" znak


### LEVEL 10-11
##### The password for the next level is stored in the file data.txt, which contains base64 encoded data

 ![lvl10-11](https://user-images.githubusercontent.com/119709783/221324524-0c637193-b260-4243-8871-28924dac60b0.png)


$ pwd - #komanda koja nam pokazuje u kojem direktoriju se trenutno nalazimo

$ ls - #komanda koja izlistava sadržaj direktorija

$ base64 -d data.txt  -  #base64 je enkodiran podatak, -d ce dekodirati podatak iz fajla data.txt




