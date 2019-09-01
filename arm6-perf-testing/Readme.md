![ffretv](/ffretv.png)


The rpi zero build/arm6 still isnt ready yet, its too slow for HD, works okay for SD,except the startup time is
too slow.Buffers in mythv somehow interfering? OMXplayer with much lower overhead can play just about anything directy to GPU, including the same files mythtv itself can not playback on the arm6 because too slow. It is not just the OSD either, brcm eglfs/opengles2 is working for that and does prove itself to be superior to threads and softblend(on low cpu power devices like the low end arms).

*At lower resolutions <720p. I think a a lot of the the problems may be related to the audio processing and stability. Something is really bottlenecked, I need to narrow it down to address it. I should test ffmpeg (same version 4.1.1) with my own matched build(-mythtv libs) and see how the command line rpi-omx driver along with the ffmpeg hw components work in comparison to mythtv. Obv I expect mythtv to have a lot more baggage with the glue from QT and its libs added along with whatever else is linked in at build time. However,if the ffmpeg cmd line tools work perfect on a mythtv created .ts/mp4 then I have some detective work to do in mythtv on this subject with regards to the arm6 and pizero builds.* 



*The good news is by experience building such a tuned myth version for arm6 incidently I have now made a much faster next level hardware tuned armv7-a for the rpi2v1.1. That little quad cpu board with the armv7a and neon-vfpv3 combination can now itself do just about all LEVELS of decoding with good performance. The 1080p@60hz output option is still difficult for the rpi2 or therpi3 for that matter.*

*Regarding that,for those needing wireless use, 1080x in any form from typical mythtv sources is generally too much data trasnmission, I recommend only using 720p max for the output resolution option on wireless connected frontends. Perhaps if I had used a high end wireless router I could recommend different, but I doubt it. I think it would take mobile mp4 profile media sources and the new wireless to be stable with this.*

*I've dealt with mythtv of serveral years now and its been my experience that adding ANY latency to the livetv/recording chain will cause instability fast. Keeping all the converted bits moving fast enought from a uncompressed US ATSC source itself is a challenge already in livetv mode, adding more pixels(1080) is just asking for problems.*

*Furthermore, If you have hardware mp4 at your source, the little pi's will work much better if you use lower profiles on higher resolutions. EG. IF your HDHR Transcode is set to HEAVY, can result in wee lil slow pi. 
If your HDHR Transcode options are set to mobile or lower, you will have wee lil pi effeciency, resulting better display output,playback.*

**Back to my main point, the rpi2 will be ffretv-nox ready soon with fixes/29, the pizeros are not READY to spin a build.**


![1](./IMG_2396.jpg)

**I'm going to speculate here that without extreme optimizations on the pizeros, it will not work well, not enough raspberries
at high enough a rate :)** 
Translation for the less creative: 1 core rpi too slow at even oc'd 1.1Ghz speeds. That being said, if you really want it to work fast&easy, I'm sure if immersed in gaseous nitrogen(NO NOT PLASMA*1) oc'd at 1.5Ghz , it would then work, until something cracks and busts :)

I was thinking again, I know its a bad habit to some, but I enjoy it! So , you could use the rpizero as a low power backend and use mythtv and omxplayer along with cp's mythlink.pl. I've used it in the past to make nice labeled links that i could browse then on my phone. Back to point, you can use it with mythvideo to make some viewable links for then alternate player. Omxplayer would be configured as the alternate player. 
No application with video output except maybe some custom Direct dispmanx diver... can beat Omxplayer on the RPI.
If it is in a supported format omxplayer supports it will damn will play whatever you throw at it generally speaking.
Its got all the bells and whistles as old mplayer, which is still around I know, but since omxplayer is really ffmpeg
for omx-pri I think its still got the backend advantage. FFmpeg is the cats meow for like 18 years or so now. Everybody wishes they had the skills that it took to write such a brilliant peice of work when in reality most people have a hard time even configuring the a build, but thats just because its picky and very complicated, not too unlike a qt build in that way.

That reminds me since I'm going to build a test build off ffmpeg tuned for rpi to compare against mythtv for performance reasons, is that not just like me making my own oxmplayer? It doesnt need any improvement, or at least if it does, its not bothering me. i use omxplayer to view camera screens 24/7 with RPI2's and they work flawless.
I dubbed that idea omxplayercamview, its not anything special what i did, it was just a functional thing that i needed.
Here's where I combined it with raspbian if your interested in trying it out. Just be warned I havent updated it in over a year, because i dont need to. I run apt-get updates on the pi's adn they just keep on working though new debian,i mean raspbian releases like no tomorrow. They made more of a debian/raspbian user out of me its quite more fun with debian anyway, redhat guys got more sticks in places than even I can handle way too often anyway, and they you joined with OLE BLUE, well good for you ole raleigh boys. My skills from redhat wont change with IBM but I can develop faster with debian/raspbian on debian. 

You never know, next week I might wipe my hard drive and change all my rpm based servers over to debian/raspbian.
The little RPI4 can compile qt5 in my configurations natively in a reasonable time, with the older pi, it took days and longer. Many reasons for me to switch to debian full on anyway. Redhat is for admins and the likes most often, and to be honest they dont know jack about the  real plumbing of linux as debian people anyway.

So yes debian people like it or not, im in your boat now, probably till my end too. I've learned to really like building on it because its so fast. 
Redhat rpm building is so structured, complicated and slow. I can do it fine, but debian is more fun.

https://github.com/kelsieflynn/omxplayercamview.serviceWith-motioneye-raspbian-lite


Then you can record and use the mythtv/ffretv interface but for playback use mythvideo and you can have delayed livetv that way with a little work. 

![2](./IMG_2408.jpg)



![3](./IMG_2410.jpg)



1)https://www.quora.com/Is-nitrogen-a-conductor-of-electricity
