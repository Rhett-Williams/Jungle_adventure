Git: https://github.com/Rhett-Williams/Jungle_adventure.git

Software Development Plan:
- The program which I will be developing will be a text based RPG game. The game will involve navigating around a grid with 4 optional directions. The 4 directions will be based off "x" and "y" coordinates. For example, going North will update the "y" coordinate +1, and going south will update the "y" coordinate -1. The objective of the game is to get to a certain set of coordinates unknown to the player. The player will also choose from a set of 3 different characters with differing stats. These stats will be prevalent when navigating around the map as there is a set of randomly generating interactable elements which the player will need to interact with. These elements are part of an array which is randomly selected upon reaching a new coordinate. The interactable element will then have a set function which is executed upon being selected. These functions relat to the previously mentioned stats of the characters and the elements. Results of the comparison of the stats will give a corresding text based response and either reward or punish the player. The player can also end the game by reaching a health value of 0.
- The problem it will solve is boredom and depression. I will be developing it in an attempt to give the player a sense of excitement and adventure in their life.
- The target audience will be the regular gaming community, however, it could be anyone. It will be predominantly player by people aged 15 - 35.
- A member of this target audience will be able to download the game and play it on any computer.

List of features:
- The first feature is the map and map navigation which is based around the manipulation of two variables which act as the 'x' and 'y' axis.
- There are many if loops throughout the program. The most prevalent example is during the map navigation sequence in which it uses if loops to determine the direction of movement. for example, if the user input is North, + 1 y. elsif user input is East, + 1 x...
- The application does not have th possibility for errors. It is set up in a way in which there is a finite list of input options, with each option having a certain function which is carried out and not a dynamic response recieving system. Therefore, if there were errors, it would be based around the setup of the function and will (hopefully) not be present during the final version.

User interaction:
- The UI/UX for the application will be very simple as it is a terminal app. There will be a defaulted messaged at the start which briefly explains to type in the answer followed by 'Enter' but apart from that the application will be very self explanatory.
- The user will interact with each element when prompted and a specific time. They will be made aware with text.
- Once again, there shouldnt be a possibility for any errors.

Control flow diagram can be found in the slide deck