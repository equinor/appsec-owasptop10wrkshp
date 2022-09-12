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
  - curl -X GET -H "Authorization: Bearer \"$BEARER_TOKEN\"" "http://localhost:3000/rest/basket/3"

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


