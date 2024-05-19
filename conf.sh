bash configure \
	--with-boot-jdk=boot_jdk_ \
	--with-jtreg=jtreg \
	--with-gtest=googletest \
	--with-debug-level=release \
	--with-native-debug-symbols=internal \
	--disable-precompiled-headers

    #--with-jvm-variants=fastdebug \
    #--with-jmh=build/jmh/jars \
    # sh make/devkit/createJMHBundle.sh
    # --enable-ubsan \
