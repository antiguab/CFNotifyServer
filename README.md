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

***INSERT PICTURE HERE***

##API

###get 'users/search/:name'
####Description
Given a userid, this will return the user object in the rail db.

####Example

|     Get Call         |      Response        |
| ------------ | ------------ |
| ***http://cfnotifyserver-bantigua.rhcloud.com/users/search/admin*** | ```{"id":1,"name":"admin","password":"smartvm","created_at":"2014-10-26T20:58:26.256Z","updated_at":"2014-10-26T20:58:26.256Z"}``` |

###get 'requests/search/:cfid'
####Description
Given a cfid, this will return the request object from the rails db.

####Example

|     Get Call         |      Response        |
| ------------ | ------------ |
| ***http://cfnotifyserver-bantigua.rhcloud.com/requests/search/10000000000025***| ```{"id":5,"cfid":"10000000000025","user_id":1,"created_at":"2014-10-27T05:16:01.266Z","updated_at":"2014-10-27T05:16:01.266Z"}``` |

###get 'statuses/search/:requestid'
####Description
Given a requestid, this will return the status updates for that request from the rails db.

####Example

|     Get Call         |      Response        |
| ------------ | ------------ |
| ***http://cfnotifyserver-bantigua.rhcloud.com/requests/search/10000000000025***| ```{"id":5,"cfid":"10000000000025","user_id":1,"created_at":"2014-10-27T05:16:01.266Z","updated_at":"2014-10-27T05:16:01.266Z"}``` |










  get 'statuses/search/:requestid' => 'statuses#getStatusWithRequestId'
  post 'notify/index' => 'notify#index'


##Contribute

This rails app is at: [http://cfnotifyserver-bantigua.rhcloud.com/](http://cfnotifyserver-bantigua.rhcloud.com/)

To be added as a contributor to the Openshift App contact: [Bryan](mailto:bantigua@redhat.com)

To push to OS add the following remote repo to the repo:

```
git remote add openshift ssh://548f50d9fcf933dad4000037@cfnotifyserver-bantigua.rhcloud.com/~/git/cfnotifyserver.git
```