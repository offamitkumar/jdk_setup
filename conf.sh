bash configure \
	--with-boot-jdk=$HOME/jdk-19.0.1+10 \
	--with-jtreg=$HOME/jtreg \
	--with-gtest=$HOME/googletest \
	--with-debug-level=fastdebug \
	--with-native-debug-symbols=internal \
	--disable-precompiled-headers
