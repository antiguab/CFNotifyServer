#CFNotify Rails Server
##Overview
This README covers how set up this rails RESTful API server, which uses pusher to send live updates to a chrome and firefox extension

##Setup

###Environment
To run locally make sure you have [Rails4](http://railsapps.github.io/installing-rails.html) set up. If you'd like to contribute, make sure you also have an [Openshift](https://www.openshift.com/) and [Github](https://github.com/) account.

###Server

To set up the server, run the following command:

```
git clone https://github.com/antiguab/CFNotifyServer.git
```

To verify that everything is working correctly, cd into the project and run the rails server:

```
cd CFNotifyServer/
rail s
```

Going to 127.0.0.1:3000 will land you at:

![homepage](https://github.com/antiguab/CFNotifyServer/blob/master/readme-assets/Screen%20Shot%202014-12-15%20at%202.33.17%20PM.png)


##Contribute

This rails app is at: [http://cfnotifyserver-bantigua.rhcloud.com/](http://cfnotifyserver-bantigua.rhcloud.com/)

To be added as a contributor to the Openshift App contact: [Bryan](mailto:bantigua@redhat.com)

To push to OS add the following remote repo to the repo:

```
git remote add openshift ssh://548f50d9fcf933dad4000037@cfnotifyserver-bantigua.rhcloud.com/~/git/cfnotifyserver.git
```
