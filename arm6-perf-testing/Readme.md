The rpi zero build/arm6 still isnt ready yet, its too slow for HD, works okay for SD,except the startup time is
too slow.
Buffers in mythv somehow interfering? OMXplayer with much lower overhead can play just about anything directy to GPU, including the
same files mythtv itself can not playback on the arm6 because too slow. It is not just the OSD either, brcm eglfs/opengles2 is working
for that and does prove itself to be superior to threads and softblend(on low cpu power devices like the low end arms).
I alot of the the problem may be related to the audio processing and stability. Something is really bottlenecked, I need to narrow it
down to address it. I should test ffmpeg (same version 4.1.1) with my own matched build(-mythtv libs) and see how the
command line rpi-omx driver along with the ffmpeg hw components work in comparison to mythtv. Obv I expect mythtv to have
a lot more baggage with the glue from QT and its libs added along with whatever else is linked in at build time. However,
if the ffmpeg cmd line tools work perfect on a mythtv created .ts/mp4 then I have some detective work to do in mythtv on this subject
with regards to the arm6 and pizero builds. 



![](/ffretv.png)
