
all:
	arm-openwrt-linux-gcc  x17_hash.c sph/aes_helper.c sph/blake2b.c sph/blake2s.c sph/blake.c sph/bmw.c sph/cubehash.c sph/echo.c sph/fugue.c sph/groestl.c sph/hamsi.c sph/hamsi_helper.c sph/haval.c sph/jh.c sph/keccak.c sph/luffa.c sph/ripemd.c sph/sha2big.c sph/sha2.c sph/shabal.c sph/shavite.c sph/simd.c sph/skein.c sph/sph_sha2.c sph/streebog.c sph/whirlpool.c -fPIC -shared -o libx17_hash.so
