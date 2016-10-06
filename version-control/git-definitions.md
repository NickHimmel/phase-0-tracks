# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

    Version control is a time machine, like the Doctor’s Tardis. It is the ultimate undo. Version control is software that keeps track of your code as you work. If you commit early and often version control will keep a history of what you have done. It allows you to go back to earlier versions to compare or fix mistakes. Git is an example of version control software. It provides a framework to manage your code. Vcs also makes sharing code easy. It is a great tool for working with a lot of people on a large code base. Such software allows different people to work on different parts of the same code and then merge them back in. Managing work and locating bugs is much easier with vcs as you have a history and logs of what has been done. 

* What is a branch and why would you use one?

    If you are working on a large project with other developers, you don’t want to have to wait for somebody else to finish working before you get started. You don’t want to work on something then find it overlaps with something somebody else has done, you don’t want to have to rewrite both pieces so they work together. When adding features to a project it is better to work on that feature separate from the base. A branch is when you create your own track that branches off from the main one and can later be easily merged back in. If you had two train stations, but you could only have one track, only one train could run at a time. If you built more tracks that curved off that main railway and then merged back you could run multiple trains at a time. You can work independently of the main project, risk making mistakes or generating bugs, which then can be fixed when adding your work back in. A lot of people can work on the same codebase, then have all of their changes fit seamless back together. 

* What is a commit? What makes a good commit message?

    A commit is the feature that allows you to keep track of your progress. You commit changes with a message, which generates an annotated history of your process. After you commit changes you can return to earlier commits to compare what you have done or undo those commits. A commit message should be clear and concise. Future you is not going to remember what past you has done. If you are working with a team and your work has to be merged back into the main project, other people reading your commit messages should be able to tell what you have done from those messages. If you write short strong messages you will have a clearly labelled road map of your project, you will know where you have been and how to get back if needed. 

* What is a merge conflict?

    When you are done with your side of the project you merge your track back into the source code. Merge conflicts are conflicts that come up during the merge process. Git handles most of the merge for you, but will need you to make decisions on how to hand (usually simple) conflicts that can arise. Most merge conflicts come down to you and another developer working on the same line of code, you both adding files with the same name, or if they delete something you are working on. When conflicts do happen Git will give you information on what the conflict is and where it is happening, once you decode that information. In Git, merge conflicts are not scary, you make the changes on your side of the track and those changes can be undone. 