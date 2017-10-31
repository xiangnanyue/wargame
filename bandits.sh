ssh -p 2220 bandit_@bandit.labs.overthewire.org


# 5
ls -alR -d $PWD/**/.* | grep -v "x" | grep "1033"

# 6
find / -user bandit7 -group bandit6 | grep -v 'Permission denied' > pd.txt
cat pd.txt

# 7 
grep -F "millionth" data.txt >> mdp.txt

# 8
# http://www.westwind.com/reference/os-x/commandline/pipes.html
sort data.txt | uniq -u

# 9
strings data.txt | grep "^="

# 10 
base64 -d data.txt >> hel.txt

# 11
# https://en.wikipedia.org/wiki/ROT13
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'

# 12 
# https://en.wikipedia.org/wiki/Hex_dump
# http://sp4hack.blogspot.fr/2014/01/overthewire-bandit-level-12-to-level-13.html

# 13
# https://help.ubuntu.com/community/SSH/OpenSSH/Keys
ssh -i sshkey.private -p 2220 bandit14@bandit.labs.overthewire.org

# 14
# https://en.wikipedia.org/wiki/Port_(computer_networking)
# https://en.wikipedia.org/wiki/Localhost
cat /etc/bandit_pass/bandit14
telnet localhost 30000

# 15
# https://zh.wikipedia.org/wiki/%E5%82%B3%E8%BC%B8%E5%B1%A4%E5%AE%89%E5%85%A8%E5%8D%94%E8%AD%B0
openssl s_client -quiet -connect localhost:30001

# 16
# https://en.wikipedia.org/wiki/Port_scanner
nmap -p 31000-32000 localhost
openssl s_client -quiet -connect localhost:31790
chmod 600 sshkey
ssh -i sshkey bandit17@bandit.labs.overthewire.org -p 2220

# 17
diff file1 file2 

# 18 
# -t Force pseudo-terminal allocation.  This can be used to execute arbitrary screen-based
#             programs on a remote machine, which can be very useful,
ssh -t -p 2220 bandit18@bandit.labs.overthewire.org /bin/sh

# 19
./bandit20-do cat /etc/bandit_pass/bandit20

# 20
# use nc to simulate connection between the port
# do this bandit in one shell and use background
echo "GbKksEFF4yrVs6il55v6gwY5aVje5f0j" | nc -l 1337 &
./suconnect 1337

# 21

# 23
echo I am user bandit23 | md5sum | cut -d ' ' -f 1

# 24


# 25 entre vim by "v" and do ":e /etc/bandit_pass/bandit26"

# 26 

