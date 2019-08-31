![ffretv](/ffretv.png)

Forkin. Stage1
I had to finish manually linking this up so dont waste your time tyring to bother with this yet. I have to change several options in the qt .pro files and configure. Once I get it all renamed(could take months, a little a a time) then it will be
more fun to work with. 

**Right now this is my ffrefrankenMyth :)**
*I'm taking apart a 35K commit project thats over 17 years old, it's got some things laying around. So expect 
me to take a while on this full renaming venture. I've done this before several times without GIT and it was not
easy or fast.

```
 ldd /usr/local/bin/mythfrontend 
	linux-vdso.so.1 =>  (0x00007ffd9aab2000)
	libffreswscale.so.5 => /usr/local/lib/libffreswscale.so.5 (0x00007f293aa69000)
	libffreavformat.so.58 => /usr/local/lib/libffreavformat.so.58 (0x00007f293a611000)
	libffreswresample.so.3 => /usr/local/lib/libffreswresample.so.3 (0x00007f293a3f4000)
	libffreavutil.so.56 => /usr/local/lib/libffreavutil.so.56 (0x00007f293a17c000)
	libffreavcodec.so.58 => /usr/local/lib/libffreavcodec.so.58 (0x00007f2938b31000)
	libffrepostproc.so.55 => /usr/local/lib/libffrepostproc.so.55 (0x00007f2938911000)
	libffreavfilter.so.7 => /usr/local/lib/libffreavfilter.so.7 (0x00007f293843d000)
	libmythtv-31.so.31 => /usr/local/lib/libmythtv-31.so.31 (0x00007f293763c000)
	libmythupnp-31.so.31 => /usr/local/lib/libmythupnp-31.so.31 (0x00007f293731c000)
	libmythbase-31.so.31 => /usr/local/lib/libmythbase-31.so.31 (0x00007f2936f19000)
	libmythui-31.so.31 => /usr/local/lib/libmythui-31.so.31 (0x00007f2936a7e000)
	libmyth-31.so.31 => /usr/local/lib/libmyth-31.so.31 (0x00007f29366b4000)
	libmythmetadata-31.so.31 => /usr/local/lib/libmythmetadata-31.so.31 (0x00007f29362f1000)
	libmythservicecontracts-31.so.31 => /usr/local/lib/libmythservicecontracts-31.so.31 (0x00007f2936067000)
	libmythprotoserver-31.so.31 => /usr/local/lib/libmythprotoserver-31.so.31 (0x00007f2935e27000)
	libmythfreemheg-31.so.31 => /usr/local/lib/libmythfreemheg-31.so.31 (0x00007f2935b86000)
	libtag.so.1 => /lib64/libtag.so.1 (0x00007f2935897000)
	libXNVCtrl.so.0 => /lib64/libXNVCtrl.so.0 (0x00007f2935691000)
	libXext.so.6 => /lib64/libXext.so.6 (0x00007f293547f000)
	libXinerama.so.1 => /lib64/libXinerama.so.1 (0x00007f293527c000)
	libXxf86vm.so.1 => /lib64/libXxf86vm.so.1 (0x00007f2935076000)
	libXv.so.1 => /lib64/libXv.so.1 (0x00007f2934e71000)
	libXrandr.so.2 => /lib64/libXrandr.so.2 (0x00007f2934c66000)
	libsystemd.so.0 => /lib64/libsystemd.so.0 (0x00007f2934a35000)
	libvdpau.so.1 => /lib64/libvdpau.so.1 (0x00007f2934831000)
	libX11.so.6 => /lib64/libX11.so.6 (0x00007f29344f3000)
	libasound.so.2 => /lib64/libasound.so.2 (0x00007f29341f3000)
	libfreetype.so.6 => /lib64/libfreetype.so.6 (0x00007f2933f34000)
	libxml2.so.2 => /lib64/libxml2.so.2 (0x00007f2933bca000)
	libdl.so.2 => /lib64/libdl.so.2 (0x00007f29339c6000)
	libz.so.1 => /lib64/libz.so.1 (0x00007f29337b0000)
	libsamplerate.so.0 => /lib64/libsamplerate.so.0 (0x00007f2933444000)
	libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f2933228000)
	libGL.so.1 => /lib64/libGL.so.1 (0x00007f2932f9c000)
	libQt5OpenGL.so.5 => /lib64/libQt5OpenGL.so.5 (0x00007f293ae8d000)
	libQt5Widgets.so.5 => /lib64/libQt5Widgets.so.5 (0x00007f2932933000)
	libQt5Gui.so.5 => /lib64/libQt5Gui.so.5 (0x00007f293247d000)
	libQt5Network.so.5 => /lib64/libQt5Network.so.5 (0x00007f29322f5000)
	libQt5Xml.so.5 => /lib64/libQt5Xml.so.5 (0x00007f293ae50000)
	libQt5Sql.so.5 => /lib64/libQt5Sql.so.5 (0x00007f293ae0b000)
	libQt5Script.so.5 => /lib64/libQt5Script.so.5 (0x00007f2932070000)
	libQt5Core.so.5 => /lib64/libQt5Core.so.5 (0x00007f2931bc6000)
	libstdc++.so.6 => /lib64/libstdc++.so.6 (0x00007f29318bf000)
	libm.so.6 => /lib64/libm.so.6 (0x00007f29315bd000)
	libgcc_s.so.1 => /lib64/libgcc_s.so.1 (0x00007f29313a7000)
	libc.so.6 => /lib64/libc.so.6 (0x00007f2930fda000)
	liblzma.so.5 => /lib64/liblzma.so.5 (0x00007f2930db4000)
	liblzo2.so.2 => /lib64/liblzo2.so.2 (0x00007f2930b93000)
	libexiv2.so.26 => /lib64/libexiv2.so.26 (0x00007f29306a4000)
	libXrender.so.1 => /lib64/libXrender.so.1 (0x00007f2930499000)
	libcap.so.2 => /lib64/libcap.so.2 (0x00007f2930294000)
	librt.so.1 => /lib64/librt.so.1 (0x00007f293008c000)
	libselinux.so.1 => /lib64/libselinux.so.1 (0x00007f292fe65000)
	liblz4.so.1 => /lib64/liblz4.so.1 (0x00007f292fc50000)
	libgcrypt.so.11 => /lib64/libgcrypt.so.11 (0x00007f292f9cf000)
	libgpg-error.so.0 => /lib64/libgpg-error.so.0 (0x00007f292f7ca000)
	libresolv.so.2 => /lib64/libresolv.so.2 (0x00007f292f5b1000)
	libdw.so.1 => /lib64/libdw.so.1 (0x00007f292f362000)
	/lib64/ld-linux-x86-64.so.2 (0x00007f293acf3000)
	libxcb.so.1 => /lib64/libxcb.so.1 (0x00007f292f13a000)
	libbz2.so.1 => /lib64/libbz2.so.1 (0x00007f292ef2a000)
	libpng15.so.15 => /lib64/libpng15.so.15 (0x00007f292ecff000)
	libGLX.so.0 => /lib64/libGLX.so.0 (0x00007f292eacd000)
	libGLdispatch.so.0 => /lib64/libGLdispatch.so.0 (0x00007f292e817000)
	libharfbuzz.so.0 => /lib64/libharfbuzz.so.0 (0x00007f292e579000)
	libssl.so.10 => /lib64/libssl.so.10 (0x00007f292e307000)
	libcrypto.so.10 => /lib64/libcrypto.so.10 (0x00007f292dea5000)
	libicui18n.so.50 => /lib64/libicui18n.so.50 (0x00007f292daa6000)
	libicuuc.so.50 => /lib64/libicuuc.so.50 (0x00007f292d72d000)
	libicudata.so.50 => /lib64/libicudata.so.50 (0x00007f292c15b000)
	libpcre2-16.so.0 => /lib64/libpcre2-16.so.0 (0x00007f292beef000)
	libgthread-2.0.so.0 => /lib64/libgthread-2.0.so.0 (0x00007f292bced000)
	libglib-2.0.so.0 => /lib64/libglib-2.0.so.0 (0x00007f292b9d7000)
	libexpat.so.1 => /lib64/libexpat.so.1 (0x00007f292b7ad000)
	libattr.so.1 => /lib64/libattr.so.1 (0x00007f292b5a8000)
	libpcre.so.1 => /lib64/libpcre.so.1 (0x00007f292b346000)
	libelf.so.1 => /lib64/libelf.so.1 (0x00007f292b12e000)
	libXau.so.6 => /lib64/libXau.so.6 (0x00007f292af2a000)
	libgraphite2.so.3 => /lib64/libgraphite2.so.3 (0x00007f292acfc000)
	libgssapi_krb5.so.2 => /lib64/libgssapi_krb5.so.2 (0x00007f292aaaf000)
	libkrb5.so.3 => /lib64/libkrb5.so.3 (0x00007f292a7c6000)
	libcom_err.so.2 => /lib64/libcom_err.so.2 (0x00007f292a5c2000)
	libk5crypto.so.3 => /lib64/libk5crypto.so.3 (0x00007f292a38f000)
	libkrb5support.so.0 => /lib64/libkrb5support.so.0 (0x00007f292a17f000)
	libkeyutils.so.1 => /lib64/libkeyutils.so.1 (0x00007f2929f7b000)
```
```
export LD_LIBRARY_PATH=/usr/local/lib

readelf -d /usr/local/bin/mythfrontend

Dynamic section at offset 0x3aa728 contains 69 entries:
  Tag        Type                         Name/Value
 0x0000000000000001 (NEEDED)             Shared library: [libffreswscale.so.5]
 0x0000000000000001 (NEEDED)             Shared library: [libffreavformat.so.58]
 0x0000000000000001 (NEEDED)             Shared library: [libffreswresample.so.3]
 0x0000000000000001 (NEEDED)             Shared library: [libffreavutil.so.56]
 0x0000000000000001 (NEEDED)             Shared library: [libffreavcodec.so.58]
 0x0000000000000001 (NEEDED)             Shared library: [libffrepostproc.so.55]
 0x0000000000000001 (NEEDED)             Shared library: [libffreavfilter.so.7]
 0x0000000000000001 (NEEDED)             Shared library: [libmythtv-31.so.31]
 0x0000000000000001 (NEEDED)             Shared library: [libmythupnp-31.so.31]
 0x0000000000000001 (NEEDED)             Shared library: [libmythbase-31.so.31]
 0x0000000000000001 (NEEDED)             Shared library: [libmythui-31.so.31]
 0x0000000000000001 (NEEDED)             Shared library: [libmyth-31.so.31]
 0x0000000000000001 (NEEDED)             Shared library: [libmythmetadata-31.so.31]
 0x0000000000000001 (NEEDED)             Shared library: [libmythservicecontracts-31.so.31]
 0x0000000000000001 (NEEDED)             Shared library: [libmythprotoserver-31.so.31]
 0x0000000000000001 (NEEDED)             Shared library: [libmythfreemheg-31.so.31]
 0x0000000000000001 (NEEDED)             Shared library: [libtag.so.1]
 0x0000000000000001 (NEEDED)             Shared library: [libXNVCtrl.so.0]
 0x0000000000000001 (NEEDED)             Shared library: [libXext.so.6]
 0x0000000000000001 (NEEDED)             Shared library: [libXinerama.so.1]
 0x0000000000000001 (NEEDED)             Shared library: [libXxf86vm.so.1]
 0x0000000000000001 (NEEDED)             Shared library: [libXv.so.1]
 0x0000000000000001 (NEEDED)             Shared library: [libXrandr.so.2]
 0x0000000000000001 (NEEDED)             Shared library: [libsystemd.so.0]
 0x0000000000000001 (NEEDED)             Shared library: [libvdpau.so.1]
 0x0000000000000001 (NEEDED)             Shared library: [libX11.so.6]
 0x0000000000000001 (NEEDED)             Shared library: [libasound.so.2]
 0x0000000000000001 (NEEDED)             Shared library: [libfreetype.so.6]
 0x0000000000000001 (NEEDED)             Shared library: [libxml2.so.2]
 0x0000000000000001 (NEEDED)             Shared library: [libdl.so.2]
 0x0000000000000001 (NEEDED)             Shared library: [libz.so.1]
 0x0000000000000001 (NEEDED)             Shared library: [libsamplerate.so.0]
 0x0000000000000001 (NEEDED)             Shared library: [libpthread.so.0]
 0x0000000000000001 (NEEDED)             Shared library: [libGL.so.1]
 0x0000000000000001 (NEEDED)             Shared library: [libQt5OpenGL.so.5]
 0x0000000000000001 (NEEDED)             Shared library: [libQt5Widgets.so.5]
 0x0000000000000001 (NEEDED)             Shared library: [libQt5Gui.so.5]
 0x0000000000000001 (NEEDED)             Shared library: [libQt5Network.so.5]
 0x0000000000000001 (NEEDED)             Shared library: [libQt5Xml.so.5]
 0x0000000000000001 (NEEDED)             Shared library: [libQt5Sql.so.5]
 0x0000000000000001 (NEEDED)             Shared library: [libQt5Script.so.5]
 0x0000000000000001 (NEEDED)             Shared library: [libQt5Core.so.5]
 0x0000000000000001 (NEEDED)             Shared library: [libstdc++.so.6]
 0x0000000000000001 (NEEDED)             Shared library: [libm.so.6]
 0x0000000000000001 (NEEDED)             Shared library: [libgcc_s.so.1]
 0x0000000000000001 (NEEDED)             Shared library: [libc.so.6]
 0x000000000000000c (INIT)               0x45ed00
 0x000000000000000d (FINI)               0x6da034
 0x0000000000000019 (INIT_ARRAY)         0x99c1b0
 0x000000000000001b (INIT_ARRAYSZ)       224 (bytes)
 0x000000000000001a (FINI_ARRAY)         0x99c290
 0x000000000000001c (FINI_ARRAYSZ)       8 (bytes)
 0x000000006ffffef5 (GNU_HASH)           0x400298
 0x0000000000000005 (STRTAB)             0x417bf0
 0x0000000000000006 (SYMTAB)             0x403718
 0x000000000000000a (STRSZ)              171949 (bytes)
 0x000000000000000b (SYMENT)             24 (bytes)
 0x0000000000000015 (DEBUG)              0x0
 0x0000000000000003 (PLTGOT)             0x9ab000
 0x0000000000000002 (PLTRELSZ)           33408 (bytes)
 0x0000000000000014 (PLTREL)             RELA
 0x0000000000000017 (JMPREL)             0x456a80
 0x0000000000000007 (RELA)               0x4438b0
 0x0000000000000008 (RELASZ)             78288 (bytes)
 0x0000000000000009 (RELAENT)            24 (bytes)
 0x000000006ffffffe (VERNEED)            0x4436b0
 0x000000006fffffff (VERNEEDNUM)         13
 0x000000006ffffff0 (VERSYM)             0x441b9e
 0x0000000000000000 (NULL)               0x0


```
