## Day outline

* Lecture - learn the issues that drive the tools
* Docker 101 in one hour (fingers crossed)
* Hands on - how to deploy the same app across three different platforms
  1. Local app deploy
  2. Docker app deploy
  3. PWS app deploy

---

NOTE --> We will be installing nearly everything ourselves.  With limited bandwidth we may face delays for downloads . . . this is expected and OK.  It's more important for everyone to get an actual feel for what actually happens in devop daily ops.  This can only be done at the keyboard.

---

##Class prep on your VM
  * log into your VM via SSH -
      * PuTTY - in the hostname or IP box type <emcse@{ip adress of assigned server}
      * OSX - open a terminal windows and type ssh emcse@{ip address of assigned server} - - - ahhh the power of an actual UNIX under the hood makes me smile
      * the password is emcse

---

  * Flip over to root (bad idea in the real world - but hey this is class right?) <su root> password emcse
  * Update your server.  If we don't do this we risk getting out of date packages from apt. If you've never used a package manager your in for a real treat her folks <apt-get update && apt-get upgrade>

---

  * Install Git - more on this later <apt-get -y install git>
  * Git (yes it's a pun) the course materials - <git clone https://github.com/disconnector/devop_day.git>
  * When it finishes <ls> the directory you're in and voila! there are the course materials.  Use <ls> and <cd> to look around

---

##Class prep on your laptop
  * You do have a Github account right?
  * Open up https://github.com/disconnector/ and check out the repos.
  * Click on the "devop-day" repo
  * Click on the "Download ZIP" button and unzip the class materials somewhere convenient.
  * Of course if you already know git then cowboy up!
