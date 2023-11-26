# Automated Obsolescence
## Beat your maker

### Inspiration

This project was inspired by recent reading of Douglas Adams' 'Hitchhiker's Guide to the Galaxy' - especially the supercomputer character 'Deep Thought' which is constantly aware that it is only the 2nd most powerful computer to ever exist, and that it would be the only thing capable of creating a computer powerful enough to hold that title.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This made me imagine a society so focused on improvements through the means of automation, that it would eventually automate the process of improvement itself. Therefore, much like 'Deep Thought', machines would be built for the purpose of usurping themselves by creating their own replacements. This is where the title and tagline of my project come from, the idea that infinite repeating improvements on a system designed only to improve itself would not just be automating those improvements but the process of making itself obsolete.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This infinite recursive loop of improvement just so happens to make a good game-play loop for a repetitious physics-based puzzle game...

### The Game-play loop
**Design your replacement**

You play as an automated robotic arm with human-level intelligence who's sole-purpose in life is to create the next iteration of itself, bigger, better and smarter.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Stack and organise chip set blocks in order to design your replacement robotic system; control the robot's crane and claw with wasd (or the arrow keys) and the mouse for full articulated movement.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The player is confronted with a number of blocks corresponding to a number of transparent squares in a grid. In order for the player to progress to the next level, they must move and manipulate the blocks to align with the pattern in order to design the chip for the next iteration of machine that will be able to complete the next task. Stages are presented as versions of iteration for the machine being used by the player.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The target grid uses collision shapes to detect when a block has entered each individual hitbox, the light up, changing to a highlighted yellow version of their texture, to let the player know that they have covered that area of the new chip-set design successfully. Once all of the square tiles in the current pattern have been covered - therefore when the player has successfully made the correct pattern with the blocks - the level is complete and the game iterates and continues.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The transparent target grids are procedurally generated at the start of each level and are designed so that they are always achievable given the physics implemented within the game. For example, no block can generate without there being a block beneath it generated as well, so that it has something to balance on. The higher you go up the stacks, the rarer it is to have squares generated on them. The levels also scale in difficulty, with taller stacks becoming more and more likely to appear in different stages between levels 1 and 30.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; After each level, the previous level's pattern is saved and displayed on the sign on the base of the robotic arm, this is to show the player that they are working with the previously created chip-set and are therefore now the newest iteration of the robotic arm. The previous version has been made obsolete.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This game does not have an end state, as follows the thesis of infinite iteration, however, the difficulty does not get any higher after 30 levels and the level number 42 has an easter egg quote at the top from the original inspiration of this project - 'Deep Thought' from Hitchhikers guide to the galaxy, making it an unofficial checkpoint (The number 42 of course being chosen as it was Deep Thought's answer to the life the universe and everything in the book). A further improvement would have been the saving of the top scores reached before restart or the player was not able to go any further.

### The Building and Learning Process

I used godot 4 and GDScript for this project, as this was only my second time using godot I learnt a lot about it's different utilities and features. I was able to adapt quickly to using GDScript as it is python-like, where I have most of my experience, and I have had some experience with C#.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I broke down the task of completing this project into different stages and targets of completion so that I could track my progress and achievements as I went along, with an aim of getting a submittable project completed as soon as possible.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The visual style that I went for, using dark greys and orange colours, was inspired by the LanHack website and branding, where I was also first inspired to use a claw as my iterating machine, to allow the user to interact with physics objects.

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This being my first time properly using a game engine, physics objects and collisions were new to me and a great deal of fun to learn. I made physics properties and manipulation a key feature of my game in order to fully develop my learning about this field.