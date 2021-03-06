#Part 2 - hands on app deploy

---
##Deploying an app the old school way
  * This is all done on your Linux VM.  Make sure you're <su root>.  Otherwise add <sudo> to every command
  * Install dependencies
    * we're making this easy ok?
    * Install python packaging tool  - keep an eye out for dependacies!

```bash
apt-get install python-pip
```

Sheesh  -that's lots of dependencies!

---
##Install Flask framework

```bash
pip install flask
```

Even more dependancies - and every one has a version number <shiver>

---

##Get code from github
  You already have this right?

---

##Examine and update code
  * cd to devop_day/local_code
  * Notice this is very simple - just one Python script that calls one framework
  * Open hello-python.py in a text editor and change the {myname="Rich Barlow"} line to be your name

---

##Run the code
  * While in the directory that contains the "hello-python.py" code, type <python hello-python.py>
  * You should see lines of code scroll by with the final line looking something like:
    <Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)>  If not please let me know  . . .
See it running
      * open your web browswer and got to http://{ip address of VM}:5000

---

##Old school = uncool

  Why is this hard?
    * Dependencies from hell
    * Versioning
    * What happens as the code AND the infrastructure get updated?
    * How much time does it take to build a server?  Errors?  Ouch

---
#[fit]Deploying an app via Docker
---
##Build container
  * cd into /devop_day/docker

  ```bash
  nano Dockerfile
  ```

  The Dockerfile defines the specific comtainer
  Only the needed layers are downloaded

  ```bash
  docker build -t simple_local_app .
  ```

  * This will build a local container that we can run later

---
##Run container
  * run <docker images> to see if the container "simple_local_app" has been created

Now let's start up an instance of the container:

  ```bash
  docker run -it -p 5000:5000 --name container_instance simple_local_app
  ```

---

##See it running!
  * Open a web browser and go to http://{ip address of VM}:5000

---

##Clean up a bit for next part
  * type <docker ps> to see running containers
  * Type <docker kill {container name}> to free up port 5000

---

##Deploying a pre-built Docker container

Pull down a simple container that I have out at Docker Hub

```bash
docker pull disconnector/devop_day>
```
---
##Spin up a running container
```bash
docker run -it -p 5000:5000 --name simple_remote_app disconnector/devop_day
```

Watch as it spins up . . .
Open a web browser and go to http://{ip address of VM}:5000 . . .

That's a nice eggplant color isn't it?

---

##Clean up

Type <docker ps> to see running containers
Use <docker kill {container id}> to kill anything running

---
#[fit]Deploying an app via PWS/PCF
---
##Getting Ready
Be sure you've Git cloned the class repo to your laptop as in the class prep

Download the PWS toolset
  * Go to https://console.run.pivotal.io/tools and download the correct version for your local OS
  * Install it.  Duh


----
##Connect to PWS

```bash
cf login -a https://api.run.pivotal.io>  
Enter Username and password
```

Examine the output - you should be in the "EVP" org and "EMC" space.  If not please speak up.
type <cf help> for a list of commands

---
##Examine files
Open local code under cf in git download
    * _hello-idiomatic.py_ - main code we are running on the back end.  Replace my name with yours.
    * _templates/index.html_ - rendered webpage that reads variables from code.  Remember code-behind pages in ASP.net?  HAHAHAHAHAAA
    * _mainfest.yml_ - (YAML file - data oriented markup language) - settings for the "push".  Replace the ${random-word} with your last name and year of birth.  hello-python-barlow70 for example
    * _requirements.txt_ - what are the required frameworks for the code

---

##Run Code
```bash
cf push
```

Watch your app magically appear
Note the name of the app - when it finished deploying open a webbrowser and go to http://{name of app}.cfapps.io to see the results

---
# [fit] Profit!
---
##Clean up
      * Open PWS console page (https://console.run.pivotal.io) and log in.
      * Check out your running app!
      * Click the far right arrow for details
      * When done - stop your app and delete it
