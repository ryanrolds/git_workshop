
Welcome to a workshop on READMEs, Git, and Docker. We will be moving quickly through this material so we can get you hacking. If you have a question, raise your hand.

We will be covering 3 topics. Key Project Files, Git & GitHub, and Docker. The goal of this workshop is to familirize everyone with common industry tools solve common challenges faced by teams.

This workshop requires you have a GitHub account. Git, Docker, and Docker Compose have to be installed installed.

Working on teams has some challenges. Onboarding team members can be time consuming and complex. Syncoronizing code across the team is hard. In the past teams have exchanged files using USB drives, this is error prone and very ineffecient. Handling multiple changes to the same files is tricky. Team mambers may be using a different operating system and may require unique setup instructions.

Our first topic is README and other key project files. For members of your team to work on the project they must be able to setup the project, make changes, and confirm their changes work as expect. A description of the project, required tools, setup instructions, and other important information go in the `README`. Other important files are the LICENSE and if it's a big project a CONTRIBUTING file, don't worry about the the CONTRIBUTING file. Hack for a Cause does require that you project use an MIT license.

Ok, those files help with onboarding, but we will need to be able to syncronize our work with our team mates. This is where Version Control software comes in. Professional teams all use at least one version control tool. It solve more than the synonization problem. It allows you to group modifications, switch between groups, and track the history of all of your files. No more keeping multiple copies label draft, final, final 2, final final, etc...

Most recent projects us Git. It's very popular and has lots of information online on how to use it.

Being able to create a Git repository is helpful, but we still need a place on the internet to host our reposity so members of the team can push and pull eachothers changes. GitHub solves this issue and provides an excelent UI for reviewing changes.

Lastly Docker. Docker solves the rest of the onboarding problem and simplifies deploying your solution. Docker is available on all major operating systems and setting up to configuration files developers can setup and run entire projects with only a few commands. 

Now to the fun parts. We are going to walkthrough setting up a project. In this example a service that can host these slides. After that, I will ask you to perform the same steps. As we go through the steps, please ask questions. It's important that what we are doing and what makes sense to you.

First, after logging in to GitHub you will need to visit the repository for this workshop. Don't worry about the URL right now, it will be on the last slide. At that GitHub page, we fork the project. Creating you're own copy of the repository on your GitHub account.

Next we open the command line and we run `git clone` followed by the URI for your fork. Git will download the repository to your local machine and save in a directory named after the repository. TThen we enter that directory.

You can get the URI for you fork by clicking the green "Clone or download" button and copying the URI.

Next we start the service by running `docker-compose up`. This will download and setup the service as defined in the Dockerfile. It will also launch any additional dependencies defined in the `docker-compose.yaml` file. At this point you can access the service on your machine at localhost:8080.

In another command line window, we go back to the repository and create a branch. A branch allows us to work on changes and still maintain a clean up of our project incase we need it. Once we create the branch, we check it out - which switches us from the master/default branch. 

Now we make changes. In this workshop we will be adding our names to the README. Using you're prefered edit, navigate to the reposotory and add your name. 

We can check the status of our repository with `git status`. We can see that we have an uncommited change to the README.

Next we use `git add` to stage the change in the README so that will be in the next commit. Then we create that commit with `git commit`. Make sure to notice the dash m and the message we are attaching to the commit.

Ok, we've made a commit to our local repository. We want to share these changes and get them merged in to the central (my) repository. To do that we have to push our change to the fork. We do that with `git push`. Make sure to pay attention to the output of this command as it may ask you do perform an additional step. One pushed you can look at GitHub and you should see the new branch.

TO get the change merged in to the central repository, create a Pull request against the central repository. And submit it. I will review and approve everyone's pull requests. Once approved you update your repository's master branch. And we are done.

Questions? Ready?

Ok, now it's you turn. Go to the central repository for the workshop and perform the tasks in the README. If you have questions or get stuck raise your hand I will come help you.












