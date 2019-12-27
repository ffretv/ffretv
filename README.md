![ATSC 3.0 Opinion](/ATSC3.0_Opinion.jpg)


Q.Do we have any say or choices in the matter?

A. We better have some ideas and not leave it all to UPSTREAM to develop all  kit/kabootle or we shall NOT in return COMPLAIN when they REEM us LATER!" TradeMark:Sm@rt@$$


![ATSC 3.0 Opinion-NONFREE-EXCLUSIONS-OUTSIDE-UPSTREAM-CHANNEL-ACCESS-CONTROLLS](/ATSC3.0_Opinion_NONPROFIT_EXCLUSIONS.jpg)



---





![ffretv](/ffretv.png)



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















*1)https://en.wikipedia.org/wiki/Digital_terrestrial_television

*2)https://www.mythtv.org/wiki/User_Manual:Introduction
