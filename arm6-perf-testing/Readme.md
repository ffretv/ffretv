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



I was thinking again, I know its a bad habit but I enjoy it! So , you could use the rpizero as a low power backend
and use mythtv and omxplayer along with cp's mythlink.pl. I've used it in the past to make nice labeled links that i could browse then on my phone. Back to point, you can use it with mythvideo as an alternate player and use omxplayer as the alternate player. Then you can record and use the mythtv/ffretv interface but for playback use mythvideo and you can have delayed livetv that way with a little work. The cool thing is the SD cards for 100G have come down in price and still are going down as the larger capacities come out. Sure they are going to wear out but you can use them for several years by using XFS and always keep reserved space so when errors occur the firmware can move data out of bad blocks to the end of the drive, (IF YOU HAVE SPACE). Just replace them when you need. Make daily rysnc backups to another server and then you have very low downtime. Keep in mind this setup could likely on server 1-2 users max, the 2
could be too much if it was hd and sketchy wireless.



![1](./IMG_2396.jpg)

**I'm going to speculate here that without extreme optimizations on the pizeros, it will not work well, not enough raspberries
at high enough a rate :)** 
Translation for the less creative: 1 core rpi too slow at even oc'd 1.1Ghz speeds. That being said, if you really want it to work fast&easy, I'm sure if immersed in gaseous nitrogen(NO NOT PLASMA*1) oc'd at 1.5Ghz , it would then work, until something cracks and busts :)

![2](./IMG_2408.jpg)



![3](./IMG_2410.jpg)



1)https://www.quora.com/Is-nitrogen-a-conductor-of-electricity
