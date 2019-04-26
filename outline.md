Welcome to the workshop on READMEs, Git, and Docker. We will be moving quickly through this material so we can get to hacking. If you have a question, raise your hand.

We will be covering 3 topics. Key Project Files, Git & GitHub, and Docker. The goal of this workshop is to familirize everyone with common industry tools that solve common challenges faced by teams.

This workshop requires you have a GitHub account. Git, Docker, and Docker Compose have to be installed.

Working on teams has some challenges. Onboarding team members can be time consuming and complex. Syncoronizing code across the team is hard. At past events teams have exchanged files using USB drives, this is error prone and very ineffecient. Handling multiple changes to the same files is tricky. Team mambers may be using a different operating system that may require unique setup instructions.

Our first topic is READMEs and other key project files. For members of your team to work on the project they must be able to setup the project, make changes, and confirm their changes work as expected. A description of the project, required tools, setup instructions, and other important information go in the `README`. Another important file is the LICENSE. Hack for a Cause requires that your project be submitted under an MIT license.

Ok, those files help with onboarding, but we will need to be able to syncronize our work with our team mates. This is where Version Control software comes in. Professional teams all use at least one version control tool. It solve more than the synonization problem. It allows you to group modifications, switch between groups, and track the history of all of your files. No more keeping multiple copies label draft, final, final 2, final final, etc...

Most recent projects us Git. It's very popular and has lots of information online on how to use it.

Being able to create a Git repository is helpful, but we still need a place on the internet to host our reposity so members of the team can push and pull eachothers changes. GitHub solves this issue and provides an excelent UI for reviewing changes.

Lastly Docker. Docker solves the rest of the onboarding problem and simplifies deploying your solution to the cloud. Docker is available on all major operating systems and with two configuration files developers can setup and run entire projects with only a few commands. 

Now to the fun parts. We are going to walkthrough setting up a project and make a change to it. After that, I will ask you to perform the same steps. As we go through the steps, please ask questions. It's important that you understand we are doing and that the steps makes sense to you.

First, after logging in to GitHub you will need to visit the repository for this workshop. Don't worry about the URL right now, it will be on the last slide. At that GitHub page, we fork the project. Creating our own copy of the repository on our GitHub account.

Next we open the command line and we run `git clone` followed by the URI for your fork. Git will download the repository to your local machine and save in a directory named after the repository. Then we enter that directory.

You can get the URI for you fork by clicking the green "Clone or download" button and copying the URI.

Next we start the service by running `docker-compose up`. This will download and setup the service as defined in the Dockerfile. It will also launch any additional dependencies defined in the `docker-compose.yaml` file. At this point you can access the service on your machine at localhost:8080. And you should see these slides, which you can use to help you with the remaining steps.

In another command line window, we go back to the repository and create a branch. A branch allows us to work on changes and still maintain a clean copy of our project in case we need it. Once we create the branch, we check it out - which switches us from the master branch. 

Now we make changes. In this workshop we will be adding our names to the README. Using your prefered editor, navigate to the reposotory and add your name to the bottom of the file. 

We can check the status of our repository with `git status`. We can see that we have an uncommited change to the README.

Next we use `git add` to stage the change so that will be included in the next commit. Then we create that commit with `git commit`. Make sure to notice the dash m and the message we are attaching to the commit.

We've made a commit to our local repository. We want to share these changes and get them merged in to the central repository. To do that we have to push our change to the fork. We do that with `git push`. Make sure to pay attention to the output of this command as it may ask you do perform an additional step. One pushed you can look at GitHub and you should see the new branch.

TO get the change merged in to the central repository, create a Pull request against the central repository. And submit it. I will review and approve everyone's pull requests. Once approved you update your repository's master branch. And we are done.

Questions? Ready?

Ok, now it's you turn. Go to the central repository for the workshop and perform the tasks in the README. If you have questions or get stuck raise your hand I will help you.












