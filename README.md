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

The full Risk Assessment can be found on the [Github Repository](https://github.com/BluDobson/project-3) for this project.
<a name=finalra></a>
### Final Risk Assessment


<a name="tech"></a>
## Technologies Utilised

* VCS: GitHub\
* Project Tracking: Trello\
* Programming language: Python\
* Framework: Flask\
* Deployment: Gunicorn\
* Database: GCP SQL Server\
* CI Server: Jenkins\
* Test Reporting: Pytest, unittest.mock\
* Live Environment: GCP\
* Containerization: Docker\
* Configuration Management: Ansible\
* Orchestration: Docker-compose\
* Reverse proxy: Nginx\




<a name="suc"></a>
## Things that went well 

A number of things went well for me on this project:

* Microservice Apllication
    - I was able to develop the applicationa and containerise using Docker
    - I was able to deploy this as part of a swarm using Docker Compose
* Jenkins
    - I was able to build, test, deploy and configure using Jenkins
    - rolling updates were possible through webhooks and CI/CD
* Linux
    - User Administration
    - Sudoers 
    - SSH




<a name="improve"></a>
## Areas for improvement:

* NGINX -load balancer -This would have been useful but not entirley required as the Docker Swarm is able to load balance and so I decided to use NGINX as a reverse proxy only. 

* Implementing the use of JSON to increase data parsing speed, and also as part of sending data between services. 

<a name="gitlink"></a>
## Github Links
- [Albert Richards](https://github.com/Albert-Richards)
- [Bradley Dobson](https://github.com/BluDobson)
- [Inaam Islam](https://github.com/InaamIslam)
- [Umayr Ahmed](https://github.com/Umayr12)
- [Zahra Ahmed](https://github.com/ZahraAhmed1)
