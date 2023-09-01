# Juice-Shop

Proposed solution to challenges

---

## A01:View Basket

>Challenge: View another user's shopping basket <!-- .element: style="font-size:0.8em"-->

<code style="font-size: 0.5em;">

1. Create a new user
1. Use browser to observe the basket API, when entering your basket - see HEADERS
1. http://&lt;yourhost&gt;:3000/rest/basket/6 - Can I use that to view another user?
1. BEARER token, check HEADER for the Authorization
1. Try another user name with steps below ...
1. Grab the Bearer Token and do export BEARER_TOKEN="..then the token here"
1. curl -X GET -H "Authorization: Bearer \"$BEARER_TOKEN\"" "http://&lt;yourhost&gt;:3000/rest/basket/3"
1. You can also use the "Resend" feature in Firefox to do nr 6.

</code>

---
## A01:Login as admin

>Challenge: Log in with the administrator's user account <!-- .element: style="font-size:0.8em"-->

<code style="font-size: 0.5em;">

1. Go to the login page in juice shop
1. Observe 2 input fields. Test with random characters?
1. Let's check if the website is adding our input to the SQL
1. Test with email: **'** e.g. pwd: 111
1. Check Network tab in your browser and "Response" for the 500 error. There is a json with the SQL used
1. "SELECT * FROM Users WHERE email = '**'**' AND password = '111' ..."
1. Get it to return as TRUE (sql) or find the admin's name
1. Now we know the SQL query related to logging in. We can send **'** OR TRUE -- as email input and any string as a password
1. "SELECT * FROM Users WHERE email = '' OR TRUE -- AND password = '111' ..."
1. Observe the admin user name in the response - admin@juice-sh.op
1. Also take note on the SQL that is used (from the error response)

</code>

---

## A01:Admin Section

>Challenge: Access the administration section of the juice shop <!-- .element: style="font-size:0.8em"-->

<code style="font-size: 0.5em;">

1. Do not log-in to the juice-shop
1. Find the administrator page
1. User the debugger TAB look in the source => main.js
1. Search for admin - and we will find 'administration'
1. Remember to login as `admin` before you try the URL

</code>

---

## A02:Weird Crypto

>Inform the shop about an algorithm or library it should definitely not use the way it does.<br>http://&lt;yourhost&gt;:3000/#/contact

<code style="font-size: 0.5em;">

1. Create a new user
1. Change password for new user with an easy one e.g 'admin123' and observe response from /change-password? (In the Firefox tool)
1. e.g. password:"0192023a7bbd73250516f069df18b500"
1. What type of hash is this?
1. Use this information (hash type) to give feedback to juice-shop
1. http://&lt;yourhost&gt;/#/contact
1. You can also solve this by googling - **weak crypto algorithms**
1. Hint on 4 - **hash analyzer tunnelsup**

</code>

---
## A03:Login Bender

>Log in with Bender's user account

<code style="font-size: 0.5em;">

1. Search in main.js to see if there is url related to admin
1. We find - /rest/admin/application-configuration
1. We notice the application domain - juice-sh.op - in the response (json)
1. Try login using with the user and the domain we discovered
1. We from previous challenge that the user field is vulnerable for SQL injection
1. Use that knowledge to login on benders account
1. bender@juice-sh.op'--;

</code>

---

## A03:Login Jim

>Log in with Jim's user account

<code style="font-size: 0.5em;">

1. Find User Jim's e-mail and his password hash
1. Hint - see if there is vulnerability in searching products
1. in main.js we discover - /rest/products/search?q=
1. Maybe try a SQL Injection?
1. /rest/products/search?q=qwert'))%20UNION%20SELECT%20id,email,password,'4','5','6','7','8','9'%20FROM%20Users--
1. Hint - https://crackstation.net

</code>

---

## A05:Deprecated Interface

>Deprecated Interface - Use a deprecated B2B interface that was not properly shut down.

<code style="font-size: 0.5em;">

