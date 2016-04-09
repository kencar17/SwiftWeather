#SwiftWeather

SwiftWeather  is an iOS weather app developed in Swift 2. 

## Install Instructions That worked for me.

  Once I decided to work on this application I forked the project into a repo in under my account, and then
cloned the project down to my local machine to begin working on it.

###These are the steps I took to get the project to work on my machine:

- Step One: Clone the project down to my machine via command line. The following screen shot illustrates
             the pod cloning of the repo down to my machine.

![Cloning Screen Shot](clone.png)

- Step Two: Next I cd in SwiftWeather, and had to do a pod install to install the necessary dependencies. The 
            following screen shot illustrates thr pod install. 

![Pod Install Screen Shot](podIntall.png)

- Step Three: Now I had to cd  into "SwiftWeather.xcworkspace", and make a directory called .access_tokens and 
              echo in an appID. To get the appId I had to sign up on [openweathermap.org/appid](http://openweathermap.org/appid. The first screen shot shows the appId i got and the
              screen shot is echoing it into the file.
![AppID Screen Shot](AppID.png)
![echo appid Screen Shot](echoId.png)


- Step Four: Now I was able to complie and run the app on the simulator, but one thing I had to do was change the
            location in the simulator -> debug -> location. At this point I was able to get the app to run on my
            machine.

- Step Five: I decided at this point to take it a step further and make a archive and then with that archive make
            a .ipa file so that I can test the app on my Iphone.

![Archive Screen Shot](archive.png)
![ipa File Screen Shot](ipa6s.png)

- In summary i was able to install the project, get it to work on my machine in the simulator, and then I took it
  a step further and made an archive and .ipa to try the app on my phone. In the test I did on my phone the app worked
  fine and did what it was suppose to do, but i did notice that the app would sometimes show St. Albert weather instead
  of Edmontons weather.
