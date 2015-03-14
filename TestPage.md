<div>
<ol><li>Guidelines:<br>
</li></ol><blockquote><br />
<br />
In developing this program, our group followed a strict guideline to the implementation of the various aspects of this project. The following describe the<br>
tools we utilized in this project and also the ethical rules we will adhere to when creating the game.<br>
<br />
<br />
</blockquote><ol><li>1 Technical Guidelines<br>
</li></ol><blockquote><br />
• Development of the application will utilize Objective-C based in XCode version 3.2<br>
<br />
• Coding and interface will be created using XCode version 3.2<br>
<br />
• System and UML diagrams created through Visual Paradigm 7.2<br>
<br />
• Structural and Process Diagrams created through Microsoft Word 2007<br>
<br />
• A repository will be setup using Google Code.<br>
<br />
<br />
</blockquote><ol><li>2 Ethical Guidelines<br>
</li></ol><blockquote><br />
• The content of this program must be appropriate for Grade 2/3 students<br>
<br />
• Comments in the code must be professional<br>
<br />
• Program must respond constructively to student<br>
<br />
<br />
</blockquote><ol><li>3 Coding Style:<br>
</li></ol><blockquote><br />
In order to increase the code readability and clearance, we decided to use Apple’s standard coding guidelines. It is familiar to iPhone (or iTouch)<br>
developers so they can modify and the read the programming code easily.<br>
<br />
Coding guidelines can be found at the following url:<br>
<br />
<br />
<a href='http://developer.apple.com/mac/library/documentation/Cocoa/Conceptual/CodingGuidelines/CodingGuidelines.html#//apple_ref/doc/uid/10000146'>http://developer.apple.com/mac/library/documentation/Cocoa/Conceptual/CodingGuidelines/CodingGuidelines.html#//apple_ref/doc/uid/10000146</a>
<br />
<br />
</blockquote><ol><li>4 Integrated Development Environment (IDE):<br>
</li></ol><blockquote><br />
XCode version 3.2: Created by Apple for developing applications on its Mac OS. It consists of a suite of tools for developing programs in Objective-C.<br>
<br />
<br />
</blockquote><ol><li>5 Backup:<br>
</li></ol><blockquote><br />
Subversion is utilized for backup functions. It is a free and well-known program for version control, and is fully integrated into XCode version 3.2.<br>
<br />
<br />
</blockquote><ol><li>6 Commenting:<br>
</li></ol><blockquote><br />
The GNU coding Standards were written by Richard Stallman and other GNU Project volunteers. Their purpose is to make the GNU system clean, consistent, and<br>
easy to install. It can be found at the following:<br>
<br />
<br />
<a href='http://www.gnu.org/prep/standards/standards.html#Comments'>http://www.gnu.org/prep/standards/standards.html#Comments</a>
<br />
<br />
<br />
</blockquote><ol><li>7 Device programming language<br>
</li></ol><blockquote><br />
Objective-C on XCode 3.2 using iPhone SDK 3.1.3.<br>
<br />
<br />
</blockquote><ol><li>8 Web site programming language:<br>
</li></ol><blockquote><br />
HTML, ASP.Net and JavaScript are used for the website.<br>
<br />
<br />
</blockquote><ol><li>9 License<br>
</li></ol><blockquote><br />
The game is licensed by Bororolomon.<br>
<br />
<br />
</blockquote><ol><li>10 Framework<br>
</li></ol><blockquote><br />
The following frameworks are used by our game:<br>
<br />
• UIKit<br>
<br />
• QuartzCore<br>
<br />
• Foundation<br>
<br />
• AVFoundation<br>
<br />
• CoreGraphics<br>
<br />
<br />
<br />
2 Design Structure:<br>
<br />
<br />
The program is split into two parts: the menu system and the actual games themselves. The menu system consists of the network of interfaces that is<br>
implemented through the view structure that is available from XCode 3.2. Using buttons, students are able to traverse through the network to reach their<br>
intended destination. The menus are implemented using permanent views, while the games are programmed using temporary views. The coding style used is<br>
object oriented. We hope to be able to implement the game through a clear and concise system, allowing for easier trouble shooting and future additions.<br>
<br />
<br />
<br />
3 System Diagrams:<br>
<br />
<br />
3.1 UML Diagrams<br>
<br />
<br />
<br />
3.2 State Machine Diagram<br>
<br />
<br />
The following diagram shows interactions of the menu system, and all functions that each menu would provide. When the user first starts the game from the<br>
iPhone applications menu, the game would automatically bring them to the login page. From there on, buttons on the screen would allow them to go to other<br>
menus.<br>
<br />
<br />
<br />
3.3 Structural Diagrams<br>
<br />
<br />
<br />
4 Data Requirements:<br>
<br />
<br />
4.1 File Formats<br>
<br />
<br />
Data storage:<br>
<br />
<br />
The player profiles are stored in a property list (plist) file. The profiles include username, password, high scores for each game, difficulty levels and<br>
settings. Plist files are recommended by Apple to be used to store the user settings on the Iphone. Data is stored in XML format in the Plist file using<br>
UTF8 encoding and the schema used for the XML data is Apple’s publicly available schema found at following link:<br>
<br />
<br />
<a href='http://www.apple.com/DTDs/PropertyList-1.0.dtd'>http://www.apple.com/DTDs/PropertyList-1.0.dtd</a>
<br />
<br />
Data storage data schema:<br>
<br />
Each user profile is stored as a data dictionary of key/values. All user profiles in turn are saved in a data dictionary that stores the user name as key<br>
and the user’s profile as values.<br>
<br />
<br />
The data schema can be thought of as a table with following fields (user name is id):<br>
<br />
UserName string<br>
<br />
Sound Boolean<br>
<br />
Password string<br>
<br />
Moneygamescore integer<br>
<br />
Moneygamedifficulty integer<br>
<br />
Mirrorgamedifficulty integer<br>
<br />
Mirrosgamescore integer<br>
<br />
Equationgamedifficulty integer<br>
<br />
Equationgamescore integer<br>
<br />
Clockgamedifficulty integer<br>
<br />
Clockgamescore<br>
<br />
<br />
File types:<br>
<br />
<br />
The file types used for this program will be:<br>
<br />
• .png<br>
<br />
• .gif<br>
<br />
• .plist<br>
<br />
• .jpg<br>
<br />
<br />
The .png and .gif files will be used to render the graphics for the mathematical questions and also for parts of the menus.<br>
<br />
The plist file is used for the data storage.<br>
<br />
<br />
<br />
<br />
4.2 User Interaction<br>
<br />
<br />
All user interactions with the program are done through the iPhone touch screen.<br>
<br />
<br />
<br />
5 Feature Priority<br>
<br />
<br />
5.1 Version 1:<br>
<br />
The main features that will be implemented in this version are the menu systems, the difficulty and level selection system and the actual implementations<br>
of all the games.<br>
<br />
<br />
The menu system includes the implementation of the login menu screen, the main menu screen, the level selection screen, and the profile screen. The graph<br>
creation system and the record of history will not be complete yet, but the profile screen would be accessible. The login menu, the main menu, and the game<br>
level menu will be fully complete.<br>
<br />
<br />
- For the Equation game, all functions would be complete and fully interactive. The game interface will be complete, and game integration would also be<br>
finished, but integration would be unpolished.<br>
<br />
<br />
- The level difficulty selection system would also be complete, and fully implemented.<br>
<br />
<br />
Links to the main features include:<br>
<br />
• Menu system<br>
<br />
• MiniGames (Equation Game)<br>
<br />
• RecordHistory<br>
<br />
<br />
<br />
5.2 Version 2:<br>
<br />
The main focus of this version is the implementation of the online updating system. The other minigames would also be fully implemented, and the difficulty<br>
scaling system would also be complete.<br>
<br />
- The Scoretracking system will be implemented, and the informational components would be fully usable, but unpolished.<br>
<br />
- Automatic difficulty scaling completed during this phase.<br>
<br />
- The online updating system would also be functional, but more polishing is needed.<br>
<br />
<br />
Links to main features:<br>
<br />
• Scoretracking<br>
<br />
• AutoDifficultyScale<br>
<br />
• Difficulty selection system<br>
<br />
• MiniGames (Clock Game, Mirror Game, Money Counting Game)<br>
<br />
<br />
<br />
5.3 Version 3:<br>
<br />
The program will be fully functional, and all interfaces will be altered to appeal to Grade 2/3 students. The game images and buttons would all be adjusted<br>
for Grade 2/3 students to use, and all games would be balanced to fit the correct math levels. The graph for student growth in the Scoretracking system<br>
would also be complete.<br>
<br />
<br />
Links to main features:<br>
<br />
• Scoretracking<br>
<br />
<br />
<br />
<br />
6 Revision History:<br>
<br />
<br />
Version 1.0<br>
<br />
<br />
February 5, 2010<br>
<br />
- Design Document first created<br>
<br />
<br />
February 8, 2010<br>
<br />
- Technical and Ethical Guidelines were revised<br>
<br />
- Decided on File formats to be used within the game program<br>
<br />
- State machine diagram added<br>
<br />
- UML and Structural Diagrams added.<br>
<br />
- Feature Priority revised.<br>
<br />
- Main feature of each version of the game is decided upon.<br>
<br />
- Google Code chosen to be coding repository<br>
<br />
<br />
February 10, 2010<br>
<br />
- Grammar and paragraphs revised.<br>
<br />
- Backup and commenting formats are decided upon.<br>
<br />
- State machine diagram revised<br>
<br />
- Design Document version 1 handed in.<br>
<br />
<br />
Version 1.1<br>
<br />
<br />
March 11, 2010<br>
<br />
- Table of Contents changed to better layout<br>
<br />
- Revision history added to document<br>
<br />
- Grammar and sentences is revised for more professional design<br>
<br />
- Updated feature priority<br>
<br />
- Added Database information<br>
<br />
- Added Framework information<br>
<br />
<br />
Version 2.0<br>
<br />
<br />
March 28, 2010<br>
<br />
- Modified Framework information<br>
<br />
- Cleaned up data format and XML formats<br>
<br />
- Cleaned up Table of Contents<br>
<br />
- Updated data formats<br>
<br />
<br />
<br />
Version 2.1<br>
<br />
<br />
March 29, 2010<br>
<br />
- Modified File format, data storage, and data storage information.<br>
<br />
- Modified device programming language.<br>
<br />
<br />
Version 3.0<br>
<br />
<br />
March 31, 2010<br>
<br />
- Updated Framework information<br>
<br />
<br />
April 05, 2010<br>
<br />
- Updated State Machine Diagram<br>
<br />
</div>