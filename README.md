# Discussion Forum

A simple discussion forum built using **Ruby on Rails**

## Installation:
*This installation process is for Ubuntu users. For Windows users, a similar approach is to be done*
To rum this application, we first need to have ruby and rails installed in our system. We can follow this link to install ruby and rails.
After installation, follow these steps:-
1) Clone this repository: git clone https://github.com/Rithesh17/Discussion-forum
2) Navigate to the main folder: cd Discussion-forum
3) Make the build file executable: sudo chmod u+x build.sh
4) Run the build file: ./build.sh
5) Run the application: rails server
6) Note the IP address and Port number in which it is running (usually it is 0.0.0.0:3000). Enter the IP address and port number in your browser to view the application.

## Creating an admin:
I have not included the functionality to add any user as an admin to the forum (otherwise anyone could become an admin). A few features are accessible only for the admin like creating a new channel (category). Hence to create an admin, follow these steps:

(Optional) We will need to create a user before making him an admin.
    1) Run the application: rails server
    2) Enter the IP address and port number in your browser to view the application.
    3) Go to the "Sign up" button at the top right corner of the page. It will redirect you to a new page.
    4) Enter the details and click "Sign up". You have now reated a new user.

To give administrative rights to the user:
    1) Open the terminal and navigate to the main folder of the project.
    2) Open the rails command line: rails c
    3) In the rails command prompt:
        a) Get the "User" handler: @user = User
        b) Connect to the "User" database: @user.connection
        c) View all the users in the database: @user.all
        d) Find the user which should be made the admin and make note of his "User_id"
        e) Get the handler of the user concerned: @user = User.find(*User_id*)
        f) Add the admin role: @user.add_role "admin"
        g) Save the entire transaction happening: @user.save
