# BE16_CR11_Tamara
Create a GitHub Repository named: BE16_CR11_YourName. Push the files into it and send the link through the learning management system (LMS). Set your repository to private. Add codefactorygit as a collaborator. See an example of a GitHub link below:

https://github.com/JohnDoe/repositoryname.git.

Your MySQL database MUST be named: BE16_CR11_animal_adoption_yourname

For this CodeReview, the following criteria will be graded:

 
(5) Create a database ( BE16_CR11_animal_adoption_yourname) initially with 2 tables: user and animal. Add sufficient test data in the animal table: at least 10 records in total between small animals and large animals. Remember that animals have their age so make sure there are at least 4 senior animals in the DB (older than 8 years old).

(20) Display all animals on a single web page (home.php). Make sure a nice GUI is presented here (only backenders exempt)

(15) There should be a link on the navbar "Senior" that will display all senior animals (animals older than 8 years old). Here you can decide whether to create a filter on the home page ($GET method) and reorganize the result from the query or create a new page senior.php and the link should lead to it.

(15) Create a show more/show details button that will lead to a new page (details.php) with only the information from that specific record/animal.

(15) Create a registration and login system for the user. The user should be able to see at least their email and picture when logged in.

Create separate sessions for normal users and administrators.

(15)Normal Users:

They will be able ONLY to see(read) and access all data. No action buttons (create, edit or delete) should be available for the animals (CRUD)

(15) Admin:

Only the admin is able to create, update and delete data about animals (CRUD) within the admin panel, therefore an Admin Panel/Dashboard  should be created. Normal users MUST NOT access this page if they try.

Bonus points
(20)Pet Adoption

In order to accomplish this task, a new table pet_adoption will need to be created. This table should hold the user_id and the pet_id (as foreign keys) plus other information that you may think is relevant i.e: adoption_date. 

Each Pet information/card should have a button "Take me home" that, when clicked, will "adopt" the pet. When it does, a new record should be created in the table pet_adoption.

Hint: if you use the POST method to create the adoption, you will need a form. Get method won't need it. 

You can expand on it using the status column for a filter and only show the pet to be adopted ("available") according to their status. Not required though.