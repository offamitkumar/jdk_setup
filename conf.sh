if [ ! -d "build/jmh/jars" ]; then
  sh make/devkit/createJMHBundle.sh
fi

if [ "$CONF" = "linux-s390x-server-fastdebug" ]; then
  DEBUG_LEVEL=fastdebug
fi

if [ "$CONF" = "linux-s390x-server-release" ]; then
  DEBUG_LEVEL=release
fi

if [ "$CONF" = "linux-s390x-server-slowdebug" ]; then
  DEBUG_LEVEL=slowdebug
fi

bash configure \
	--with-boot-jdk=$HOME/boot_jdk_23 \
	--with-jtreg=$HOME/jtreg \
	--with-gtest=$HOME/googletest \
	--with-jmh=build/jmh/jars \
	--with-debug-level=$DEBUG_LEVEL \
	--with-native-debug-symbols=internal \
	--disable-precompiled-headers

    #--with-jvm-variants=fastdebug \
    # sh make/devkit/createJMHBundle.sh
    # --enable-ubsan \
