# LoginMathWebSite

This website is developed as personal project. It uses ASP.NET, C#, SQL, HTML and CSS. There are 4 different pages - Login, Registration, User and Admin. Also there is a master page where all styles and structures are pulled from. The website contains header, footer, left menu and general content placeholders. The default page is Login.aspx where the users should input their username and password. There are validations for empty boxes and two buttons - Login and Register. If the users already have a registration, then they should only add their username and password and click the Login button. Otherwise, they should click on the Registration button. Once they clicked on it, the users will be redirected to the Registration page. There are 8 different mandatory text boxes where they should enter a value - Username, First Name, Last Name, Date of Birth, E-mail, Password, Confirm Password and Country.

Username:
The username should be unique. This means there is a SQL query which checks the database for already registered users with the same username. If there is already registered the same username, then an error message appears and the user will be required to enter any other username. Otherwise the username should be accepted.
First Name:
Here the user can input their first name. There is a validation for empty box.
Last Name:
Here the user can input their last name. There is a validation for empty box.
Date of Birth:
This is a Date format box and when the user clicks on it, then there is a calendar shown and the user can select in which year, month and exact date they are born. This is also a mandatory field.
E-mail:
Here the users should write their email address. The email address should be unique as their usernames. This means there is a SQL query which checks the database for already registered users with the same email address. If there is already registered the same email, then an error message appears and the user will be required to enter any other email address. Otherwise the email should be accepted.
Password:
This is also a mandatory field and the users should add their own password.
Confirm Password:
Mandatory field which validate agains the previous entered password and if both passwords are not the same, then an error message appears. Otherwise the passwords should be accepted.
Country:
This is a mandatory drop-down list where the users can choose between 4 different countries - USA, UK, Germany and France.

There are two buttons at the bottom - Submit and Reset. If Reset is selected, then all information provided will be erased and the registration form will looks as default. If the Submit button is selected, then all user information is saved to the SQL database and the users are redirected to the User webpage.

Once the users already have an account, then then they can see and play the math quiz game. There are 4 different fields here: addition, subtraction, multiplication and division. By default the game starts with question mark placeholders for each number. Once the Start button is clicked, then all question marks are changed by random generated numbers. Users should add an answer for each math operation otherwise an error message should be shown. After they provide an answer for each row, they can click the Check button. The program checks all fields and show the results at the bottom. If they are correct then they are highlighted in green, otherwise they are shown in red color. After that the users can start a new game by clicking again the Start button.

The logged users can also check the database table by clicking the link: "You can check our database here!". Then they will be redirected to the main database table.

If the users click on the Log Out button, then their session will be terminated and they will go back to the main page - the login page.
