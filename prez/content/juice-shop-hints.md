# Juice-Shop

Proposed solution to challenges

---
## A01:View Basket

>Challenge: View another user's shopping basket<!-- .element: style="font-size:0.8em"-->

<code style="font-size: 0.5em;">

0. Create a new user
1. Use browser to observe the basket API, when entering your basket - see HEADERS
2. http://localhost:3000/rest/basket/6 - Can I use that to view another user?
3. BEARER token, check HEADER for the Authorization
4. Try another user name e.g.:
5. Grab the Bearer Token and do export BEARER_TOKEN="..then the token here"
6. curl -X GET -H "Authorization: Bearer \"$BEARER_TOKEN\"" "http://localhost:3000/rest/basket/3"
7. You can also use the "Resend" feature in Firefox to do nr 6.

</code>

---
## A01:Login as admin

>Challenge: Log in with the administrator's user account<!-- .element: style="font-size:0.8em"-->

<code style="font-size: 0.5em;">

0. Go to the login page in juice shop
1. Observe 2 input fields. Test with random characters?
2. Let's check if the website is adding our input to the SQL
3. Test with email: **'** e.g. pwd: 111
4. Check Network tab in your browser and "Response" for the 500 error. There is a json with the SQL used
5. "SELECT * FROM Users WHERE email = '**'**' AND password = '111' ..."
6. Get it to return as TRUE (sql) or find the admin's name
7. Now we know the SQL query related to logging in. We can send **'** OR TRUE -- as email input and any string as a password
8. "SELECT * FROM Users WHERE email = '' OR TRUE -- AND password = '111' ..."
9. Observe the admin user name in the response - admin@juice-sh.op

</code>

---
## A01:Admin Section

>Challenge: Access the administration section of the juice shop<!-- .element: style="font-size:0.8em"-->

<code style="font-size: 0.5em;">

0. Do not log-in to the juice-shop
1. Find the administrator page
2. User the debugger TAB look in the source => main.js
3. Search for admin - and we will find 'administration'
4. Remember to login as `admin` before you try the URL

</code>

---
## A02:Weird Crypto

>Inform the shop about an algorithm or library it should definitely not use the way it does.

<code style="font-size: 0.5em;">

1. Try find what crypto algorithm the shop is using
2. Use the "Feedback form" to notify the shop about the algorithm
3. Hint - Google knows -  **weak crypto algorithms**

</code>

---
## A03:Login Jim

>Log in with Jim's user account

<code style="font-size: 0.5em;">

1. 
1. Find User Jim's e-mail and his password hash
2. Hint - see if there is vulnerability in searching products
3. in main.js we discover - /rest/products/search?q=
4. Maybe try a SQL Injection?
5. .... /search?q=qwert'))%20UNION%20SELECT%20id,email,password,'4','5','6','7','8','9'%20FROM%20Users--
6. Hint - https://crackstation.net

</code>

---
## A03:Login Bender

>Log in with Bender's user account

<code style="font-size: 0.5em;">

1. Search in main.js to see if there is url related to admin
2. We find - /rest/admin/application-configuration
3. We notice the application domain - juice-sh.op
4. Try login using the user and domain
5. We from previous challenge that the user field is vulnerable for SQL injection
6. Use that knowledge to login on benders account
7. bender@juice-sh.op

</code>

---
## A05:Deprecated Interface

>Deprecated Interface - Use a deprecated B2B interface that was not properly shut down.

<code style="font-size: 0.5em;">

1. Use the - "Complaint page" (See menu)
2. Click the - "Browse" - Notice the allowed file types.
3. Look into main.js - for e.g. ZIP, which was allowed type
4. Notice any file choices not shown behind Browse button? ( allowedMimeType )
5. Try load an empty XML file - notice the response (devtool) in Firefox

</code>

---
## A06:Vulnerable Library

>Inform the shop about a vulnerable library it is using. Mention the exact library name and version in your comment

<code style="font-size: 0.5em;">

1. Hint - "Poison null byte" - %00 e.g. %2500 in URL
2. Search main.js - see if you find something related to ftp
3. There seems to be a backup file forgotten - package.json.bak
4. Download the file above - using "Poison null byte"
5. Investigate the file for vulnerable packages (dependencies)
6. Use Snyk Advisor to investigate vulnerable libraries - https://snyk.io/advisor/
7. e.g. sanitize-html 1.4.2
8. Give feedback to Juice-Shop about this library (Comment box)

</code>

---
## A07:Password Strength

>Log in with the administrator's user credentials **without** previously changing them or applying SQL Injection.

<code style="font-size: 0.5em;">

1. Previous challenge (A01/A03) we noticed admin's e-mail : admin@juice-sh.op
2. Search in main.js for anything login e.g. "/login"
3. Notice in your browser tool - /rest/user/login
4. Now you need a password list and something to bruteforce the password.
5. e.g. Try many attempts  on -  /rest/user/login - with the payload {'email':'admin@juice-sh.op', 'password':'mytestpassword'}
6. Passwords files are all over the internet - e.g.  https://github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/best1050.txt

</code>

---
## A07:GDPR

>Log in with Chris' erased user account.

<code style="font-size: 0.5em;">

1. From previous challenges (A03 or A01 login) - try SQL inject search API to provoke an error
2. Inspect the network response - the error message. Notice the SQL database (SQLITE)
3. With information above, we can see what "db schema sqlite" - www.sqlite.org/index.html - FAQ nr7 https://www.sqlite.org/faq.html#q7
4. From the knowledge of SQLITE_SCHEMA we can produce : blabla'))UNION%20select%20sql,2,3,4,5,6,7,8,9%20from%20sqlite_master--
5. Try this in the search API (A03): /rest/products/search?q=blabla'))UNION%20select%20sql,2,3,4,5,6,7,8,9%20from%20sqlite_master--
6. Inspect the response - Notice the table "Users"
7. Notice the column "DeletedAt" in talbe "Users"
8. Get the deltedAt, email and username
9. /rest/products/search?q=blabla'))UNION%20select%20deletedAt,email,username,4,5,6,7,8,9%20from%20users--
10. Inspect chris.pike's info - he seem to be deleted
11. Login with Chris'es e-mail with knowledge from previous injection info - chris.pike@juice-sh.op'--;

</code>

---
## A10:DOM XSS

>Perform a **DOM XSS** attack with &lt;iframe src="javascript:alert('DOM xss')">.

<code style="font-size: 0.5em;">

1. Use the payload on a certain input field
2. Payload: &lt;iframe src="javascript:alert('DOM xss')">

</code>

---
## A10:Client-side XSS Protection (XSS)

>Perform a **persisted** XSS attack with &lt;iframe src="javascript:alert('got you xss')"> bypassing a client-side security mechanism.

<code style="font-size: 0.5em;">

1. Hint - /#/administration portal from previous challenge list all users
2. How to register a user with the payload instead of the users e-mail?
3. Register a user - and inspect the request/response
4. Use "Resend" feature in Firefox - to register a user with the payload
5. Visit the /#/administration portal

</code>
