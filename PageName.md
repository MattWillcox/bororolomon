**1 Guidelines:**

> In developing this program, our group followed a strict guideline on how we are implementing various aspects of this project. The following describe the tools we used in planning the project, the language we are implementing the game in, and also the ethical rules we will adhere to when working on the actual game.

1.1 Technical Guidelines<br>
<blockquote>•	Development of the application will utilize Objective-C based in XCode version 3.2<br>
•	Coding and interface will be created using XCode version 3.2<br>
•	System and UML diagrams created through Visual Paradigm 7.2<br>
•	Structural and Process Diagrams created through Microsoft Word 2007<br>
•	A repository will be setup using Google Code.<br></blockquote>


1.2 Ethical Guidelines<br>
<blockquote>•	The content of this program must be appropriate for Grade 2/3 students<br>
•	Comments in the code must be professional<br>
•	Program must respond constructively to student<br></blockquote>

1.3 Coding Style: <br>
<blockquote>In order to increase the code readability and clearance, we decided to use Apple’s standard coding guidelines. It is familiar to iPhone (or iTouch) developers so if a new iPhone (or iTouch) developer joins the team he/she can easily understand and modify the code.<br>
Coding guidelines can be found at the following:<br>
<a href='http://developer.apple.com/mac/library/documentation/Cocoa/Conceptual/CodingGuidelines/CodingGuidelines.html#//apple_ref/doc/uid/10000146'>Coding guidelines</a></blockquote>

1.4 Integrated Development Environment (IDE):<br>
<blockquote>Xcode: Created by Apple for developing applications on its Mac OS. It consists of a suite of tools for developing programs in Objective-C.</blockquote>

1.5 Backup:<br>
<blockquote>Subversion is a free and well-known program for version controlling and is fully integrated into Xcode.</blockquote>

1.6 Commenting:<br>
<blockquote>The GNU Coding Standards were written by Richard Stallman and other GNU Project volunteers. Their purpose is to make the GNU system clean, consistent, and easy to install.  We chose this type of commenting because of its extent of usage amongst GNU developers. It can be found at the following:<br>
<a href='http://www.gnu.org/prep/standards/standards.html#Comments'>Commenting Guidelines</a></blockquote>


1.7 Device programming language and Framework<br>

<blockquote>Objective-C on XCode 3.2 is the only language available for application development in iPhone. The framework utilized will be the View-based application framework provided by XCode 3.2.</blockquote>


1.8 Web site programming language:<br>
<blockquote>HTML, ASP.Net and JavaScript are selected for programming the website for fast development.</blockquote>

<b>2 Design Structure:</b>

<blockquote>In the design of our game, our group focused on a system that split the program into two main parts: the menu system and the actual games themselves. The menu system consists of the network of interfaces that would be implemented through the view structure that is available from Objective-C. Using buttons, students would be able to traverse through the network to reach their intended destination. The user desired function would then be implemented in the page. Within the actual program itself, we have decided on an object-oriented design. We hope to be able to implement the game through a clear and concise system, allowing for easier trouble shooting and future additions.</blockquote>



<b>3 System Diagrams:</b><br>


3.1 UML Diagrams<br>
<img src='http://bororolomon.googlecode.com/files/MenuUML.png' />
<img src='http://bororolomon.googlecode.com/files/ProfilesUML.png' />
<img src='http://bororolomon.googlecode.com/files/GameInterfaceUML.png' />



3.2 State Machine Diagram<br>

<blockquote>The following diagram shows interactions in the menu system, and all the different functions that each menu would provide. When the user first starts the game from the iPhone applications menu, the game would automatically bring them to the login page. From there on, buttons on the screen would allow them to go to other menus.</blockquote>

<img src='http://bororolomon.googlecode.com/files/StateMachineDiagram.png' />


3.3 Structural Diagrams<br>
<img src='http://bororolomon.googlecode.com/files/Structual%20Model.png' />

3.4 Process Model<br>
<img src='http://bororolomon.googlecode.com/files/Process%20model%20-%20Website.png' />
<img src='http://bororolomon.googlecode.com/files/Process%20model%20-%20IPhone.png' />

<b>4 Data Requirements:</b>

4.1 File Formats<br>
<br>
<blockquote>The file formats used for this program will be:<br>
•	.txt<br>
•	.png<br>
•	.gif<br>
•	.xml<br></blockquote>

<blockquote>Student and teacher profiles are stored in .txt files.</blockquote>

