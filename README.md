# DevOps Final Project

## Author
- Albert Richards
- Bradley Dobson
- Inaam Islam
- Umayr Ahmed
- Zahra Ahmed

### Links
- [Trello](https://trello.com/b/Puwzu6nB/final-project)

## Contents
- [Brief](#brief)
    - [Requirements](#reqs)
- [Project Planning](#building)
    - [Trello Board](#planning)
    - [Collaboration](#services)
- [Architecture](#arch)
    - [Infrastructure](#cla)
- [Risk Assessment](#risks)
    - [Initial Risk Assessment](#initial)
    - [Final Risk Assessment](#finalra)
- [Technologies utilised](#tech)
    - [Reasons for using these Technologies](#reasons)
- [Things that went well](#suc)
- [Areas for improvement ](#improve)
- [Github links](#gitlink)

<a name="brief"></a>
## Brief

The brief for the DevOps Final Project is to deploy an application for a 'Spring Pet Clinic’ domain where we have a front end client using AngularJS and an API using Java.

<a name="reqs"></a>
### Requirements 

The requirements of the project, retrieved from the [QA-Community website](https://qa-community.co.uk/~/_/projects/final--devops) are as follows:

You will need to plan, design and implement a solution for automating the development workflows and deployments of this application. As part of your final deliverable you will need to discuss the project in a presentation and demonstrate these workflows

Using what you have learned consider the following:

-What tools will work for you best? For example: Terraform, Kubernetes, Ansible etc. There is no restrictions or requirements on which ones to use; you should decide which you feel are most appropriate and justify their use

-Multiple Environment support: How can a developer test their new features on an environment before merging their changes to the main branch?

-How can changes on the GitHub repository automatically build and deploy to testing and live environments?

-Running costs. What are your monthly estimates? How could they be improved?

<a name="building"></a>
### Project Planning
In order to fulfill the requirements of the project, we chose to deploy the application via the use of Terraform, Kubernetes, Jenkins and Docker as well as using Amazon Web Services as our cloud provider

<a name="planning"></a>
### Trello Board

The project planning was done through a Trello board. This consists of a Backlog, sprint, MOSCOW order of prioritisation as well as items to check on completion. Updates were made to this board constantly throughout development. 

<img width="960" alt="Trello" src="https://user-images.githubusercontent.com/84901993/128853141-0da1eb48-14b7-4497-91bf-ff4c2681003a.PNG">



<a name="services"></a>
### Collaboration

This was the first group project that we had attempted, so we tried to combine all of our knowledge and skills that we had gained so far in order to work together effectively. We used a [shared Github repository](https://github.com/BluDobson/project-3) that was created by Bradley Dobson, who then invited all of the other team members to become collaborators.

<a name="arch"></a>
## Architecture

<a name="cla"></a>
### Infrastructure
Shown below is a diagram of the Infrastructure we aimed to achieve:

![project](https://user-images.githubusercontent.com/84901993/128856042-b2d79c13-e9f6-4b02-bff1-86f103de27de.png)


<a name="ci"></a>


<a name=risks></a>
## Risk Assessment

For the risk assessments we produced an initial risk assessment that was created before we attempted to complete the project. Upon completion of the project we then went back to the initial assessment to review it and create our final risk assessment.
<a name=initial></a>
### Initial Risk Assessment
Below is a snapshot of part of our initial Risk Assessment:

<img width="880" alt="Initial RA" src="https://user-images.githubusercontent.com/84901993/128882342-e745abb0-72a4-4e62-8102-acbb933ad867.PNG">

The full Risk Assessment can be found on the [Github Repository](https://github.com/BluDobson/project-3) for this project.
<a name=finalra></a>
### Final Risk Assessment

Below is a snapshot of part of our final Risk Assessment:


The full Risk Assessment can be found on the [Github Repository](https://github.com/BluDobson/project-3) for this project.


<a name="tech"></a>
## Technologies Utilised

* Project Tracking: Trello
* Version Control System: Git(Github)
* Cloud Service: Amazon Web Services
* Containerization: Docker
* Version Control for Docker Images: Dockerhub
* Continous Intergration Server: Jenkins
* Orchestration Service for Containers: Kubernetes
* Load Balancing: Nginx

<a name=reasons></a>
### Reasons for using these Technologies

#### Trello
When it came to deciding which service we should use for our Kanban Board, the group agreed that Trello would undoubtedly be the best choice. This is because of Trellos ease of use and that each team member has the most experience with Trello over any other type of Kanban board. Trello also makes collaboration with others very straightforward.

#### Git(Github)
We decided to use Git as our VCS due to Git being the most popular VCS and it is also the VCS that we had the most experience with as a group. We chose to use Github due to its ability to allow seamless collaboration without compromising the integrity of the original project.

#### Amazon Web Services
We used AWS as our cloud provider to help increase our knowledge of AWS and the tools it provides. Although the team had more experience with using Google Cloud Platform, we still had some knowledge of AWS. We felt as though we should use AWS to help advance our comprehension of AWS and take advantage of the services it has to offer. We had also not used AWS in project work prior to this and we felt as though we had the confidence to challenge ourselves. The AWS services also seemed to be tailored better to fit our project aim. All of these things contributed to our decision to use AWS.

#### Docker
Docker is the container service that we chose to use for this project. As a group, we decided that it would be best for us to use Docker as we all had experience with the service from our previous projects. That coupled with the fact that Docker is the industry leading service for containerization and its rapid deployment process is why we opted to use Docker.

#### Dockerhub
The decision to use Dockerhub as the repository for our container images was a fairly simple one. We chose to use Dockerhub as all of the team members had an account and it was also the only version control for Docker images that we had experience with at this current time. 

#### Jenkins
Jenkins is the Continous Intergration Server that we decided to use for this project. We decided to use Jenkins due to our experience with the software, the fact that it is free to use and it is also easy to modify. The automatic build feature was also taken into consideration when we opted for the use of Jenkins. 

#### Kubernetes
The container orchestration service that we selected to use for this project was Kubernetes. We decided on Kubernetes due to its easy scalability and realiabilty. We had also not used Kubernetes in previous projects and felt that it would be good to attempt its use in this project.

#### NGINX
We used NGINX as our load balancer due to the teams previous expirience with using this software as well as the fact that it is simple to use, yet is still powerful.



<a name="suc"></a>
## Things that went well 

### Teamwork
We collaborated well on this project considering it was the first project that any of the team members had participated in that involved working in a team. We managed to stick to our given roles whilst distrubing the workload in a tactical manner that allied with the teams goals.

### Good Communication
Throughout the project we maintained a good level of communication, which was vital to the project being successful. Each team member knew about the current position of the team as a whole and there was no long periods of time in which we were not productive due to the fact that we kept the communication in the team constant throughout the length of the project.

### Terraforms
We were able to utilise Terraform quite early in our project timeline which allowed us to create, update and destroy subnets, security groups and EC2 instances quickly and efficiently. This was a success due to the fact that we were able to implement it quickly and that we ran into a limited number of issues whilst attempting to get Terraforms to work.

<a name="improve"></a>
## Areas for improvement:
### Familiarity with the resources used
One area for improvement would be how familiar we were with certain resources used in the project. Although we had some experience of all of the resources used, some of the resources were more difficult to understand as we had not used them on this level before. This meant that some project time was spent researching and learning how these resources could be used for our intended purposes. One thing that was positive about this issue is that each team member had a different level of understanding for each resource, and due to good communication we were able to use this to our advantage as the team members would undertake tasks that involve the resources that they have a greater understanding of.


<a name="gitlink"></a>
## Github Links
- [Albert Richards](https://github.com/Albert-Richards)
- [Bradley Dobson](https://github.com/BluDobson)
- [Inaam Islam](https://github.com/InaamIslam)
- [Umayr Ahmed](https://github.com/Umayr12)
- [Zahra Ahmed](https://github.com/ZahraAhmed1)
