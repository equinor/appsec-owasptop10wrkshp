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
4. Try another user name e.g.: curl -X GET -H "Authorization: Bearer \"$BEARER_TOKEN\"" "http://localhost:3000/rest/basket/3"

</code>


- Bonus: Check "main.js" and search for /api - see if you can find something related to "Users"<!-- .element: style="font-size:0.8em"-->
- Try the API you probably found<!-- .element: style="font-size:0.8em"-->

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

</code>

--
## A05:Deprecated Interface

>Deprecated Interface - Use a deprecated B2B interface that was not properly shut down.

1. Use the - "Complaint page" (See menu)
2. Click the - "Browse" - Notice the allowed file types.
3. Look into main.js - for e.g. ZIP, which was allowed type
4. Notice any file choices not shown behind Browse button? ( allowedMimeType )
5. Try load an empty XML file - notice the response (devtool) in Firefox

