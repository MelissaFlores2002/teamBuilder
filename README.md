# TeamBuilder
The app is to help creators find projects in their town/city, wether they are a creator full time or its just a hobbie. This also reaches out to different types of creators, so there is no limit to what you can create!
​
## Audience
This is for the creators, ranging from the hard core coders, to engineers, to artists.They would use it to find a project to either put on the market or as a little side hobbie.
​
## Experience
 This helps the creator inside of you, whether it's your physical job, or just a hobbie, this app will help you find
 projects as well as getting you to know other professional (or semi-professional) creators whose feild you're not familiar
 with.
 
# Technical
## Models
[What data are we dealing with? What classes will we create for that data?]
- user struct 
- project create 
- project add, and requests
​
## Views
[What custom views do we need to create? Include pictures of your prototypes/sketches!]
- Login and Signup View
- Signup View
- Login View
- Your Profile View
- Home View
- Create Project View
- Clicked Project View
- Profile View
- Logout View

​
## Controllers
[What controllers will we need? What will they do?]
- Navigation Controller
- Tab Bar Controller, this controller will control the icons/views on the screen so you can click on one of the icons and it will take you to that view.
- Login/Signup Controller, this controller will control the segues to the signup controller and login controller
- Signup Contoller, this controller will use fire base to save all the data of the user so they could signin on the login screen, this will also segue to the your profile controller
- Login Controller, this controller would let you enter in your pervious information that you put in the signup controller, this will also segue to the project controller
- Your Profile Controller, this controller will let you input 3 creator types, based on your answer it will affect the project controller, will also segue to project controller
- Project Controller, this controller will have a collection view of all the projects that appiled to your profile controller, clicking on a feed project will segue to the clicked project controller, clicking on the plus sign in on the top the screen will segue you to the create project controller
- Clicked Project Controller, this controller will contain all that the user whom created its information on it, including why, name, porject, and who is needed, you can select forget which will take you back to the project Ccntroller, or add request which will segue you to the project controller
- Created Project Controller, this controller will let you type in name, who you need, project, and why along with an image if wanted, confirming this project will put it in who you needs feed, canceling will segue you back to the project controller, once confirmed it will also segue you to project controller
- Profile Controller, this controller will contain and hold all your project that you created and added, this will also look at who made add requests and if you were confirmed, by clicking on your created project or the added projet it will take you to the clicked project controller
- Logout Controller, this controller will allow the user to signout of the app
​
## Other
[Any other frameworks / things we will need? Helpers? Services?]
- Collection items
- Firebase
- CoreData 
- Table items
- Coacoa Pods
- UserService
- ProjectService
​
# Weekly Milestone
## Week 1 - Usable Build
Day 1 -

Goal: Finish all storyboard views incuding contraints for at least the Login and Signup pages.

What got finished ~
Connected to firebase and GitHub, worked and semi finished the Login/Signup story board. Struggled alot with having the GitHub upload the file, however it worked with some help and now users can view the signup/login screen and click on the button; which currentlyhas no action.

Day 2 - 

Goal: Connect all IBoutlets and connect to firebase.

What got finished ~
Finished connecting to fire base, stuggled with connecting he segue after signing up to go to the next page instead of the signup page. Started on the UI elements for the tab bar controller along with the user class. All the profiles created on the app save and are usable to sign in without having to create an account(saves).

Day 3 - 

Goal: Code in firebase 1/2 the code at least finished for the Login and Signup screens.

What got finished ~ Coded in a dropdown menu, almost complete however I continue to struggle with some of the errors its throwing at me since I have had to code it in manually. I worked some more on the segue for after you sign up, but its still not working. 

Day 4 - 

Goal: All Code and buttons connected along with firebase finished for all Login and Signup screens.

What got finished ~ Login/Signup page done! Got the username screen to work. Started learning about collectionviews and cells to impletement them. Looked at libraries for a good drop down menu to use. Home screen is almost complete.

Day 5 - 

Goal: Polish, round corners, color palet, ect. Continue onto next views with code.

What got finished ~ Home screen is completeed, created a class for the collection view cells, and finished the look of the home screen.

Feedback on finished Login and Signup; 
Seems kind of complicated

​
## Week2 - Finish Features
Day 1 - 

Goal: Have the user sign in and stay signed in as well as having the collection view mostly coded.

What got finished ~ Finished all storyboard elements and segues, figured out a base color palet. The stayed signed in method is coded and works properly.

Day 2 - 

Goal: UIStorybord finished, all IB outlets and Actions.

What got finished ~ All view controllers and IBoutlet/Actions have been created. When you are logged in you stay logged in, so you start at the home screen and it shows up.                    

Day 3 - 

Goal: Get the tab bar controller to come up at the bottom of the screen and properly function with shifting back and forth. Making the collection views only appear when a project has been created. 

What got finished ~ I got the tab bar to appear when you run the app, and open on the correct view, with proper shifting of the views. I finished the Project Model, as well as got a create function to work.

Day 4 - 

Goal: Finish all backend for the create and show project

What got finished ~ All the data stores in firebase and I have written a show function that I can call whereever I show the information.

Day 5 - 

Goal: Connect my backend show function to my frontend, and let it be seen by the world.

What got finished ~ Got cells to populate the area, got the information to appear in the font end. Ran into 3 major bugs, 3 of them are now fixed and the user can signup without the app crashing.

Feedback on App Design
Buttons were to big, the spacing was very bad.
The colors were nice.
Cant wait to see what happens when it comes to the front end of the project.

​
## Week 4 - Polish
Day 1 - 

Goal:

What got finished ~

Day 2 - 

Goal:

What got finished ~

Day 3 - 

Goal:

What got finished ~

Day 4 - 

Goal:

What got finished ~

Day 5 - 

Goal:

What got finished ~


Feedback on ... 
