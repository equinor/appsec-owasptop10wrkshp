# Juice-Shop

Proposed solution to challenges

---
## A01:View Basket

>Challenge: View another user's shopping basket

1. abc

---
## A01:Login as admin

>Challenge: Log in with the administrator's user account<!-- .element: style="font-size:0.8em"-->

<code style="font-size: 0.5em;">

1. Go to the login page in juice shop
2. Observe 2 input fields. Test with random characters?
3. Let's check if the website is adding our input to the SQL
4. Test with email: **'** e.g. pwd: 111
5. Check Network tab in your browser and "Response" for the 500 error. There is a json with the SQL used
6. "SELECT * FROM Users WHERE email = '**'**' AND password = '111' ..."
7. Get it to return as TRUE (sql) or find the admin's name
8. Now we know the SQL query related to logging in. We can send **'** OR TRUE -- as email input and any string as a password
9. "SELECT * FROM Users WHERE email = '' OR TRUE -- AND password = '111' ..."
10. Observe the admin user name in the response - admin@juice-sh.op

</code>

---
## A01:Admin Section

>Challenge: Access the administration section of the juice shop<!-- .element: style="font-size:0.8em"-->

<code style="font-size: 0.5em;">

0. Do not log-in to the juice-shop
1. Find the administrator page
2. User the debugger TAB look in the source => main.js
3. Search for admin - and we will find 'administration'

</code>


