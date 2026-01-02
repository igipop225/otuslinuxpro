7. Управление пакетами. Дистрибьюция софта
2026-01-02 20:56:09 root: mkdir rpm
2026-01-02 20:56:45 root: cd rpm
2026-01-02 20:59:33 root: yumdownloader --source nginx
###### enabling appstream-source repository
###### enabling baseos-source repository
###### enabling extras-source repository
###### AlmaLinux 9 - AppStream - Source                529 kB/s | 867 kB     00:01    
###### AlmaLinux 9 - BaseOS - Source                   237 kB/s | 316 kB     00:01    
###### AlmaLinux 9 - Extras - Source                   8.8 kB/s | 8.1 kB     00:00    
###### nginx-1.20.1-22.el9_6.3.alma.2.src.rpm          1.2 MB/s | 1.1 MB     00:00    
2026-01-02 21:24:14 root: rpm -Uvh nginx-1.20.1-22.el9_6.3.alma.2.src.rpm
###### Updating / installing...
###### nginx-2:1.20.1-22.el9_6.3.alma.2      warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### warning: user mockbuild does not exist - using root
###### warning: group mock does not exist - using root
###### ########################################
2026-01-02 21:24:33 root: yum-builddep nginx
###### enabling appstream-source repository
###### enabling baseos-source repository
###### enabling extras-source repository
###### Last metadata expiration check: 0:24:55 ago on Fri Jan  2 20:59:38 2026.
###### Package make-1:4.3-8.el9.x86_64 is already installed.
###### Package gcc-11.5.0-11.el9.alma.1.x86_64 is already installed.
###### Package systemd-252-18.el9.x86_64 is already installed.
###### Package systemd-rpm-macros-252-18.el9.noarch is already installed.
###### Package gnupg2-2.3.3-4.el9.x86_64 is already installed.
###### Dependencies resolved.
###### ================================================================================
######  Package                      Arch    Version                  Repository  Size
###### ================================================================================
###### Installing:
######  gd-devel                     x86_64  2.3.2-3.el9              appstream   37 k
######  libxslt-devel                x86_64  1.1.34-13.el9_6          appstream  287 k
######  openssl-devel                x86_64  1:3.5.1-4.el9_7          appstream  3.4 M
######  pcre-devel                   x86_64  8.44-4.el9               appstream  469 k
######  perl-ExtUtils-Embed          noarch  1.35-481.1.el9_6         appstream   16 k
######  perl-devel                   x86_64  4:5.32.1-481.1.el9_6     appstream  659 k
######  perl-generators              noarch  1.13-1.el9               appstream   15 k
######  zlib-devel                   x86_64  1.2.11-40.el9            appstream   44 k
###### Upgrading:
######  bzip2-libs                   x86_64  1.0.8-10.el9_5           baseos      39 k
######  cryptsetup-libs              x86_64  2.7.2-4.el9              baseos     513 k
######  device-mapper                x86_64  9:1.02.206-2.el9_7.1     baseos     138 k
######  device-mapper-libs           x86_64  9:1.02.206-2.el9_7.1     baseos     179 k
######  glib2                        x86_64  2.68.4-18.el9_7          baseos     2.6 M
######  libblkid                     x86_64  2.37.4-21.el9            baseos     106 k
######  libbrotli                    x86_64  1.0.9-7.el9_5            baseos     312 k
######  libfdisk                     x86_64  2.37.4-21.el9            baseos     153 k
######  libmount                     x86_64  2.37.4-21.el9            baseos     134 k
######  libselinux                   x86_64  3.6-3.el9                baseos      85 k
######  libselinux-utils             x86_64  3.6-3.el9                baseos     164 k
######  libsepol                     x86_64  3.6-3.el9                baseos     329 k
######  libsmartcols                 x86_64  2.37.4-21.el9            baseos      62 k
######  libuuid                      x86_64  2.37.4-21.el9            baseos      27 k
######  libxml2                      x86_64  2.9.13-14.el9_7          baseos     746 k
######  libxslt                      x86_64  1.1.34-13.el9_6          appstream  239 k
######  pcre                         x86_64  8.44-4.el9               baseos     196 k
######  pcre2                        x86_64  10.40-6.el9              baseos     233 k
######  pcre2-syntax                 noarch  10.40-6.el9              baseos     140 k
######  python3-libselinux           x86_64  3.6-3.el9                appstream  186 k
######  systemd                      x86_64  252-55.el9_7.7.alma.1    baseos     4.0 M
######  systemd-libs                 x86_64  252-55.el9_7.7.alma.1    baseos     676 k
######  systemd-pam                  x86_64  252-55.el9_7.7.alma.1    baseos     283 k
######  systemd-rpm-macros           noarch  252-55.el9_7.7.alma.1    baseos      71 k
######  systemd-udev                 x86_64  252-55.el9_7.7.alma.1    baseos     1.9 M
######  util-linux                   x86_64  2.37.4-21.el9            baseos     2.2 M
######  util-linux-core              x86_64  2.37.4-21.el9            baseos     437 k
###### Installing dependencies:
######  brotli                       x86_64  1.0.9-7.el9_5            appstream  311 k
######  brotli-devel                 x86_64  1.0.9-7.el9_5            appstream   30 k
######  bzip2-devel                  x86_64  1.0.8-10.el9_5           appstream  213 k
######  cairo                        x86_64  1.17.4-7.el9             appstream  659 k
######  dejavu-sans-fonts            noarch  2.37-18.el9              baseos     1.3 M
######  fontconfig                   x86_64  2.14.0-2.el9_1           appstream  274 k
######  fontconfig-devel             x86_64  2.14.0-2.el9_1           appstream  127 k
######  fonts-filesystem             noarch  1:2.0.5-7.el9.1          baseos     9.0 k
######  freetype                     x86_64  2.10.4-10.el9_5          baseos     385 k
######  freetype-devel               x86_64  2.10.4-10.el9_5          appstream  1.1 M
######  gd                           x86_64  2.3.2-3.el9              appstream  131 k
######  glib2-devel                  x86_64  2.68.4-18.el9_7          appstream  469 k
######  graphite2                    x86_64  1.3.14-9.el9             baseos      94 k
######  graphite2-devel              x86_64  1.3.14-9.el9             appstream   21 k
######  harfbuzz                     x86_64  2.7.4-10.el9             baseos     623 k
######  harfbuzz-devel               x86_64  2.7.4-10.el9             appstream  304 k
######  harfbuzz-icu                 x86_64  2.7.4-10.el9             appstream   13 k
######  jbigkit-libs                 x86_64  2.1-23.el9               appstream   52 k
######  langpacks-core-font-en       noarch  3.0-16.el9               appstream  9.4 k
######  libICE                       x86_64  1.0.10-8.el9             appstream   70 k
######  libSM                        x86_64  1.2.3-10.el9             appstream   41 k
######  libX11                       x86_64  1.7.0-11.el9             appstream  646 k
######  libX11-common                noarch  1.7.0-11.el9             appstream  151 k
######  libX11-devel                 x86_64  1.7.0-11.el9             appstream  939 k
######  libX11-xcb                   x86_64  1.7.0-11.el9             appstream   10 k
######  libXau                       x86_64  1.0.9-8.el9              appstream   30 k
######  libXau-devel                 x86_64  1.0.9-8.el9              appstream   13 k
######  libXext                      x86_64  1.3.4-8.el9              appstream   39 k
######  libXpm                       x86_64  3.5.13-10.el9            appstream   57 k
######  libXpm-devel                 x86_64  3.5.13-10.el9            appstream   34 k
######  libXrender                   x86_64  0.9.10-16.el9            appstream   27 k
######  libXt                        x86_64  1.2.0-6.el9              appstream  179 k
######  libblkid-devel               x86_64  2.37.4-21.el9            appstream   16 k
######  libffi-devel                 x86_64  3.4.2-8.el9              appstream   28 k
######  libgpg-error-devel           x86_64  1.42-5.el9               appstream   65 k
######  libicu                       x86_64  67.1-10.el9_6            baseos     9.6 M
######  libicu-devel                 x86_64  67.1-10.el9_6            appstream  829 k
######  libjpeg-turbo                x86_64  2.0.90-7.el9             appstream  174 k
######  libjpeg-turbo-devel          x86_64  2.0.90-7.el9             appstream   98 k
######  libmount-devel               x86_64  2.37.4-21.el9            appstream   17 k
######  libpng                       x86_64  2:1.6.37-12.el9          baseos     116 k
######  libpng-devel                 x86_64  2:1.6.37-12.el9          appstream  290 k
######  libselinux-devel             x86_64  3.6-3.el9                appstream  113 k
######  libsepol-devel               x86_64  3.6-3.el9                appstream   39 k
######  libtiff                      x86_64  4.4.0-15.el9_7.2         appstream  196 k
######  libtiff-devel                x86_64  4.4.0-15.el9_7.2         appstream  527 k
######  libwebp                      x86_64  1.2.0-8.el9_3            appstream  276 k
######  libwebp-devel                x86_64  1.2.0-8.el9_3            appstream   32 k
######  libxcb                       x86_64  1.13.1-9.el9             appstream  225 k
######  libxcb-devel                 x86_64  1.13.1-9.el9             appstream  1.0 M
######  libxml2-devel                x86_64  2.9.13-14.el9_7          appstream  828 k
######  pcre-cpp                     x86_64  8.44-4.el9               appstream   24 k
######  pcre-utf16                   x86_64  8.44-4.el9               appstream  183 k
######  pcre-utf32                   x86_64  8.44-4.el9               appstream  173 k
######  pcre2-devel                  x86_64  10.40-6.el9              appstream  471 k
######  pcre2-utf16                  x86_64  10.40-6.el9              appstream  213 k
######  pcre2-utf32                  x86_64  10.40-6.el9              appstream  202 k
######  perl-AutoSplit               noarch  5.74-481.1.el9_6         appstream   20 k
######  perl-Benchmark               noarch  1.23-481.1.el9_6         appstream   25 k
######  perl-CPAN-Meta-Requirements  noarch  2.140-461.el9            appstream   31 k
######  perl-CPAN-Meta-YAML          noarch  0.018-461.el9            appstream   26 k
######  perl-Devel-PPPort            x86_64  3.62-4.el9               appstream  211 k
######  perl-ExtUtils-Command        noarch  2:7.60-3.el9             appstream   14 k
######  perl-ExtUtils-Constant       noarch  0.25-481.1.el9_6         appstream   45 k
######  perl-ExtUtils-Install        noarch  2.20-4.el9               appstream   44 k
######  perl-ExtUtils-MakeMaker      noarch  2:7.60-3.el9             appstream  289 k
######  perl-ExtUtils-Manifest       noarch  1:1.73-4.el9             appstream   34 k
######  perl-ExtUtils-ParseXS        noarch  1:3.40-460.el9           appstream  181 k
######  perl-Fedora-VSP              noarch  0.001-23.el9             appstream   23 k
######  perl-File-Compare            noarch  1.100.600-481.1.el9_6    appstream   12 k
######  perl-File-Copy               noarch  2.34-481.1.el9_6         appstream   19 k
######  perl-I18N-Langinfo           x86_64  0.19-481.1.el9_6         appstream   21 k
######  perl-JSON-PP                 noarch  1:4.06-4.el9             appstream   65 k
######  perl-Math-BigInt             noarch  1:1.9998.18-460.el9      appstream  188 k
######  perl-Math-Complex            noarch  1.59-481.1.el9_6         appstream   45 k
######  perl-Test-Harness            noarch  1:3.42-461.el9           appstream  267 k
######  perl-locale                  noarch  1.09-481.1.el9_6         appstream   12 k
######  perl-macros                  noarch  4:5.32.1-481.1.el9_6     appstream  9.2 k
######  perl-version                 x86_64  7:0.99.28-4.el9          appstream   62 k
######  pixman                       x86_64  0.40.0-6.el9_3           appstream  268 k
######  python3-pyparsing            noarch  2.4.7-9.el9              baseos     149 k
######  sysprof-capture-devel        x86_64  3.40.1-3.el9             appstream   59 k
######  systemtap-sdt-devel          x86_64  5.3-3.el9                appstream   68 k
######  systemtap-sdt-dtrace         x86_64  5.3-3.el9                appstream   69 k
######  xml-common                   noarch  0.6.3-58.el9             appstream   31 k
######  xorg-x11-proto-devel         noarch  2024.1-1.el9             appstream  265 k
######  xz-devel                     x86_64  5.2.5-8.el9_0            appstream   52 k
###### Installing weak dependencies:
######  perl-CPAN-Meta               noarch  2.150010-460.el9         appstream  176 k
######  perl-Encode-Locale           noarch  1.05-21.el9              appstream   19 k
######  perl-Time-HiRes              x86_64  4:1.9764-462.el9         appstream   57 k
######  perl-doc                     noarch  5.32.1-481.1.el9_6       appstream  4.5 M
###### 
###### Transaction Summary
###### ================================================================================
###### Install  99 Packages
###### Upgrade  27 Packages
###### 
###### Total download size: 52 M
2026-01-02 21:32:54 root: cd /root
2026-01-02 21:33:13 root: git clone --recurse-submodules -j8 https://github.com/google/ngx_brotli
###### Cloning into 'ngx_brotli'...
###### Submodule 'deps/brotli' (https://github.com/google/brotli.git) registered for path 'deps/brotli'
###### Cloning into '/root/ngx_brotli/deps/brotli'...
###### Submodule path 'deps/brotli': checked out 'ed738e842d2fbdf2d6459e39267a633c4a9b2f5d'
2026-01-02 21:34:58 root: cd ngx_brotli/deps/brotli/
2026-01-02 21:35:09 root: mkdir out
2026-01-02 21:35:21 root: cd out
2026-01-02 21:35:53 root: cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF -DCMAKE_C_FLAGS=-Ofast -m64 -march=native -mtune=native -flto -funroll-loops -ffunction-sections -fdata-sections -Wl,--gc-sections -DCMAKE_CXX_FLAGS=-Ofast -m64 -march=native -mtune=native -flto -funroll-loops -ffunction-sections -fdata-sections -Wl,--gc-sections -DCMAKE_INSTALL_PREFIX=./installed ..
###### CMake Error: Unknown argument -fdata-sections
###### CMake Error: Run 'cmake --help' for all supported options.
2026-01-02 21:36:32 root: cmake --build . --config Release -j 2 --target brotlienc
###### [  3%] Building C object CMakeFiles/brotlicommon.dir/c/common/constants.c.o
###### [  6%] Building C object CMakeFiles/brotlicommon.dir/c/common/context.c.o
###### [ 10%] Building C object CMakeFiles/brotlicommon.dir/c/common/platform.c.o
###### [ 13%] Building C object CMakeFiles/brotlicommon.dir/c/common/dictionary.c.o
###### [ 17%] Building C object CMakeFiles/brotlicommon.dir/c/common/shared_dictionary.c.o
###### [ 20%] Building C object CMakeFiles/brotlicommon.dir/c/common/transform.c.o
###### [ 24%] Linking C static library libbrotlicommon.a
###### [ 24%] Built target brotlicommon
###### [ 27%] Building C object CMakeFiles/brotlienc.dir/c/enc/backward_references.c.o
###### [ 31%] Building C object CMakeFiles/brotlienc.dir/c/enc/backward_references_hq.c.o
###### [ 34%] Building C object CMakeFiles/brotlienc.dir/c/enc/bit_cost.c.o
###### [ 37%] Building C object CMakeFiles/brotlienc.dir/c/enc/block_splitter.c.o
###### [ 41%] Building C object CMakeFiles/brotlienc.dir/c/enc/brotli_bit_stream.c.o
###### [ 44%] Building C object CMakeFiles/brotlienc.dir/c/enc/cluster.c.o
###### [ 48%] Building C object CMakeFiles/brotlienc.dir/c/enc/command.c.o
###### [ 51%] Building C object CMakeFiles/brotlienc.dir/c/enc/compound_dictionary.c.o
###### [ 55%] Building C object CMakeFiles/brotlienc.dir/c/enc/compress_fragment.c.o
###### [ 58%] Building C object CMakeFiles/brotlienc.dir/c/enc/compress_fragment_two_pass.c.o
###### [ 62%] Building C object CMakeFiles/brotlienc.dir/c/enc/dictionary_hash.c.o
###### [ 65%] Building C object CMakeFiles/brotlienc.dir/c/enc/encode.c.o
###### [ 68%] Building C object CMakeFiles/brotlienc.dir/c/enc/encoder_dict.c.o
###### [ 72%] Building C object CMakeFiles/brotlienc.dir/c/enc/entropy_encode.c.o
###### [ 75%] Building C object CMakeFiles/brotlienc.dir/c/enc/fast_log.c.o
###### [ 79%] Building C object CMakeFiles/brotlienc.dir/c/enc/histogram.c.o
###### [ 82%] Building C object CMakeFiles/brotlienc.dir/c/enc/literal_cost.c.o
###### [ 86%] Building C object CMakeFiles/brotlienc.dir/c/enc/memory.c.o
###### [ 89%] Building C object CMakeFiles/brotlienc.dir/c/enc/metablock.c.o
###### [ 93%] Building C object CMakeFiles/brotlienc.dir/c/enc/static_dict.c.o
###### [ 96%] Building C object CMakeFiles/brotlienc.dir/c/enc/utf8_util.c.o
###### [100%] Linking C static library libbrotlienc.a
###### [100%] Built target brotlienc
2026-01-02 21:36:53 root: cd ../../../..
2026-01-02 21:53:33 root: cd /root/rpmbuild/SPECS/
026-01-02 21:53:44 root: rpmbuild -ba nginx.spec -D debug_package %{nil}
###### error: Macro %debug_package has empty body
2026-01-02 22:13:05 root: ll rpmbuild/RPMS/x86_64/
###### ls: cannot access 'rpmbuild/RPMS/x86_64/': No such file or directory
2026-01-02 22:13:45 root: ll ../RPMS/x86_64/
###### total 2004
###### -rw-r--r--. 1 root root   36942 Jan  2 21:56 nginx-1.20.1-22.el9.3.alma.2.x86_64.rpm
###### -rw-r--r--. 1 root root 1034829 Jan  2 21:56 nginx-core-1.20.1-22.el9.3.alma.2.x86_64.rpm
###### -rw-r--r--. 1 root root  761311 Jan  2 21:56 nginx-mod-devel-1.20.1-22.el9.3.alma.2.x86_64.rpm
###### -rw-r--r--. 1 root root   20037 Jan  2 21:56 nginx-mod-http-image-filter-1.20.1-22.el9.3.alma.2.x86_64.rpm
###### -rw-r--r--. 1 root root   31531 Jan  2 21:56 nginx-mod-http-perl-1.20.1-22.el9.3.alma.2.x86_64.rpm
###### -rw-r--r--. 1 root root   18816 Jan  2 21:56 nginx-mod-http-xslt-filter-1.20.1-22.el9.3.alma.2.x86_64.rpm
###### -rw-r--r--. 1 root root   54444 Jan  2 21:56 nginx-mod-mail-1.20.1-22.el9.3.alma.2.x86_64.rpm
###### -rw-r--r--. 1 root root   81112 Jan  2 21:56 nginx-mod-stream-1.20.1-22.el9.3.alma.2.x86_64.rpm
2026-01-02 22:14:03 root: cp /root/rpmbuild/RPMS/noarch/nginx-all-modules-1.20.1-22.el9.3.alma.2.noarch.rpm /root/rpmbuild/RPMS/noarch/nginx-filesystem-1.20.1-22.el9.3.alma.2.noarch.rpm /root/rpmbuild/RPMS/x86_64/
2026-01-02 22:14:29 root: cd /root/rpmbuild/RPMS/x86_64
2026-01-02 22:14:48 root: yum localinstall nginx-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-all-modules-1.20.1-22.el9.3.alma.2.noarch.rpm nginx-core-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-filesystem-1.20.1-22.el9.3.alma.2.noarch.rpm nginx-mod-devel-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-mod-http-image-filter-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-mod-http-perl-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-mod-http-xslt-filter-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-mod-mail-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-mod-stream-1.20.1-22.el9.3.alma.2.x86_64.rpm
###### Last metadata expiration check: 2:33:36 ago on Fri Jan  2 19:41:13 2026.
###### Dependencies resolved.
###### ================================================================================
######  Package                     Arch   Version                  Repository    Size
###### ================================================================================
###### Installing:
######  nginx                       x86_64 2:1.20.1-22.el9.3.alma.2 @commandline  36 k
######  nginx-all-modules           noarch 2:1.20.1-22.el9.3.alma.2 @commandline 7.8 k
######  nginx-core                  x86_64 2:1.20.1-22.el9.3.alma.2 @commandline 1.0 M
######  nginx-filesystem            noarch 2:1.20.1-22.el9.3.alma.2 @commandline 9.4 k
######  nginx-mod-devel             x86_64 2:1.20.1-22.el9.3.alma.2 @commandline 743 k
######  nginx-mod-http-image-filter x86_64 2:1.20.1-22.el9.3.alma.2 @commandline  20 k
######  nginx-mod-http-perl         x86_64 2:1.20.1-22.el9.3.alma.2 @commandline  31 k
######  nginx-mod-http-xslt-filter  x86_64 2:1.20.1-22.el9.3.alma.2 @commandline  18 k
######  nginx-mod-mail              x86_64 2:1.20.1-22.el9.3.alma.2 @commandline  53 k
######  nginx-mod-stream            x86_64 2:1.20.1-22.el9.3.alma.2 @commandline  79 k
###### Installing dependencies:
######  almalinux-logos-httpd       noarch 90.6-2.el9               appstream     18 k
###### 
###### Transaction Summary
###### ================================================================================
###### Install  11 Packages
###### 
###### Total size: 2.0 M
###### Total download size: 18 k
###### Installed size: 9.5 M
2026-01-02 22:15:42 root: yum localinstall nginx-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-all-modules-1.20.1-22.el9.3.alma.2.noarch.rpm nginx-core-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-filesystem-1.20.1-22.el9.3.alma.2.noarch.rpm nginx-mod-devel-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-mod-http-image-filter-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-mod-http-perl-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-mod-http-xslt-filter-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-mod-mail-1.20.1-22.el9.3.alma.2.x86_64.rpm nginx-mod-stream-1.20.1-22.el9.3.alma.2.x86_64.rpm -y
###### Last metadata expiration check: 2:34:29 ago on Fri Jan  2 19:41:13 2026.
###### Package nginx-2:1.20.1-22.el9.3.alma.2.x86_64 is already installed.
###### Package nginx-all-modules-2:1.20.1-22.el9.3.alma.2.noarch is already installed.
###### Package nginx-core-2:1.20.1-22.el9.3.alma.2.x86_64 is already installed.
###### Package nginx-filesystem-2:1.20.1-22.el9.3.alma.2.noarch is already installed.
###### Package nginx-mod-devel-2:1.20.1-22.el9.3.alma.2.x86_64 is already installed.
###### Package nginx-mod-http-image-filter-2:1.20.1-22.el9.3.alma.2.x86_64 is already installed.
###### Package nginx-mod-http-perl-2:1.20.1-22.el9.3.alma.2.x86_64 is already installed.
###### Package nginx-mod-http-xslt-filter-2:1.20.1-22.el9.3.alma.2.x86_64 is already installed.
###### Package nginx-mod-mail-2:1.20.1-22.el9.3.alma.2.x86_64 is already installed.
###### Package nginx-mod-stream-2:1.20.1-22.el9.3.alma.2.x86_64 is already installed.
###### Dependencies resolved.
###### Nothing to do.
###### Complete!
2026-01-02 22:15:56 root: systemctl start nginx
2026-01-02 22:16:33 root: systemctl status nginx
###### ● nginx.service - The nginx HTTP and reverse proxy server
######      Loaded: loaded (/usr/lib/systemd/system/nginx.service; disabled; preset: disabled)
######      Active: active (running) since Fri 2026-01-02 22:15:56 UTC; 37s ago
######     Process: 36157 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
######     Process: 36158 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
######     Process: 36159 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
######    Main PID: 36160 (nginx)
######       Tasks: 2 (limit: 5591)
######      Memory: 5.8M (peak: 6.1M)
######         CPU: 27ms
######      CGroup: /system.slice/nginx.service
######              ├─36160 "nginx: master process /usr/sbin/nginx"
######              └─36162 "nginx: worker process"
###### 
###### Jan 02 22:15:56 localhost.localdomain systemd[1]: Starting The nginx HTTP and reverse proxy server...
###### Jan 02 22:15:56 localhost.localdomain nginx[36158]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
###### Jan 02 22:15:56 localhost.localdomain nginx[36158]: nginx: configuration file /etc/nginx/nginx.conf test is successful
###### Jan 02 22:15:56 localhost.localdomain systemd[1]: Started The nginx HTTP and reverse proxy server.
2026-01-02 22:17:07 root: mkdir /usr/share/nginx/html/repo
2026-01-02 22:17:28 root: cp /root/rpmbuild/RPMS/x86_64/nginx-1.20.1-22.el9.3.alma.2.x86_64.rpm /root/rpmbuild/RPMS/x86_64/nginx-all-modules-1.20.1-22.el9.3.alma.2.noarch.rpm /root/rpmbuild/RPMS/x86_64/nginx-core-1.20.1-22.el9.3.alma.2.x86_64.rpm /root/rpmbuild/RPMS/x86_64/nginx-filesystem-1.20.1-22.el9.3.alma.2.noarch.rpm /root/rpmbuild/RPMS/x86_64/nginx-mod-devel-1.20.1-22.el9.3.alma.2.x86_64.rpm /root/rpmbuild/RPMS/x86_64/nginx-mod-http-image-filter-1.20.1-22.el9.3.alma.2.x86_64.rpm /root/rpmbuild/RPMS/x86_64/nginx-mod-http-perl-1.20.1-22.el9.3.alma.2.x86_64.rpm /root/rpmbuild/RPMS/x86_64/nginx-mod-http-xslt-filter-1.20.1-22.el9.3.alma.2.x86_64.rpm /root/rpmbuild/RPMS/x86_64/nginx-mod-mail-1.20.1-22.el9.3.alma.2.x86_64.rpm /root/rpmbuild/RPMS/x86_64/nginx-mod-stream-1.20.1-22.el9.3.alma.2.x86_64.rpm /usr/share/nginx/html/repo/
2026-01-02 22:17:48 root: createrepo /usr/share/nginx/html/repo/
###### Directory walk started
###### Directory walk done - 10 packages
###### Temporary output repo path: /usr/share/nginx/html/repo/.repodata/
###### Preparing sqlite DBs
###### Pool started (with 5 workers)
###### Pool finished
2026-01-02 22:19:12 root: nginx -t
###### nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
###### nginx: configuration file /etc/nginx/nginx.conf test is successful
2026-01-02 22:19:22 root: nginx -s reload
2026-01-02 22:19:44 root: lynx http://localhost/repo/
###### bash: lynx: command not found
2026-01-02 22:22:04 root: yum repolist enabled
###### repo id                          repo name
###### appstream                        AlmaLinux 9 - AppStream
###### baseos                           AlmaLinux 9 - BaseOS
###### extras                           AlmaLinux 9 - Extras
###### otus                             otus-linux
2026-01-02 22:22:15 root: cd /usr/share/nginx/html/repo/
2026-01-02 22:22:25 root: wget https://repo.percona.com/yum/percona-release-latest.noarch.rpm
###### --2026-01-02 22:22:25--  https://repo.percona.com/yum/percona-release-latest.noarch.rpm
###### Resolving repo.percona.com (repo.percona.com)... 49.12.125.205, 2a01:4f8:242:5792::2
###### Connecting to repo.percona.com (repo.percona.com)|49.12.125.205|:443... connected.
###### HTTP request sent, awaiting response... 200 OK
###### Length: 28532 (28K) [application/x-redhat-package-manager]
###### Saving to: ‘percona-release-latest.noarch.rpm’
###### 
######      0K .......... .......... .......                         100%  682K=0.04s
###### 
###### 2026-01-02 22:22:26 (682 KB/s) - ‘percona-release-latest.noarch.rpm’ saved [28532/28532]
###### 
2026-01-02 22:22:36 root: createrepo /usr/share/nginx/html/repo/
###### Directory walk started
###### Directory walk done - 11 packages
###### Temporary output repo path: /usr/share/nginx/html/repo/.repodata/
###### Preparing sqlite DBs
###### Pool started (with 5 workers)
###### Pool finished
2026-01-02 22:22:47 root: yum makecache -y
###### AlmaLinux 9 - AppStream                         5.3 kB/s | 4.2 kB     00:00    
###### AlmaLinux 9 - BaseOS                            5.8 kB/s | 3.8 kB     00:00    
###### AlmaLinux 9 - Extras                            5.8 kB/s | 3.8 kB     00:00    
###### otus-linux                                      3.5 MB/s | 7.2 kB     00:00    
###### Metadata cache created.
2026-01-02 22:23:11 root: yum list
###### Last metadata expiration check: 0:00:19 ago on Fri Jan  2 22:22:52 2026.
###### Installed Packages
###### NetworkManager.x86_64                                1:1.44.0-3.el9                     @System      
###### NetworkManager-libnm.x86_64                          1:1.44.0-3.el9                     
2026-01-02 22:23:23 root: yum install -y percona-release.noarch
###### Last metadata expiration check: 0:00:31 ago on Fri Jan  2 22:22:52 2026.
###### Dependencies resolved.
###### ================================================================================
######  Package                  Architecture    Version           Repository     Size
###### ================================================================================
###### Installing:
######  percona-release          noarch          1.0-32            otus           28 k
###### 
###### Transaction Summary
###### ================================================================================
###### Install  1 Package
###### 
###### Total download size: 28 k
###### Installed size: 50 k
###### Downloading Packages:
###### percona-release-latest.noarch.rpm                27 MB/s |  28 kB     00:00    
###### --------------------------------------------------------------------------------
###### Total                                           2.7 MB/s |  28 kB     00:00     
###### Running transaction check
###### Transaction check succeeded.
###### Running transaction test
###### Transaction test succeeded.
###### Running transaction
######   Preparing        :                                                        1/1 
######   Installing       : percona-release-1.0-32.noarch                          1/1 
######   Running scriptlet: percona-release-1.0-32.noarch                          1/1 
###### * Enabling the Percona Release repository
###### <*> All done!
###### * Enabling the Percona Telemetry repository
###### <*> All done!
###### * Enabling the PMM2 Client repository
###### <*> All done!
###### The percona-release package now contains a percona-release script that can enable additional repositories for our newer products.
###### 
###### Note: currently there are no repositories that contain Percona products or distributions enabled. We recommend you to enable Percona Distribution repositories instead of individual product repositories, because with the Distribution you will get not only the database itself but also a set of other componets that will help you work with your database.
###### 
###### For example, to enable the Percona Distribution for MySQL 8.0 repository use:
###### 
######   percona-release setup pdps8.0
###### 
###### Note: To avoid conflicts with older product versions, the percona-release setup command may disable our original repository for some products.
###### 
###### For more information, please visit:
######   https://docs.percona.com/percona-software-repositories/percona-release.html
###### 
###### 
######   Verifying        : percona-release-1.0-32.noarch                          1/1 
###### 
###### Installed:
######   percona-release-1.0-32.noarch                                                 
###### 
###### Complete!