<blockquote>The .png and .gif files will be used to render the graphics for the mathematical questions and also for parts of the menus.</blockquote>

<blockquote>Web site database (SQL). The web site database will reside in SQL server/MySQL.</blockquote>

<blockquote>Data format:<br>
MacOS-X style (XML in the UTF8 character set). Very well supported by Objective-C which allows for a more comprehensive and quick development.</blockquote>

<blockquote>Database:<br>
All of the player profiles will be stored on a single .txt file. They will be stored in a two dimensional array that will keep their username, password, high scores for each game, difficulty levels and settings. The format of the database itself would be in XML, since XCode 3.2 automatically writes arrays onto text files in that format.</blockquote>



4.2 User Interaction<br>
<br>
<blockquote>All user interactions with the program will be through the iPhone touch screen. This will include buttons within the program.</blockquote>

4.3 Feature Priority<br>

4.3.1 Version 1:<br>
<blockquote>The main features that will be implemented in this version are the menu systems, the difficulty and level selection system and the actual implementations of all the games.</blockquote>

<blockquote>The menu system includes the implementation of the login menu screen, the main menu screen, the level selection screen, and the profile screen. The graph creation system and the record of history will not be fully complete, but the profile screen will be accessible. The login menu, the main menu, and the game level menu will be fully complete.<br>
The ability to save and load profiles will be started upon, but will not be complete.</blockquote>

<blockquote>- For the Equation game, all functions would be complete and fully interactive. The game interface will be complete, and game integration would also be finished, but integration would be unpolished.</blockquote>

<blockquote>- The level difficulty selection system would also be complete, and fully implemented.</blockquote>

<blockquote>Links to the main features include:<br>
•	<a href='http://code.google.com/p/bororolomon/wiki/MenuSystem'>Menu System</a><br>
•	MiniGames (Equation Game)<br>
•	Profiles<br></blockquote>



4.3.2 Version 2:<br>
<blockquote>The main focus of this version is the implementation of the online updating system. The other minigames would also be fully implemented, and the difficulty scaling system would also be complete. Profiles can be saved and loaded.</blockquote>

<blockquote>- The Scoretracking system will be implemented, and the informational components would be fully usable, but unpolished.</blockquote>

<blockquote>- Automatic difficulty scaling completed during this phase.</blockquote>

<blockquote>Links to main features:<br>
•	<a href='http://code.google.com/p/bororolomon/wiki/ScoreTracking'>Score Tracking System and Statistics</a><br>
•	AutoDifficultyScale<br>
•	<a href='http://code.google.com/p/bororolomon/wiki/DifficultySelect'>Difficulty Selection System</a><br>
•	MiniGames (Clock Game, Mirror Game, Money Counting Game)<br>
•   <a href='http://code.google.com/p/bororolomon/wiki/LeaderBoard'>Online Leader Board</a><br>
•	Profiles<br></blockquote>


4.3.3 Version 3:<br>
<blockquote>The program will be fully functional, and all interfaces will be altered to appeal to Grade 2/3 students. The game images and buttons would all be adjusted for Grade 2/3 students to use, and all games would be balanced to fit the correct math levels. The graph for student growth in the Scoretracking system would also be complete.</blockquote>

<blockquote>Links to main features:<br>
•	<a href='http://code.google.com/p/bororolomon/wiki/ScoreTracking'>Score Tracking System and Statistics</a><br>
•	Online Leader Board<br></blockquote>


<b>5 Revision History:</b>

<blockquote>Version 1.0<br></blockquote>

<blockquote>February 5, 2009<br>
•	Design Document first created<br></blockquote>

<blockquote>February 8, 2009 <br>
•	Technical and Ethical Guidelines were revised<br>
•	Decided on File formats to be used within the game program<br>
•	State machine diagram added<br>
•	UML and Structural Diagrams added. <br>
•	Feature Priority revised.<br>
•	Main feature of each version of the game is decided upon.<br>
•	Google Code chosen to be coding repository<br></blockquote>

<blockquote>February 10, 2009<br>
•	Grammar and paragraphs revised.<br>
•	Backup and commenting formats are decided upon.<br>
•	State machine diagram revised<br>
•	Design Document version 1 handed in.<br></blockquote>



<blockquote>Version 1.1<br></blockquote>

<blockquote>March 11, 2009<br>
•	Table of Contents changed to better layout<br>
•	Revision history added to document<br>
•	Grammar and sentences is revised for more professional design<br>
•	Updated feature priority<br>
•	Added Database information<br>
•	Added Framework information<br>