1. Use the - "Complaint page" (See menu)
1. Click the - "Browse" - Notice the allowed file types.
1. Look into main.js - for e.g. ZIP, which was allowed type
1. Notice any file choices not shown behind Browse button? ( allowedMimeType )
1. Try load an empty XML file - notice the response (devtool) in Firefox

</code>

---
## A06:Vulnerable Library

>Inform the shop about a vulnerable library it is using. Mention the exact library name and version in your comment

<code style="font-size: 0.5em;">

1. Hint - "Poison null byte" - %00 e.g. %2500 in URL
1. Search main.js - see if you find something related to ftp
1. There seems to be a backup file forgotten - package.json.bak
1. Download the file above - using "Poison null byte"
1. Investigate the file for vulnerable packages (dependencies)
1. Use Snyk Advisor to investigate vulnerable libraries - https://snyk.io/advisor/
1. e.g. "sanitize-html 1.4.2"
1. Give your feedback in "Customer Feedback" - use Comment box

</code>

---

## A07:Password Strength

>Log in with the administrator's user credentials **without** previously changing them or applying SQL Injection.

<code style="font-size: 0.5em;">

1. Previous challenge (A01/A03) we noticed admin's e-mail : admin@juice-sh.op
1. Search in main.js for anything login e.g. "/login"
1. Notice in your browser tool - /rest/user/login
1. Login a user you create and notice the payload and api
1. Now you need a password list and something to bruteforce the password.
1. e.g. Try many attempts  on -  /rest/user/login - with the payload {'email':'admin@juice-sh.op', 'password':'mytestpassword'}
1. Passwords files are all over the internet - e.g.  https://github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/best1050.txt

</code>

---

## A07:GDPR

>Log in with Chris' erased user account.

<code style="font-size: 0.5em;">

1. From previous challenges (A03 or A01 login) - try SQL inject search API to provoke an error
1. Inspect the network response - the error message. Notice the SQL database (SQLITE)
1. With information above, we can see what "db schema sqlite" - www.sqlite.org/index.html - FAQ nr7 https://www.sqlite.org/faq.html#q7
1. From the knowledge of SQLITE_SCHEMA we can produce : blabla'))UNION%20select%20sql,2,3,4,5,6,7,8,9%20from%20sqlite_master--
1. Try this in the search API (A03): /rest/products/search?q=blabla'))UNION%20select%20sql,2,3,4,5,6,7,8,9%20from%20sqlite_master--
1. Inspect the response - Notice the table "Users"
1. Notice the column "DeletedAt" in talbe "Users"
1. Get the deltedAt, email and username
1. /rest/products/search?q=blabla'))UNION%20select%201,email,username,4,5,6,7,8,deletedAt%20from%20users--
1. Inspect chris.pike's info - he seem to be deleted
1. Login with Chris'es e-mail with knowledge from previous injection info - chris.pike@juice-sh.op'--;

</code>

---

## A10:DOM XSS

>Perform a **DOM XSS** attack with<br>&lt;iframe src="javascript:alert('DOM xss')">

<code style="font-size: 0.5em;">

1. Use the payload on a certain input field
1. Payload: &lt;iframe src="javascript:alert('DOM xss')">

</code>

---

## A10:Client-side XSS Protection (XSS)

>Perform a **persisted** XSS attack with<br>&lt;iframe src='javascript:alert(\`got you xss\`)'><br>bypassing a client-side security mechanism.

<code style="font-size: 0.5em;">

1. Not available using GitPod or Docker - you must pull the source
1. https://github.com/juice-shop/juice-shop#from-sources
1. npm install && npm start
1. Hint - /#/administration portal from previous challenge list all users
1. How to register a user with the payload instead of the users e-mail?
1. Register a user - and inspect the request/response
1. Use "Resend" feature in Firefox - to register a user with the payload
1. Payload: &lt;iframe src='javascript:alert(\`got you xss\`)'>
1. Visit the /#/administration portal as the admin to see the effect

</code>
