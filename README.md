![ffretv](/ffretv.png)

Buh Bye Redhat! Hello Debian.

After over 20+ years using some form of RPM based desktop, its OVER. I might still use it as a server some, we'll see. Debian makes a pretty sweet server and always has as well. In the olden old days, debian didnt always have all that redhat has purchased and communitized. That was the past now for a long time. I can get every single thing i want from REDHAT now 
and still use Debian. You might think you know something I dont about that statement, but I doubt it. If I want to run even a redhat kernel on debian, i can and will if I wanted, but dont. If I wanted full selinux, its on debian.
While redhat is a stalwart, I'm totally BORED WITH IT. As far as a pre-rolled distro goes, Debian fits the bill for the rest of my life, redhat does not.



 Though not a stranger to me, I've enjoyed working with debian more exclusively on the desktop.
 So, I have switched to debian and the Debian Way for good.

It will take me some time to make debs anywhere to the level I  learned to make RPMS, but it will be fun.

---
ffretv is a fork and my personal subproject of mythtv that focuses on free tv or over the air tv support; as such, tuner type input device support will be fairly limited to "Digital terrestrial television"*1).

ffretv will have limited plugins as well with no web browser such as mythbrower. QtWebkit support has been removed and anything depending on it may not work in these builds. TBD.

arch support will be x86_64 and arm/aarch64. 

I will reimport upstream changes as needed, with a high priority on bugs that affect this build first, with features coming later. 
According to history*2) mythtv all along has been following the philosophy loyally of the original creator. Making a mythical convergence box into reality. I have nothing against mythtv proper at all in modern times, they do a lot. If upstream didnt exist I could have never created this lessor capable yet more free version. In the past I have had issues with them for ignoring somethings I felt important but its been 5 years since that, and most all those have been addressed since.
I like mythtv upstream I just had the desire to have something less of an attempt at a full "convergence box", I'm going for more of the free limited version of a OTA DVR.  Seems every other company on the planet has a dvr now, so why not. I wanted this before, it just took me some time.


What's currently going on with my branches?

I have limited branches to maintain here:
I play around with master/0.31pre but mostly my projects are just now moving to 0.29 Fixes.
This is where I forked with regards to 29.X
```
MythTV Version : v29.1
Network Protocol : 91
Library API : 29.20180316-1
```
for Master its 31-pre with Lib API:
```
31.20190109-1
```

*All my 0.28 projects are now DEPRECATED! While you may use them, I will rarely update them as 29.1 has a better feature set now with ffretv. A new setup introduced in 2016 allowed me to apply my "No WebKit" updated perfect. The new setup included a new method to pull progdetails instead of depending on mythbrowser. That solved a problem in the future a LOT.  Thanks to upstream makes 29.X enough reason to move
to 29.1+. So far I dont see a downside.

*Once I get the basic setup here like I want it, I will start bringing in and testing my other projects. I will create them respectivaly as branches here.* 
Git Commentary:
*I can already tell now that I'm serious about learning the full git system, this is going to save me a huge amount of data and time in the future. It's a pretty sweet IDE like system, with intergrated deduplication-like storage, recovory/reverts from commits/branching and lots more, and yeah I know whom made it orginally. Still its a great setup and I'm glad to FINALLY BE using it better.*





















*1)https://en.wikipedia.org/wiki/Digital_terrestrial_television

*2)https://www.mythtv.org/wiki/User_Manual:Introduction
