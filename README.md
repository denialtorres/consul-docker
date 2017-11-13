Prerequisites
-------------

You should have installed Docker and Docker Compose in your machine.

The First step is to build the container

    sudo docker build -t consul .
  Then run 
  

    sudo docker-compose up -d database
   to create your application and database images.

Once built you can initialize your development DB and populate it with

    sudo docker-compose run app rake db:create
    sudo docker-compose run app rake db:migrate
    sudo docker-compose run app rake db:seed

Now we can finally run the application with


    sudo docker-compose up 

To verify the containers are up execute **sudo docker ps .** You should see output similar to this:

![enter image description here](https://i.imgur.com/ASvzXrd.png)

now you can enter to localhost:3000 

to verify that CONSUL is running 

![enter image description here](https://i.imgur.com/Fl3XOIg.png)
