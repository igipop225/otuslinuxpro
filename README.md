# Домашнее задание

# Репликация mysql
Цель:

Поработать с реаликацией MySQL.

2026-02-23 14:11:06 root: apt update
###### 
###### WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
###### 
###### Hit:1 http://mirror.timeweb.ru/ubuntu noble InRelease
###### Hit:2 http://zabbix.repo.timeweb.ru/ubuntu focal InRelease
###### Hit:3 http://archive.ubuntu.com/ubuntu noble InRelease
###### Hit:4 http://archive.ubuntu.com/ubuntu noble-updates InRelease
###### Hit:5 http://archive.ubuntu.com/ubuntu noble-backports InRelease
###### Hit:6 http://security.ubuntu.com/ubuntu noble-security InRelease
###### Reading package lists...
###### Building dependency tree...
###### Reading state information...
###### 104 packages can be upgraded. Run 'apt list --upgradable' to see them.
2026-02-23 14:11:18 root: apt install -y mysql-server
###### 
###### WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
###### 
###### Reading package lists...
###### Building dependency tree...
###### Reading state information...
###### The following additional packages will be installed:
######   libcgi-fast-perl libcgi-pm-perl libclone-perl libencode-locale-perl
######   libevent-pthreads-2.1-7t64 libfcgi-bin libfcgi-perl libfcgi0t64
######   libhtml-parser-perl libhtml-tagset-perl libhtml-template-perl
######   libhttp-date-perl libhttp-message-perl libio-html-perl
######   liblwp-mediatypes-perl libmecab2 libprotobuf-lite32t64 libtimedate-perl
######   liburi-perl mecab-ipadic mecab-ipadic-utf8 mecab-utils mysql-client-8.0
######   mysql-client-core-8.0 mysql-common mysql-server-8.0 mysql-server-core-8.0
###### Suggested packages:
######   libdata-dump-perl libipc-sharedcache-perl libio-compress-brotli-perl
######   libbusiness-isbn-perl libregexp-ipv6-perl libwww-perl mailx tinyca
###### The following NEW packages will be installed:
######   libcgi-fast-perl libcgi-pm-perl libclone-perl libencode-locale-perl
######   libevent-pthreads-2.1-7t64 libfcgi-bin libfcgi-perl libfcgi0t64
######   libhtml-parser-perl libhtml-tagset-perl libhtml-template-perl
######   libhttp-date-perl libhttp-message-perl libio-html-perl
######   liblwp-mediatypes-perl libmecab2 libprotobuf-lite32t64 libtimedate-perl
######   liburi-perl mecab-ipadic mecab-ipadic-utf8 mecab-utils mysql-client-8.0
######   mysql-client-core-8.0 mysql-common mysql-server mysql-server-8.0
######   mysql-server-core-8.0
###### 0 upgraded, 28 newly installed, 0 to remove and 104 not upgraded.
###### Need to get 29.6 MB of archives.
###### After this operation, 243 MB of additional disk space will be used.
###### Get:1 http://mirror.timeweb.ru/ubuntu noble/main amd64 mysql-common all 5.8+1.1.0build1 [6746 B]
###### Get:2 http://mirror.timeweb.ru/ubuntu noble/main amd64 libevent-pthreads-2.1-7t64 amd64 2.1.12-stable-9ubuntu2 [7982 B]
###### Get:3 http://mirror.timeweb.ru/ubuntu noble/main amd64 libmecab2 amd64 0.996-14ubuntu4 [201 kB]
###### Get:4 http://mirror.timeweb.ru/ubuntu noble/main amd64 libhtml-tagset-perl all 3.20-6 [11.3 kB]
###### Get:5 http://mirror.timeweb.ru/ubuntu noble/main amd64 liburi-perl all 5.27-1 [88.0 kB]
###### Get:6 http://mirror.timeweb.ru/ubuntu noble/main amd64 libhtml-parser-perl amd64 3.81-1build3 [85.8 kB]
###### Get:7 http://mirror.timeweb.ru/ubuntu noble/main amd64 libcgi-pm-perl all 4.63-1 [185 kB]
###### Get:8 http://mirror.timeweb.ru/ubuntu noble/main amd64 libfcgi-perl amd64 0.82+ds-3build2 [21.7 kB]
###### Get:9 http://mirror.timeweb.ru/ubuntu noble/main amd64 libcgi-fast-perl all 1:2.17-1 [10.3 kB]
###### Get:10 http://mirror.timeweb.ru/ubuntu noble/main amd64 libclone-perl amd64 0.46-1build3 [10.7 kB]
###### Get:11 http://mirror.timeweb.ru/ubuntu noble/main amd64 libencode-locale-perl all 1.05-3 [11.6 kB]
###### Get:12 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 mysql-client-core-8.0 amd64 8.0.45-0ubuntu0.24.04.1 [2740 kB]
###### Get:13 http://mirror.timeweb.ru/ubuntu noble/main amd64 libhtml-template-perl all 2.97-2 [60.2 kB]
###### Get:14 http://mirror.timeweb.ru/ubuntu noble/main amd64 libtimedate-perl all 2.3300-2 [34.0 kB]
###### Get:15 http://mirror.timeweb.ru/ubuntu noble/main amd64 libhttp-date-perl all 6.06-1 [10.2 kB]
###### Get:16 http://mirror.timeweb.ru/ubuntu noble/main amd64 libio-html-perl all 1.004-3 [15.9 kB]
###### Get:17 http://mirror.timeweb.ru/ubuntu noble/main amd64 liblwp-mediatypes-perl all 6.04-2 [20.1 kB]
###### Get:18 http://mirror.timeweb.ru/ubuntu noble/main amd64 libhttp-message-perl all 6.45-1ubuntu1 [78.2 kB]
###### Get:19 http://mirror.timeweb.ru/ubuntu noble/main amd64 mecab-utils amd64 0.996-14ubuntu4 [4804 B]
###### Get:20 http://mirror.timeweb.ru/ubuntu noble/main amd64 mecab-ipadic all 2.7.0-20070801+main-3 [6718 kB]
###### Get:21 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 mysql-client-8.0 amd64 8.0.45-0ubuntu0.24.04.1 [22.5 kB]
###### Get:22 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libprotobuf-lite32t64 amd64 3.21.12-8.2ubuntu0.2 [238 kB]
###### Get:23 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 mysql-server-core-8.0 amd64 8.0.45-0ubuntu0.24.04.1 [17.6 MB]
###### Get:24 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 mysql-server-8.0 amd64 8.0.45-0ubuntu0.24.04.1 [1441 kB]
###### Get:25 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libfcgi0t64 amd64 2.4.2-2.1ubuntu0.24.04.1 [27.0 kB]
###### Get:26 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libfcgi-bin amd64 2.4.2-2.1ubuntu0.24.04.1 [11.2 kB]
###### Get:27 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 mysql-server all 8.0.45-0ubuntu0.24.04.1 [9524 B]
###### Get:28 http://mirror.timeweb.ru/ubuntu noble/main amd64 mecab-ipadic-utf8 all 2.7.0-20070801+main-3 [4384 B]
###### Preconfiguring packages ...
###### Fetched 29.6 MB in 2s (17.4 MB/s)
###### Selecting previously unselected package mysql-common.
###### (Reading database ... 
(Reading database ... 5%
(Reading database ... 10%
(Reading database ... 15%
(Reading database ... 20%
(Reading database ... 25%
(Reading database ... 30%
(Reading database ... 35%
(Reading database ... 40%
(Reading database ... 45%
(Reading database ... 50%
(Reading database ... 55%
(Reading database ... 60%
(Reading database ... 65%
(Reading database ... 70%
(Reading database ... 75%
(Reading database ... 80%
(Reading database ... 85%
(Reading database ... 90%
(Reading database ... 95%
(Reading database ... 100%
(Reading database ... 105308 files and directories currently installed.)
###### Preparing to unpack .../0-mysql-common_5.8+1.1.0build1_all.deb ...
###### Unpacking mysql-common (5.8+1.1.0build1) ...
###### Selecting previously unselected package mysql-client-core-8.0.
###### Preparing to unpack .../1-mysql-client-core-8.0_8.0.45-0ubuntu0.24.04.1_amd64.deb ...
###### Unpacking mysql-client-core-8.0 (8.0.45-0ubuntu0.24.04.1) ...
###### Selecting previously unselected package mysql-client-8.0.
###### Preparing to unpack .../2-mysql-client-8.0_8.0.45-0ubuntu0.24.04.1_amd64.deb ...
###### Unpacking mysql-client-8.0 (8.0.45-0ubuntu0.24.04.1) ...
###### Selecting previously unselected package libevent-pthreads-2.1-7t64:amd64.
###### Preparing to unpack .../3-libevent-pthreads-2.1-7t64_2.1.12-stable-9ubuntu2_amd64.deb ...
###### Unpacking libevent-pthreads-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2) ...
###### Selecting previously unselected package libmecab2:amd64.
###### Preparing to unpack .../4-libmecab2_0.996-14ubuntu4_amd64.deb ...
###### Unpacking libmecab2:amd64 (0.996-14ubuntu4) ...
###### Selecting previously unselected package libprotobuf-lite32t64:amd64.
###### Preparing to unpack .../5-libprotobuf-lite32t64_3.21.12-8.2ubuntu0.2_amd64.deb ...
###### Unpacking libprotobuf-lite32t64:amd64 (3.21.12-8.2ubuntu0.2) ...
###### Selecting previously unselected package mysql-server-core-8.0.
###### Preparing to unpack .../6-mysql-server-core-8.0_8.0.45-0ubuntu0.24.04.1_amd64.deb ...
###### Unpacking mysql-server-core-8.0 (8.0.45-0ubuntu0.24.04.1) ...
###### Setting up mysql-common (5.8+1.1.0build1) ...
###### update-alternatives: using /etc/mysql/my.cnf.fallback to provide /etc/mysql/my.cnf (my.cnf) in auto mode
###### Selecting previously unselected package mysql-server-8.0.
###### (Reading database ... 
(Reading database ... 5%
(Reading database ... 10%
(Reading database ... 15%
(Reading database ... 20%
(Reading database ... 25%
(Reading database ... 30%
(Reading database ... 35%
(Reading database ... 40%
(Reading database ... 45%
(Reading database ... 50%
(Reading database ... 55%
(Reading database ... 60%
(Reading database ... 65%
(Reading database ... 70%
(Reading database ... 75%
(Reading database ... 80%
(Reading database ... 85%
(Reading database ... 90%
(Reading database ... 95%
(Reading database ... 100%
(Reading database ... 105527 files and directories currently installed.)
###### Preparing to unpack .../00-mysql-server-8.0_8.0.45-0ubuntu0.24.04.1_amd64.deb ...
###### Unpacking mysql-server-8.0 (8.0.45-0ubuntu0.24.04.1) ...
###### Selecting previously unselected package libhtml-tagset-perl.
###### Preparing to unpack .../01-libhtml-tagset-perl_3.20-6_all.deb ...
###### Unpacking libhtml-tagset-perl (3.20-6) ...
###### Selecting previously unselected package liburi-perl.
###### Preparing to unpack .../02-liburi-perl_5.27-1_all.deb ...
###### Unpacking liburi-perl (5.27-1) ...
###### Selecting previously unselected package libhtml-parser-perl:amd64.
###### Preparing to unpack .../03-libhtml-parser-perl_3.81-1build3_amd64.deb ...
###### Unpacking libhtml-parser-perl:amd64 (3.81-1build3) ...
###### Selecting previously unselected package libcgi-pm-perl.
###### Preparing to unpack .../04-libcgi-pm-perl_4.63-1_all.deb ...
###### Unpacking libcgi-pm-perl (4.63-1) ...
###### Selecting previously unselected package libfcgi0t64:amd64.
###### Preparing to unpack .../05-libfcgi0t64_2.4.2-2.1ubuntu0.24.04.1_amd64.deb ...
###### Unpacking libfcgi0t64:amd64 (2.4.2-2.1ubuntu0.24.04.1) ...
###### Selecting previously unselected package libfcgi-perl.
###### Preparing to unpack .../06-libfcgi-perl_0.82+ds-3build2_amd64.deb ...
###### Unpacking libfcgi-perl (0.82+ds-3build2) ...
###### Selecting previously unselected package libcgi-fast-perl.
###### Preparing to unpack .../07-libcgi-fast-perl_1%3a2.17-1_all.deb ...
###### Unpacking libcgi-fast-perl (1:2.17-1) ...
###### Selecting previously unselected package libclone-perl:amd64.
###### Preparing to unpack .../08-libclone-perl_0.46-1build3_amd64.deb ...
###### Unpacking libclone-perl:amd64 (0.46-1build3) ...
###### Selecting previously unselected package libencode-locale-perl.
###### Preparing to unpack .../09-libencode-locale-perl_1.05-3_all.deb ...
###### Unpacking libencode-locale-perl (1.05-3) ...
###### Selecting previously unselected package libfcgi-bin.
###### Preparing to unpack .../10-libfcgi-bin_2.4.2-2.1ubuntu0.24.04.1_amd64.deb ...
###### Unpacking libfcgi-bin (2.4.2-2.1ubuntu0.24.04.1) ...
###### Selecting previously unselected package libhtml-template-perl.
###### Preparing to unpack .../11-libhtml-template-perl_2.97-2_all.deb ...
###### Unpacking libhtml-template-perl (2.97-2) ...
###### Selecting previously unselected package libtimedate-perl.
###### Preparing to unpack .../12-libtimedate-perl_2.3300-2_all.deb ...
###### Unpacking libtimedate-perl (2.3300-2) ...
###### Selecting previously unselected package libhttp-date-perl.
###### Preparing to unpack .../13-libhttp-date-perl_6.06-1_all.deb ...
###### Unpacking libhttp-date-perl (6.06-1) ...
###### Selecting previously unselected package libio-html-perl.
###### Preparing to unpack .../14-libio-html-perl_1.004-3_all.deb ...
###### Unpacking libio-html-perl (1.004-3) ...
###### Selecting previously unselected package liblwp-mediatypes-perl.
###### Preparing to unpack .../15-liblwp-mediatypes-perl_6.04-2_all.deb ...
###### Unpacking liblwp-mediatypes-perl (6.04-2) ...
###### Selecting previously unselected package libhttp-message-perl.
###### Preparing to unpack .../16-libhttp-message-perl_6.45-1ubuntu1_all.deb ...
###### Unpacking libhttp-message-perl (6.45-1ubuntu1) ...
###### Selecting previously unselected package mecab-utils.
###### Preparing to unpack .../17-mecab-utils_0.996-14ubuntu4_amd64.deb ...
###### Unpacking mecab-utils (0.996-14ubuntu4) ...
###### Selecting previously unselected package mecab-ipadic.
###### Preparing to unpack .../18-mecab-ipadic_2.7.0-20070801+main-3_all.deb ...
###### Unpacking mecab-ipadic (2.7.0-20070801+main-3) ...
###### Selecting previously unselected package mecab-ipadic-utf8.
###### Preparing to unpack .../19-mecab-ipadic-utf8_2.7.0-20070801+main-3_all.deb ...
###### Unpacking mecab-ipadic-utf8 (2.7.0-20070801+main-3) ...
###### Selecting previously unselected package mysql-server.
###### Preparing to unpack .../20-mysql-server_8.0.45-0ubuntu0.24.04.1_all.deb ...
###### Unpacking mysql-server (8.0.45-0ubuntu0.24.04.1) ...
###### Setting up libprotobuf-lite32t64:amd64 (3.21.12-8.2ubuntu0.2) ...
###### Setting up libmecab2:amd64 (0.996-14ubuntu4) ...
###### Setting up mysql-client-core-8.0 (8.0.45-0ubuntu0.24.04.1) ...
###### Setting up libclone-perl:amd64 (0.46-1build3) ...
###### Setting up libevent-pthreads-2.1-7t64:amd64 (2.1.12-stable-9ubuntu2) ...
###### Setting up libfcgi0t64:amd64 (2.4.2-2.1ubuntu0.24.04.1) ...
###### Setting up libhtml-tagset-perl (3.20-6) ...
###### Setting up liblwp-mediatypes-perl (6.04-2) ...
###### Setting up libfcgi-bin (2.4.2-2.1ubuntu0.24.04.1) ...
###### Setting up libencode-locale-perl (1.05-3) ...
###### Setting up mecab-utils (0.996-14ubuntu4) ...
###### Setting up libio-html-perl (1.004-3) ...
###### Setting up mysql-server-core-8.0 (8.0.45-0ubuntu0.24.04.1) ...
###### Setting up libtimedate-perl (2.3300-2) ...
###### Setting up mysql-client-8.0 (8.0.45-0ubuntu0.24.04.1) ...
###### Setting up libfcgi-perl (0.82+ds-3build2) ...
###### Setting up liburi-perl (5.27-1) ...
###### Setting up mysql-server-8.0 (8.0.45-0ubuntu0.24.04.1) ...
###### update-alternatives: using /etc/mysql/mysql.cnf to provide /etc/mysql/my.cnf (my.cnf) in auto mode
###### Renaming removed key_buffer and myisam-recover options (if present)
###### mysqld will log errors to /var/log/mysql/error.log
###### mysqld is running as pid 2927
###### Created symlink /etc/systemd/system/multi-user.target.wants/mysql.service → /usr/lib/systemd/system/mysql.service.

###### Setting up libhttp-date-perl (6.06-1) ...
###### Setting up mecab-ipadic (2.7.0-20070801+main-3) ...
###### Compiling IPA dictionary for Mecab.  This takes long time...
###### reading /usr/share/mecab/dic/ipadic/unk.def ... 40
###### emitting double-array:   9% |###                                        | 
emitting double-array:  18% |#######                                    | 
emitting double-array:  27% |###########                                | 
emitting double-array:  36% |###############                            | 
emitting double-array:  45% |###################                        | 
emitting double-array:  54% |#######################                    | 
emitting double-array:  63% |###########################                | 
emitting double-array:  72% |###############################            | 
emitting double-array:  81% |###################################        | 
emitting double-array:  90% |#######################################    | 
emitting double-array: 100% |###########################################| 
###### /usr/share/mecab/dic/ipadic/model.def is not found. skipped.
###### reading /usr/share/mecab/dic/ipadic/Noun.others.csv ... 151
###### reading /usr/share/mecab/dic/ipadic/Postp-col.csv ... 91
###### reading /usr/share/mecab/dic/ipadic/Others.csv ... 2
###### reading /usr/share/mecab/dic/ipadic/Conjunction.csv ... 171
###### reading /usr/share/mecab/dic/ipadic/Adverb.csv ... 3032
###### reading /usr/share/mecab/dic/ipadic/Prefix.csv ... 221
###### reading /usr/share/mecab/dic/ipadic/Symbol.csv ... 208
###### reading /usr/share/mecab/dic/ipadic/Noun.name.csv ... 34202
###### reading /usr/share/mecab/dic/ipadic/Noun.adjv.csv ... 3328
###### reading /usr/share/mecab/dic/ipadic/Filler.csv ... 19
###### reading /usr/share/mecab/dic/ipadic/Noun.proper.csv ... 27328
###### reading /usr/share/mecab/dic/ipadic/Postp.csv ... 146
###### reading /usr/share/mecab/dic/ipadic/Noun.place.csv ... 72999
###### reading /usr/share/mecab/dic/ipadic/Noun.adverbal.csv ... 795
###### reading /usr/share/mecab/dic/ipadic/Noun.verbal.csv ... 12146
###### reading /usr/share/mecab/dic/ipadic/Adj.csv ... 27210
###### reading /usr/share/mecab/dic/ipadic/Noun.csv ... 60477
###### reading /usr/share/mecab/dic/ipadic/Noun.demonst.csv ... 120
###### reading /usr/share/mecab/dic/ipadic/Auxil.csv ... 199
###### reading /usr/share/mecab/dic/ipadic/Noun.nai.csv ... 42
###### reading /usr/share/mecab/dic/ipadic/Adnominal.csv ... 135
###### reading /usr/share/mecab/dic/ipadic/Interjection.csv ... 252
###### reading /usr/share/mecab/dic/ipadic/Noun.number.csv ... 42
###### reading /usr/share/mecab/dic/ipadic/Verb.csv ... 130750
###### reading /usr/share/mecab/dic/ipadic/Noun.org.csv ... 16668
###### reading /usr/share/mecab/dic/ipadic/Suffix.csv ... 1393
###### emitting double-array:   0% |                                           | 
emitting double-array:   1% |                                           | 
emitting double-array:   2% |                                           | 
emitting double-array:   3% |#                                          | 
emitting double-array:   4% |#                                          | 
emitting double-array:   5% |##                                         | 
emitting double-array:   6% |##                                         | 
emitting double-array:   7% |###                                        | 
emitting double-array:   8% |###                                        | 
emitting double-array:   9% |###                                        | 
emitting double-array:  10% |####                                       | 
emitting double-array:  11% |####                                       | 
emitting double-array:  12% |#####                                      | 
emitting double-array:  13% |#####                                      | 
emitting double-array:  14% |######                                     | 
emitting double-array:  15% |######                                     | 
emitting double-array:  16% |######                                     | 
emitting double-array:  17% |#######                                    | 
emitting double-array:  18% |#######                                    | 
emitting double-array:  19% |########                                   | 
emitting double-array:  20% |########                                   | 
emitting double-array:  21% |#########                                  | 
emitting double-array:  22% |#########                                  | 
emitting double-array:  23% |#########                                  | 
emitting double-array:  24% |##########                                 | 
emitting double-array:  25% |##########                                 | 
emitting double-array:  26% |###########                                | 
emitting double-array:  27% |###########                                | 
emitting double-array:  28% |############                               | 
emitting double-array:  29% |############                               | 
emitting double-array:  30% |############                               | 
emitting double-array:  31% |#############                              | 
emitting double-array:  32% |#############                              | 
emitting double-array:  33% |##############                             | 
emitting double-array:  34% |##############                             | 
emitting double-array:  35% |###############                            | 
emitting double-array:  36% |###############                            | 
emitting double-array:  37% |###############                            | 
emitting double-array:  38% |################                           | 
emitting double-array:  39% |################                           | 
emitting double-array:  40% |#################                          | 
emitting double-array:  41% |#################                          | 
emitting double-array:  42% |##################                         | 
emitting double-array:  43% |##################                         | 
emitting double-array:  44% |##################                         | 
emitting double-array:  45% |###################                        | 
emitting double-array:  46% |###################                        | 
emitting double-array:  47% |####################                       | 
emitting double-array:  48% |####################                       | 
emitting double-array:  49% |#####################                      | 
emitting double-array:  50% |#####################                      | 
emitting double-array:  51% |#####################                      | 
emitting double-array:  52% |######################                     | 
emitting double-array:  53% |######################                     | 
emitting double-array:  54% |#######################                    | 
emitting double-array:  55% |#######################                    | 
emitting double-array:  56% |########################                   | 
emitting double-array:  57% |########################                   | 
emitting double-array:  58% |########################                   | 
emitting double-array:  59% |#########################                  | 
emitting double-array:  60% |#########################                  | 
emitting double-array:  61% |##########################                 | 
emitting double-array:  62% |##########################                 | 
emitting double-array:  63% |###########################                | 
emitting double-array:  64% |###########################                | 
emitting double-array:  65% |###########################                | 
emitting double-array:  66% |############################               | 
emitting double-array:  67% |############################               | 
emitting double-array:  68% |#############################              | 
emitting double-array:  69% |#############################              | 
emitting double-array:  70% |##############################             | 
emitting double-array:  71% |##############################             | 
emitting double-array:  72% |##############################             | 
emitting double-array:  73% |###############################            | 
emitting double-array:  74% |###############################            | 
emitting double-array:  75% |################################           | 
emitting double-array:  76% |################################           | 
emitting double-array:  77% |#################################          | 
emitting double-array:  78% |#################################          | 
emitting double-array:  79% |#################################          | 
emitting double-array:  80% |##################################         | 
emitting double-array:  81% |##################################         | 
emitting double-array:  82% |###################################        | 
emitting double-array:  83% |###################################        | 
emitting double-array:  84% |####################################       | 
emitting double-array:  85% |####################################       | 
emitting double-array:  86% |####################################       | 
emitting double-array:  87% |#####################################      | 
emitting double-array:  88% |#####################################      | 
emitting double-array:  89% |######################################     | 
emitting double-array:  90% |######################################     | 
emitting double-array:  91% |#######################################    | 
emitting double-array:  92% |#######################################    | 
emitting double-array:  93% |#######################################    | 
emitting double-array:  94% |########################################   | 
emitting double-array:  95% |########################################   | 
emitting double-array:  96% |#########################################  | 
emitting double-array:  97% |#########################################  | 
emitting double-array:  98% |########################################## | 
emitting double-array:  99% |########################################## | 
emitting double-array: 100% |###########################################| 
###### reading /usr/share/mecab/dic/ipadic/matrix.def ... 1316x1316
###### emitting matrix      :   0% |                                           | 
emitting matrix      :   1% |                                           | 
emitting matrix      :   2% |                                           | 
emitting matrix      :   3% |#                                          | 
emitting matrix      :   4% |#                                          | 
emitting matrix      :   5% |##                                         | 
emitting matrix      :   6% |##                                         | 
emitting matrix      :   7% |###                                        | 
emitting matrix      :   8% |###                                        | 
emitting matrix      :   9% |###                                        | 
emitting matrix      :  10% |####                                       | 
emitting matrix      :  11% |####                                       | 
emitting matrix      :  12% |#####                                      | 
emitting matrix      :  13% |#####                                      | 
emitting matrix      :  14% |######                                     | 
emitting matrix      :  15% |######                                     | 
emitting matrix      :  16% |######                                     | 
emitting matrix      :  17% |#######                                    | 
emitting matrix      :  18% |#######                                    | 
emitting matrix      :  19% |########                                   | 
emitting matrix      :  20% |########                                   | 
emitting matrix      :  21% |#########                                  | 
emitting matrix      :  22% |#########                                  | 
emitting matrix      :  23% |#########                                  | 
emitting matrix      :  24% |##########                                 | 
emitting matrix      :  25% |##########                                 | 
emitting matrix      :  26% |###########                                | 
emitting matrix      :  27% |###########                                | 
emitting matrix      :  28% |############                               | 
emitting matrix      :  29% |############                               | 
emitting matrix      :  30% |############                               | 
emitting matrix      :  31% |#############                              | 
emitting matrix      :  32% |#############                              | 
emitting matrix      :  33% |##############                             | 
emitting matrix      :  34% |##############                             | 
emitting matrix      :  35% |###############                            | 
emitting matrix      :  36% |###############                            | 
emitting matrix      :  37% |###############                            | 
emitting matrix      :  38% |################                           | 
emitting matrix      :  39% |################                           | 
emitting matrix      :  40% |#################                          | 
emitting matrix      :  41% |#################                          | 
emitting matrix      :  42% |##################                         | 
emitting matrix      :  43% |##################                         | 
emitting matrix      :  44% |##################                         | 
emitting matrix      :  45% |###################                        | 
emitting matrix      :  46% |###################                        | 
emitting matrix      :  47% |####################                       | 
emitting matrix      :  48% |####################                       | 
emitting matrix      :  49% |#####################                      | 
emitting matrix      :  50% |#####################                      | 
emitting matrix      :  51% |#####################                      | 
emitting matrix      :  52% |######################                     | 
emitting matrix      :  53% |######################                     | 
emitting matrix      :  54% |#######################                    | 
emitting matrix      :  55% |#######################                    | 
emitting matrix      :  56% |########################                   | 
emitting matrix      :  57% |########################                   | 
emitting matrix      :  58% |########################                   | 
emitting matrix      :  59% |#########################                  | 
emitting matrix      :  60% |#########################                  | 
emitting matrix      :  61% |##########################                 | 
emitting matrix      :  62% |##########################                 | 
emitting matrix      :  63% |###########################                | 
emitting matrix      :  64% |###########################                | 
emitting matrix      :  65% |###########################                | 
emitting matrix      :  66% |############################               | 
emitting matrix      :  67% |############################               | 
emitting matrix      :  68% |#############################              | 
emitting matrix      :  69% |#############################              | 
emitting matrix      :  70% |##############################             | 
emitting matrix      :  71% |##############################             | 
emitting matrix      :  72% |##############################             | 
emitting matrix      :  73% |###############################            | 
emitting matrix      :  74% |###############################            | 
emitting matrix      :  75% |################################           | 
emitting matrix      :  76% |################################           | 
emitting matrix      :  77% |#################################          | 
emitting matrix      :  78% |#################################          | 
emitting matrix      :  79% |#################################          | 
emitting matrix      :  80% |##################################         | 
emitting matrix      :  81% |##################################         | 
emitting matrix      :  82% |###################################        | 
emitting matrix      :  83% |###################################        | 
emitting matrix      :  84% |####################################       | 
emitting matrix      :  85% |####################################       | 
emitting matrix      :  86% |####################################       | 
emitting matrix      :  87% |#####################################      | 
emitting matrix      :  88% |#####################################      | 
emitting matrix      :  89% |######################################     | 
emitting matrix      :  90% |######################################     | 
emitting matrix      :  91% |#######################################    | 
emitting matrix      :  92% |#######################################    | 
emitting matrix      :  93% |#######################################    | 
emitting matrix      :  94% |########################################   | 
emitting matrix      :  95% |########################################   | 
emitting matrix      :  96% |#########################################  | 
emitting matrix      :  97% |#########################################  | 
emitting matrix      :  98% |########################################## | 
emitting matrix      :  99% |########################################## | 
emitting matrix      : 100% |###########################################| 
###### 
###### done!
###### update-alternatives: using /var/lib/mecab/dic/ipadic to provide /var/lib/mecab/dic/debian (mecab-dictionary) in auto mode
###### Setting up mecab-ipadic-utf8 (2.7.0-20070801+main-3) ...
###### Compiling IPA dictionary for Mecab.  This takes long time...
###### reading /usr/share/mecab/dic/ipadic/unk.def ... 40
###### emitting double-array:   9% |###                                        | 
emitting double-array:  18% |#######                                    | 
emitting double-array:  27% |###########                                | 
emitting double-array:  36% |###############                            | 
emitting double-array:  45% |###################                        | 
emitting double-array:  54% |#######################                    | 
emitting double-array:  63% |###########################                | 
emitting double-array:  72% |###############################            | 
emitting double-array:  81% |###################################        | 
emitting double-array:  90% |#######################################    | 
emitting double-array: 100% |###########################################| 
###### /usr/share/mecab/dic/ipadic/model.def is not found. skipped.
###### reading /usr/share/mecab/dic/ipadic/Noun.others.csv ... 151
###### reading /usr/share/mecab/dic/ipadic/Postp-col.csv ... 91
###### reading /usr/share/mecab/dic/ipadic/Others.csv ... 2
###### reading /usr/share/mecab/dic/ipadic/Conjunction.csv ... 171
###### reading /usr/share/mecab/dic/ipadic/Adverb.csv ... 3032
###### reading /usr/share/mecab/dic/ipadic/Prefix.csv ... 221
###### reading /usr/share/mecab/dic/ipadic/Symbol.csv ... 208
###### reading /usr/share/mecab/dic/ipadic/Noun.name.csv ... 34202
###### reading /usr/share/mecab/dic/ipadic/Noun.adjv.csv ... 3328
###### reading /usr/share/mecab/dic/ipadic/Filler.csv ... 19
###### reading /usr/share/mecab/dic/ipadic/Noun.proper.csv ... 27328
###### reading /usr/share/mecab/dic/ipadic/Postp.csv ... 146
###### reading /usr/share/mecab/dic/ipadic/Noun.place.csv ... 72999
###### reading /usr/share/mecab/dic/ipadic/Noun.adverbal.csv ... 795
###### reading /usr/share/mecab/dic/ipadic/Noun.verbal.csv ... 12146
###### reading /usr/share/mecab/dic/ipadic/Adj.csv ... 27210
###### reading /usr/share/mecab/dic/ipadic/Noun.csv ... 60477
###### reading /usr/share/mecab/dic/ipadic/Noun.demonst.csv ... 120
###### reading /usr/share/mecab/dic/ipadic/Auxil.csv ... 199
###### reading /usr/share/mecab/dic/ipadic/Noun.nai.csv ... 42
###### reading /usr/share/mecab/dic/ipadic/Adnominal.csv ... 135
###### reading /usr/share/mecab/dic/ipadic/Interjection.csv ... 252
###### reading /usr/share/mecab/dic/ipadic/Noun.number.csv ... 42
###### reading /usr/share/mecab/dic/ipadic/Verb.csv ... 130750
###### reading /usr/share/mecab/dic/ipadic/Noun.org.csv ... 16668
###### reading /usr/share/mecab/dic/ipadic/Suffix.csv ... 1393
###### emitting double-array:   0% |                                           | 
emitting double-array:   1% |                                           | 
emitting double-array:   2% |                                           | 
emitting double-array:   3% |#                                          | 
emitting double-array:   4% |#                                          | 
emitting double-array:   5% |##                                         | 
emitting double-array:   6% |##                                         | 
emitting double-array:   7% |###                                        | 
emitting double-array:   8% |###                                        | 
emitting double-array:   9% |###                                        | 
emitting double-array:  10% |####                                       | 
emitting double-array:  11% |####                                       | 
emitting double-array:  12% |#####                                      | 
emitting double-array:  13% |#####                                      | 
emitting double-array:  14% |######                                     | 
emitting double-array:  15% |######                                     | 
emitting double-array:  16% |######                                     | 
emitting double-array:  17% |#######                                    | 
emitting double-array:  18% |#######                                    | 
emitting double-array:  19% |########                                   | 
emitting double-array:  20% |########                                   | 
emitting double-array:  21% |#########                                  | 
emitting double-array:  22% |#########                                  | 
emitting double-array:  23% |#########                                  | 
emitting double-array:  24% |##########                                 | 
emitting double-array:  25% |##########                                 | 
emitting double-array:  26% |###########                                | 
emitting double-array:  27% |###########                                | 
emitting double-array:  28% |############                               | 
emitting double-array:  29% |############                               | 
emitting double-array:  30% |############                               | 
emitting double-array:  31% |#############                              | 
emitting double-array:  32% |#############                              | 
emitting double-array:  33% |##############                             | 
emitting double-array:  34% |##############                             | 
emitting double-array:  35% |###############                            | 
emitting double-array:  36% |###############                            | 
emitting double-array:  37% |###############                            | 
emitting double-array:  38% |################                           | 
emitting double-array:  39% |################                           | 
emitting double-array:  40% |#################                          | 
emitting double-array:  41% |#################                          | 
emitting double-array:  42% |##################                         | 
emitting double-array:  43% |##################                         | 
emitting double-array:  44% |##################                         | 
emitting double-array:  45% |###################                        | 
emitting double-array:  46% |###################                        | 
emitting double-array:  47% |####################                       | 
emitting double-array:  48% |####################                       | 
emitting double-array:  49% |#####################                      | 
emitting double-array:  50% |#####################                      | 
emitting double-array:  51% |#####################                      | 
emitting double-array:  52% |######################                     | 
emitting double-array:  53% |######################                     | 
emitting double-array:  54% |#######################                    | 
emitting double-array:  55% |#######################                    | 
emitting double-array:  56% |########################                   | 
emitting double-array:  57% |########################                   | 
emitting double-array:  58% |########################                   | 
emitting double-array:  59% |#########################                  | 
emitting double-array:  60% |#########################                  | 
emitting double-array:  61% |##########################                 | 
emitting double-array:  62% |##########################                 | 
emitting double-array:  63% |###########################                | 
emitting double-array:  64% |###########################                | 
emitting double-array:  65% |###########################                | 
emitting double-array:  66% |############################               | 
emitting double-array:  67% |############################               | 
emitting double-array:  68% |#############################              | 
emitting double-array:  69% |#############################              | 
emitting double-array:  70% |##############################             | 
emitting double-array:  71% |##############################             | 
emitting double-array:  72% |##############################             | 
emitting double-array:  73% |###############################            | 
emitting double-array:  74% |###############################            | 
emitting double-array:  75% |################################           | 
emitting double-array:  76% |################################           | 
emitting double-array:  77% |#################################          | 
emitting double-array:  78% |#################################          | 
emitting double-array:  79% |#################################          | 
emitting double-array:  80% |##################################         | 
emitting double-array:  81% |##################################         | 
emitting double-array:  82% |###################################        | 
emitting double-array:  83% |###################################        | 
emitting double-array:  84% |####################################       | 
emitting double-array:  85% |####################################       | 
emitting double-array:  86% |####################################       | 
emitting double-array:  87% |#####################################      | 
emitting double-array:  88% |#####################################      | 
emitting double-array:  89% |######################################     | 
emitting double-array:  90% |######################################     | 
emitting double-array:  91% |#######################################    | 
emitting double-array:  92% |#######################################    | 
emitting double-array:  93% |#######################################    | 
emitting double-array:  94% |########################################   | 
emitting double-array:  95% |########################################   | 
emitting double-array:  96% |#########################################  | 
emitting double-array:  97% |#########################################  | 
emitting double-array:  98% |########################################## | 
emitting double-array:  99% |########################################## | 
emitting double-array: 100% |###########################################| 
###### reading /usr/share/mecab/dic/ipadic/matrix.def ... 1316x1316
###### emitting matrix      :   0% |                                           | 
emitting matrix      :   1% |                                           | 
emitting matrix      :   2% |                                           | 
emitting matrix      :   3% |#                                          | 
emitting matrix      :   4% |#                                          | 
emitting matrix      :   5% |##                                         | 
emitting matrix      :   6% |##                                         | 
emitting matrix      :   7% |###                                        | 
emitting matrix      :   8% |###                                        | 
emitting matrix      :   9% |###                                        | 
emitting matrix      :  10% |####                                       | 
emitting matrix      :  11% |####                                       | 
emitting matrix      :  12% |#####                                      | 
emitting matrix      :  13% |#####                                      | 
emitting matrix      :  14% |######                                     | 
emitting matrix      :  15% |######                                     | 
emitting matrix      :  16% |######                                     | 
emitting matrix      :  17% |#######                                    | 
emitting matrix      :  18% |#######                                    | 
emitting matrix      :  19% |########                                   | 
emitting matrix      :  20% |########                                   | 
emitting matrix      :  21% |#########                                  | 
emitting matrix      :  22% |#########                                  | 
emitting matrix      :  23% |#########                                  | 
emitting matrix      :  24% |##########                                 | 
emitting matrix      :  25% |##########                                 | 
emitting matrix      :  26% |###########                                | 
emitting matrix      :  27% |###########                                | 
emitting matrix      :  28% |############                               | 
emitting matrix      :  29% |############                               | 
emitting matrix      :  30% |############                               | 
emitting matrix      :  31% |#############                              | 
emitting matrix      :  32% |#############                              | 
emitting matrix      :  33% |##############                             | 
emitting matrix      :  34% |##############                             | 
emitting matrix      :  35% |###############                            | 
emitting matrix      :  36% |###############                            | 
emitting matrix      :  37% |###############                            | 
emitting matrix      :  38% |################                           | 
emitting matrix      :  39% |################                           | 
emitting matrix      :  40% |#################                          | 
emitting matrix      :  41% |#################                          | 
emitting matrix      :  42% |##################                         | 
emitting matrix      :  43% |##################                         | 
emitting matrix      :  44% |##################                         | 
emitting matrix      :  45% |###################                        | 
emitting matrix      :  46% |###################                        | 
emitting matrix      :  47% |####################                       | 
emitting matrix      :  48% |####################                       | 
emitting matrix      :  49% |#####################                      | 
emitting matrix      :  50% |#####################                      | 
emitting matrix      :  51% |#####################                      | 
emitting matrix      :  52% |######################                     | 
emitting matrix      :  53% |######################                     | 
emitting matrix      :  54% |#######################                    | 
emitting matrix      :  55% |#######################                    | 
emitting matrix      :  56% |########################                   | 
emitting matrix      :  57% |########################                   | 
emitting matrix      :  58% |########################                   | 
emitting matrix      :  59% |#########################                  | 
emitting matrix      :  60% |#########################                  | 
emitting matrix      :  61% |##########################                 | 
emitting matrix      :  62% |##########################                 | 
emitting matrix      :  63% |###########################                | 
emitting matrix      :  64% |###########################                | 
emitting matrix      :  65% |###########################                | 
emitting matrix      :  66% |############################               | 
emitting matrix      :  67% |############################               | 
emitting matrix      :  68% |#############################              | 
emitting matrix      :  69% |#############################              | 
emitting matrix      :  70% |##############################             | 
emitting matrix      :  71% |##############################             | 
emitting matrix      :  72% |##############################             | 
emitting matrix      :  73% |###############################            | 
emitting matrix      :  74% |###############################            | 
emitting matrix      :  75% |################################           | 
emitting matrix      :  76% |################################           | 
emitting matrix      :  77% |#################################          | 
emitting matrix      :  78% |#################################          | 
emitting matrix      :  79% |#################################          | 
emitting matrix      :  80% |##################################         | 
emitting matrix      :  81% |##################################         | 
emitting matrix      :  82% |###################################        | 
emitting matrix      :  83% |###################################        | 
emitting matrix      :  84% |####################################       | 
emitting matrix      :  85% |####################################       | 
emitting matrix      :  86% |####################################       | 
emitting matrix      :  87% |#####################################      | 
emitting matrix      :  88% |#####################################      | 
emitting matrix      :  89% |######################################     | 
emitting matrix      :  90% |######################################     | 
emitting matrix      :  91% |#######################################    | 
emitting matrix      :  92% |#######################################    | 
emitting matrix      :  93% |#######################################    | 
emitting matrix      :  94% |########################################   | 
emitting matrix      :  95% |########################################   | 
emitting matrix      :  96% |#########################################  | 
emitting matrix      :  97% |#########################################  | 
emitting matrix      :  98% |########################################## | 
emitting matrix      :  99% |########################################## | 
emitting matrix      : 100% |###########################################| 
###### 
###### done!
###### update-alternatives: using /var/lib/mecab/dic/ipadic-utf8 to provide /var/lib/mecab/dic/debian (mecab-dictionary) in auto mode
###### Setting up libhtml-parser-perl:amd64 (3.81-1build3) ...
###### Setting up libhttp-message-perl (6.45-1ubuntu1) ...
###### Setting up mysql-server (8.0.45-0ubuntu0.24.04.1) ...
###### Setting up libcgi-pm-perl (4.63-1) ...
###### Setting up libhtml-template-perl (2.97-2) ...
###### Setting up libcgi-fast-perl (1:2.17-1) ...
###### Processing triggers for man-db (2.12.0-4build2) ...
###### Processing triggers for libc-bin (2.39-0ubuntu8.6) ...
2026-02-23 14:12:19 root: systemctl stop mysql
2026-02-23 14:12:29 root: systemctl disable mysql
###### Synchronizing state of mysql.service with SysV service script with /usr/lib/systemd/systemd-sysv-install.
###### Executing: /usr/lib/systemd/systemd-sysv-install disable mysql
###### Removed "/etc/systemd/system/multi-user.target.wants/mysql.service".
2026-02-23 14:12:41 root: mkdir -p /var/lib/mysql3306 /var/lib/mysql3307
2026-02-23 14:12:50 root: mkdir -p /etc/mysql/mysql3306.d /etc/mysql/mysql3307.d
2026-02-23 14:12:58 root: chown -R mysql:mysql /var/lib/mysql3306 /var/lib/mysql3307
2026-02-23 14:13:11 root: mysqld --initialize-insecure --user=mysql --basedir=/usr --datadir=/var/lib/mysql3306
###### mysqld: Can't create directory '/var/lib/mysql3306/' (OS errno 17 - File exists)
2026-02-23 14:15:03 root: mysqld --initialize-insecure --user=mysql --basedir=/usr --datadir=/var/lib/mysql3306 --console
2026-02-23 14:16:09 root: ls -la /var/lib/mysql3306/
###### total 79308
###### -rw-r-----  1 mysql mysql   196608 Feb 23 14:15 #ib_16384_0.dblwr
###### -rw-r-----  1 mysql mysql  8585216 Feb 23 14:15 #ib_16384_1.dblwr
###### drwxr-x---  2 mysql mysql     4096 Feb 23 14:15 #innodb_redo
###### drwxr-x---  2 mysql mysql     4096 Feb 23 14:15 #innodb_temp
###### drwxr-xr-x  7 mysql mysql     4096 Feb 23 14:15 .
###### drwxr-xr-x 49 root  root      4096 Feb 23 14:15 ..
###### -rw-r-----  1 mysql mysql       56 Feb 23 14:15 auto.cnf
###### -rw-------  1 mysql mysql     1705 Feb 23 14:15 ca-key.pem
###### -rw-r--r--  1 mysql mysql     1112 Feb 23 14:15 ca.pem
###### -rw-r--r--  1 mysql mysql     1112 Feb 23 14:15 client-cert.pem
###### -rw-------  1 mysql mysql     1705 Feb 23 14:15 client-key.pem
###### -rw-r-----  1 mysql mysql     5722 Feb 23 14:15 ib_buffer_pool
###### -rw-r-----  1 mysql mysql 12582912 Feb 23 14:15 ibdata1
###### drwxr-x---  2 mysql mysql     4096 Feb 23 14:15 mysql
###### -rw-r-----  1 mysql mysql 26214400 Feb 23 14:15 mysql.ibd
###### drwxr-x---  2 mysql mysql     4096 Feb 23 14:15 performance_schema
###### -rw-------  1 mysql mysql     1705 Feb 23 14:15 private_key.pem
###### -rw-r--r--  1 mysql mysql      452 Feb 23 14:15 public_key.pem
###### -rw-r--r--  1 mysql mysql     1112 Feb 23 14:15 server-cert.pem
###### -rw-------  1 mysql mysql     1705 Feb 23 14:15 server-key.pem
###### drwxr-x---  2 mysql mysql     4096 Feb 23 14:15 sys
###### -rw-r-----  1 mysql mysql 16777216 Feb 23 14:15 undo_001
###### -rw-r-----  1 mysql mysql 16777216 Feb 23 14:15 undo_002
2026-02-23 14:16:19 root: ls -la /var/lib/mysql3307/
###### total 79308
###### -rw-r-----  1 mysql mysql   196608 Feb 23 14:15 #ib_16384_0.dblwr
###### -rw-r-----  1 mysql mysql  8585216 Feb 23 14:15 #ib_16384_1.dblwr
###### drwxr-x---  2 mysql mysql     4096 Feb 23 14:15 #innodb_redo
###### drwxr-x---  2 mysql mysql     4096 Feb 23 14:15 #innodb_temp
###### drwxr-xr-x  7 mysql mysql     4096 Feb 23 14:15 .
###### drwxr-xr-x 49 root  root      4096 Feb 23 14:15 ..
###### -rw-r-----  1 mysql mysql       56 Feb 23 14:15 auto.cnf
###### -rw-------  1 mysql mysql     1705 Feb 23 14:15 ca-key.pem
###### -rw-r--r--  1 mysql mysql     1112 Feb 23 14:15 ca.pem
###### -rw-r--r--  1 mysql mysql     1112 Feb 23 14:15 client-cert.pem
###### -rw-------  1 mysql mysql     1701 Feb 23 14:15 client-key.pem
###### -rw-r-----  1 mysql mysql     5723 Feb 23 14:15 ib_buffer_pool
###### -rw-r-----  1 mysql mysql 12582912 Feb 23 14:15 ibdata1
###### drwxr-x---  2 mysql mysql     4096 Feb 23 14:15 mysql
###### -rw-r-----  1 mysql mysql 26214400 Feb 23 14:15 mysql.ibd
###### drwxr-x---  2 mysql mysql     4096 Feb 23 14:15 performance_schema
###### -rw-------  1 mysql mysql     1705 Feb 23 14:15 private_key.pem
###### -rw-r--r--  1 mysql mysql      452 Feb 23 14:15 public_key.pem
###### -rw-r--r--  1 mysql mysql     1112 Feb 23 14:15 server-cert.pem
###### -rw-------  1 mysql mysql     1705 Feb 23 14:15 server-key.pem
###### drwxr-x---  2 mysql mysql     4096 Feb 23 14:15 sys
###### -rw-r-----  1 mysql mysql 16777216 Feb 23 14:15 undo_001
###### -rw-r-----  1 mysql mysql 16777216 Feb 23 14:15 undo_002
2026-02-23 14:16:39 root: mkdir -p /var/log/mysql /var/run/mysqld
2026-02-23 14:16:45 root: chown mysql:mysql /var/log/mysql /var/run/mysqld
2026-02-23 14:16:51 root: mysqld_safe --defaults-file=/etc/mysql/mysql3306.d/my.cnf
###### Logging to '/var/log/mysql/error3306.log'.
###### 2026-02-23T14:16:52.036922Z mysqld_safe Starting mysqld daemon with databases from /var/lib/mysql3306
2026-02-23 14:17:08 root: mysqld_safe --defaults-file=/etc/mysql/mysql3307.d/my.cnf
###### Logging to '/var/log/mysql/error3307.log'.
###### 2026-02-23T14:17:08.857181Z mysqld_safe Starting mysqld daemon with databases from /var/lib/mysql3307
2026-02-23 14:17:22 root: ps aux
###### USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
###### root           1  0.6  0.6  22548 13520 ?        Ss   14:07   0:03 /sbin/init
###### root           2  0.0  0.0      0     0 ?        S    14:07   0:00 [kthreadd]
###### root           3  0.0  0.0      0     0 ?        S    14:07   0:00 [pool_workqueue_release]
###### root           4  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-rcu_g]
###### root           5  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-rcu_p]
###### root           6  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-slub_]
###### root           7  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-netns]
###### root           9  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/0:0H-events_highpri]
###### root          10  0.0  0.0      0     0 ?        I    14:07   0:00 [kworker/0:1-events]
###### root          11  0.1  0.0      0     0 ?        I    14:07   0:00 [kworker/u2:0-events_power_efficient]
###### root          12  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-mm_pe]
###### root          13  0.0  0.0      0     0 ?        I    14:07   0:00 [rcu_tasks_kthread]
###### root          14  0.0  0.0      0     0 ?        I    14:07   0:00 [rcu_tasks_rude_kthread]
###### root          15  0.0  0.0      0     0 ?        I    14:07   0:00 [rcu_tasks_trace_kthread]
###### root          16  0.0  0.0      0     0 ?        S    14:07   0:00 [ksoftirqd/0]
###### root          17  0.0  0.0      0     0 ?        I    14:07   0:00 [rcu_preempt]
###### root          18  0.0  0.0      0     0 ?        S    14:07   0:00 [migration/0]
###### root          19  0.0  0.0      0     0 ?        S    14:07   0:00 [idle_inject/0]
###### root          20  0.0  0.0      0     0 ?        S    14:07   0:00 [cpuhp/0]
###### root          21  0.0  0.0      0     0 ?        S    14:07   0:00 [kdevtmpfs]
###### root          22  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-inet_]
###### root          23  0.0  0.0      0     0 ?        S    14:07   0:00 [kauditd]
###### root          24  0.0  0.0      0     0 ?        S    14:07   0:00 [khungtaskd]
###### root          25  0.0  0.0      0     0 ?        S    14:07   0:00 [oom_reaper]
###### root          26  0.0  0.0      0     0 ?        I    14:07   0:00 [kworker/u2:1-events_power_efficient]
###### root          28  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-write]
###### root          29  0.0  0.0      0     0 ?        S    14:07   0:00 [kcompactd0]
###### root          30  0.0  0.0      0     0 ?        SN   14:07   0:00 [ksmd]
###### root          31  0.0  0.0      0     0 ?        SN   14:07   0:00 [khugepaged]
###### root          32  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-kinte]
###### root          33  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-kbloc]
###### root          34  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-blkcg]
###### root          35  0.0  0.0      0     0 ?        S    14:07   0:00 [irq/9-acpi]
###### root          36  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-tpm_d]
###### root          37  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-ata_s]
###### root          38  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-md]
###### root          39  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-md_bi]
###### root          40  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-edac-]
###### root          41  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-devfr]
###### root          42  0.0  0.0      0     0 ?        S    14:07   0:00 [watchdogd]
###### root          43  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/0:1H-kblockd]
###### root          44  0.0  0.0      0     0 ?        S    14:07   0:00 [kswapd0]
###### root          45  0.0  0.0      0     0 ?        S    14:07   0:00 [ecryptfs-kthread]
###### root          46  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-kthro]
###### root          47  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-acpi_]
###### root          48  0.0  0.0      0     0 ?        S    14:07   0:00 [scsi_eh_0]
###### root          49  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-scsi_]
###### root          50  0.0  0.0      0     0 ?        S    14:07   0:00 [scsi_eh_1]
###### root          51  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-scsi_]
###### root          52  0.0  0.0      0     0 ?        S    14:07   0:00 [scsi_eh_2]
###### root          53  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-scsi_]
###### root          54  0.0  0.0      0     0 ?        I    14:07   0:00 [kworker/u2:3-events_unbound]
###### root          55  0.0  0.0      0     0 ?        I    14:07   0:00 [kworker/u2:4-events_unbound]
###### root          56  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-mld]
###### root          57  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-ipv6_]
###### root          64  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-kstrp]
###### root          66  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/u3:0]
###### root          71  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-crypt]
###### root          73  0.0  0.0      0     0 ?        I    14:07   0:00 [kworker/0:3-cgroup_destroy]
###### root          82  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-charg]
###### root         175  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-raid5]
###### root         215  0.1  0.0      0     0 ?        S    14:07   0:00 [jbd2/sda1-8]
###### root         216  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-ext4-]
###### root         285  0.0  0.5  34108 10632 ?        S<s  14:07   0:00 /usr/lib/systemd/systemd-journald
###### root         304  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-kmpat]
###### root         305  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-kmpat]
###### root         332  0.1  1.3 289120 27392 ?        SLsl 14:07   0:00 /sbin/multipathd -d -s
###### root         348  0.0  0.3  25380  7136 ?        Ss   14:07   0:00 /usr/lib/systemd/systemd-udevd
###### root         356  0.0  0.0      0     0 ?        S    14:07   0:00 [psimon]
###### root         436  0.0  0.0      0     0 ?        S    14:07   0:00 [jbd2/sda16-8]
###### root         437  0.0  0.0      0     0 ?        I<   14:07   0:00 [kworker/R-ext4-]
###### systemd+     494  0.0  0.6  21584 12928 ?        Ss   14:07   0:00 /usr/lib/systemd/systemd-resolved
###### systemd+     648  0.0  0.4  19000  9472 ?        Ss   14:07   0:00 /usr/lib/systemd/systemd-networkd
###### root         773  0.0  0.1   7224  2688 ?        Ss   14:07   0:00 /usr/sbin/cron -f -P
###### message+     774  0.0  0.2   9668  5376 ?        Ss   14:07   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
###### root         804  0.0  0.2  80712  4096 ?        Ssl  14:07   0:00 /usr/sbin/qemu-ga
###### root         833  0.0  0.4  18160  8704 ?        Ss   14:07   0:00 /usr/lib/systemd/systemd-logind
###### zabbix       841  0.0  0.0   2256  1152 ?        Ss   14:07   0:00 /usr/sbin/zabbix_agentd --foreground
###### syslog       862  0.0  0.3 222508  6272 ?        Ssl  14:07   0:00 /usr/sbin/rsyslogd -n -iNONE
###### root         872  0.0  1.1 110012 22912 ?        Ssl  14:07   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
###### zabbix       909  0.0  0.0   2256  1152 ?        S    14:07   0:00 /usr/sbin/zabbix_agentd: collector [idle 1 sec]
###### zabbix       910  0.0  0.0   2256  1024 ?        S    14:07   0:00 /usr/sbin/zabbix_agentd: listener #1 [waiting for connection]
###### zabbix       911  0.0  0.0   2256  1024 ?        S    14:07   0:00 /usr/sbin/zabbix_agentd: listener #2 [waiting for connection]
###### zabbix       912  0.0  0.0   2256  1024 ?        S    14:07   0:00 /usr/sbin/zabbix_agentd: listener #3 [waiting for connection]
###### root        1369  0.0  0.4  12020  8064 ?        Ss   14:07   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
###### root        1375  0.0  0.1   6148  2048 ttyS0    Ss+  14:07   0:00 /sbin/agetty -o -p -- \u --keep-baud 115200,57600,38400,9600 - vt220
###### root        1379  0.0  0.0   6104  1920 tty1     Ss+  14:07   0:00 /sbin/agetty -o -p -- \u --noclear - linux
###### systemd+    1399  0.0  0.3  91024  7808 ?        Ssl  14:07   0:00 /usr/lib/systemd/systemd-timesyncd
###### root        1593  0.0  0.0      0     0 ?        I<   14:08   0:00 [kworker/R-tls-s]
###### polkitd     1931  0.0  0.3 308164  7808 ?        Ssl  14:08   0:00 /usr/lib/polkit-1/polkitd --no-debug
###### root        2011  0.4  0.5  14932 10624 ?        Ss   14:10   0:01 sshd: root@pts/0
###### root        2016  0.0  0.5  20264 11264 ?        Ss   14:10   0:00 /usr/lib/systemd/systemd --user
###### root        2017  0.0  0.1  21152  3372 ?        S    14:10   0:00 (sd-pam)
###### root        2022  0.0  0.0      0     0 ?        S    14:10   0:00 [psimon]
###### root        2082  0.0  0.2   9060  5248 pts/0    Ss   14:10   0:00 -bash
###### root        3167  0.6  2.1 602540 43184 ?        Ssl  14:12   0:02 /usr/libexec/fwupd/fwupd
###### root        3222  0.0  0.1  81808  2872 ?        Ss   14:12   0:00 gpg-agent --homedir /var/lib/fwupd/gnupg --use-standard-socket --daemon
###### root        3374  0.0  0.0      0     0 ?        S    14:12   0:00 [psimon]
###### root        3397  0.0  0.0      0     0 ?        I    14:13   0:00 [kworker/u2:2-events_power_efficient]
###### root        3632  0.0  0.1   9060  3632 pts/0    S    14:16   0:00 -bash
###### root        3634  0.0  0.1   9060  3376 pts/0    S    14:16   0:00 -bash
###### root        3635  0.0  0.1   9060  3632 pts/0    S    14:16   0:00 -bash
###### root        3636  0.0  0.0   2800  1920 pts/0    S    14:16   0:00 /bin/sh /usr/bin/mysqld_safe --defaults-file=/etc/mysql/mysql3306.d/my.cnf
###### mysql       3891  4.2 19.6 1325324 396852 pts/0  Sl   14:16   0:01 /usr/sbin/mysqld --defaults-file=/etc/mysql/mysql3306.d/my.cnf --basedir=/usr --datadir=/var/lib/mysql3306 --plugin-dir=/usr/lib/mysql/plugin --user=mysql --log-error=/var/log/mysql/error3306.log --pid-file=/var/run/mysqld/mysqld3306.pid --socket=/var/run/mysqld/mysqld3306.sock --port=3306
###### root        3937  0.0  0.1   9060  3632 pts/0    S    14:17   0:00 -bash
###### root        3939  0.0  0.1   9060  3376 pts/0    S    14:17   0:00 -bash
###### root        3940  0.0  0.0   2800  1920 pts/0    S    14:17   0:00 /bin/sh /usr/bin/mysqld_safe --defaults-file=/etc/mysql/mysql3307.d/my.cnf
###### root        3941  0.0  0.1   9060  3632 pts/0    S    14:17   0:00 -bash
###### mysql       4244 27.6 19.7 1323268 397368 pts/0  Sl   14:17   0:03 /usr/sbin/mysqld --defaults-file=/etc/mysql/mysql3307.d/my.cnf --basedir=/usr --datadir=/var/lib/mysql3307 --plugin-dir=/usr/lib/mysql/plugin --user=mysql --log-error=/var/log/mysql/error3307.log --pid-file=/var/run/mysqld/mysqld3307.pid --socket=/var/run/mysqld/mysqld3307.sock --port=3307
###### root        4246  0.0  0.0      0     0 ?        I    14:17   0:00 [kworker/0:0-events]
###### root        4287  0.0  0.1   9060  3632 pts/0    S+   14:17   0:00 -bash
###### root        4288  0.0  0.1   7076  2048 pts/0    S+   14:17   0:00 grep --color=auto mysqld
###### root        4290  0.0  0.1   9060  3248 pts/0    S+   14:17   0:00 -bash
###### root        4291  0.0  0.1   9060  3248 pts/0    S+   14:17   0:00 -bash
###### root        4292  100  0.2  11320  4352 pts/0    R+   14:17   0:00 ps aux
2026-02-23 14:17:50 root: mysql -S /var/run/mysqld/mysqld3306.sock
2026-02-23 14:19:59 root: mysql -S /var/run/mysqld/mysqld3307.sock
2026-02-23 14:21:07 root: mysql -S /var/run/mysqld/mysqld3306.sock -p -e USE bet; CREATE TABLE ignored (id INT); INSERT INTO ignored VALUES (1);
###### -bash: eval: line 9: syntax error near unexpected token `('
###### -bash: eval: line 9: `mysql -S /var/run/mysqld/mysqld3306.sock -p -e USE bet; CREATE TABLE ignored (id INT); INSERT INTO ignored VALUES (1);'
2026-02-23 14:21:14 root: mysql -S /var/run/mysqld/mysqld3307.sock -p -e USE bet; SHOW TABLES LIKE 'ignored';
###### ERROR at line 1: USE must be followed by a database name
###### SHOW: command not found
2026-02-23 14:22:24 root: mysql -S /var/run/mysqld/mysqld3306.sock -p -e INSERT INTO bet.bookmaker (name) VALUES ('Replication Check');
###### -bash: eval: line 9: syntax error near unexpected token `('
###### -bash: eval: line 9: `mysql -S /var/run/mysqld/mysqld3306.sock -p -e INSERT INTO bet.bookmaker (name) VALUES ('Replication Check');'
2026-02-23 14:22:55 root: cat /etc/mysql/mysql3306.d/my.cnf
###### [mysqld]
###### user = mysql
###### pid-file = /var/run/mysqld/mysqld3306.pid
###### socket = /var/run/mysqld/mysqld3306.sock
###### port = 3306
###### basedir = /usr
###### datadir = /var/lib/mysql3306
###### log_error = /var/log/mysql/error3306.log
###### 
###### server-id = 1
###### log_bin = /var/log/mysql/mysql-bin3306.log
###### binlog_format = ROW
###### gtid_mode = ON
###### enforce_gtid_consistency = ON
###### log_slave_updates = ON
###### expire_logs_days = 7
###### max_binlog_size = 100M
###### binlog_do_db = bet
###### 
###### [client]
###### socket = /var/run/mysqld/mysqld3306.sock
2026-02-23 14:23:02 root: cat /etc/mysql/mysql3307.d/my.cnf
###### [mysqld]
###### user = mysql
###### pid-file = /var/run/mysqld/mysqld3307.pid
###### socket = /var/run/mysqld/mysqld3307.sock
###### port = 3307
###### basedir = /usr
###### datadir = /var/lib/mysql3307
###### log_error = /var/log/mysql/error3307.log
###### 
###### server-id = 2
###### log_bin = /var/log/mysql/mysql-bin3307.log
###### binlog_format = ROW
###### gtid_mode = ON
###### enforce_gtid_consistency = ON
###### log_slave_updates = ON
###### expire_logs_days = 7
###### max_binlog_size = 100M
###### 
###### replicate-do-table = bet.bookmaker
###### replicate-do-table = bet.competition
###### replicate-do-table = bet.market
###### replicate-do-table = bet.odds
###### replicate-do-table = bet.outcome
###### 
###### [client]
###### socket = /var/run/mysqld/mysqld3307.sock
2026-02-23 14:23:12 root: mysql -S /var/run/mysqld/mysqld3306.sock -p -e USE bet; SHOW TABLES;
###### ERROR at line 1: USE must be followed by a database name
###### SHOW: command not found
2026-02-23 14:23:42 root: mysql -S /var/run/mysqld/mysqld3307.sock -p -e SHOW SLAVE STATUS\G
###### mysql  Ver 8.0.45-0ubuntu0.24.04.1 for Linux on x86_64 ((Ubuntu))
###### Copyright (c) 2000, 2026, Oracle and/or its affiliates.
###### 
###### Oracle is a registered trademark of Oracle Corporation and/or its
###### affiliates. Other names may be trademarks of their respective
###### owners.
###### 
###### Usage: mysql [OPTIONS] [database]
######   -?, --help          Display this help and exit.
######   -I, --help          Synonym for -?
######   --auto-rehash       Enable automatic rehashing. One doesn't need to use
######                       'rehash' to get table and field completion, but startup
######                       and reconnecting may take a longer time. Disable with
######                       --disable-auto-rehash.
######                       (Defaults to on; use --skip-auto-rehash to disable.)
######   -A, --no-auto-rehash 
######                       No automatic rehashing. One has to use 'rehash' to get
######                       table and field completion. This gives a quicker start of
######                       mysql and disables rehashing on reconnect.
######   --auto-vertical-output 
######                       Automatically switch to vertical output mode if the
######                       result is wider than the terminal width.
######   -B, --batch         Don't use history file. Disable interactive behavior.
######                       (Enables --silent.)
######   --bind-address=name IP address to bind to.
######   --binary-as-hex     Print binary data as hex. Enabled by default for
######                       interactive terminals.
######   --character-sets-dir=name 
######                       Directory for character set files.
######   --column-type-info  Display column type information.
######   --commands          Enable or disable processing of local mysql commands.
######                       (Defaults to on; use --skip-commands to disable.)
######   -c, --comments      Preserve comments. Send comments to the server. The
######                       default is --skip-comments (discard comments), enable
######                       with --comments.
######   -C, --compress      Use compression in server/client protocol.
######   -#, --debug[=#]     This is a non-debug version. Catch this and exit.
######   --debug-check       This is a non-debug version. Catch this and exit.
######   -T, --debug-info    This is a non-debug version. Catch this and exit.
######   -D, --database=name Database to use.
######   --default-character-set=name 
######                       Set the default character set.
######   --delimiter=name    Delimiter to be used.
######   --enable-cleartext-plugin 
######                       Enable/disable the clear text authentication plugin.
######   -e, --execute=name  Execute command and quit. (Disables --force and history
######                       file.)
######   -E, --vertical      Print the output of a query (rows) vertically.
######   -f, --force         Continue even if we get an SQL error.
######   --histignore=name   A colon-separated list of patterns to keep statements
######                       from getting logged into syslog and mysql history.
######   -G, --named-commands 
######                       Enable named commands. Named commands mean this program's
######                       internal commands; see mysql> help . When enabled, the
######                       named commands can be used from any line of the query,
######                       otherwise only from the first line, before an enter.
######                       Disable with --disable-named-commands. This option is
######                       disabled by default.
######   -i, --ignore-spaces Ignore space after function names.
######   --init-command=name SQL Command to execute when connecting to MySQL server.
######                       Will automatically be re-executed when reconnecting.
######   --local-infile      Enable/disable LOAD DATA LOCAL INFILE.
######   -b, --no-beep       Turn off beep on error.
######   -h, --host=name     Connect to host.
######   --dns-srv-name=name Connect to a DNS SRV resource
######   -H, --html          Produce HTML output.
######   -X, --xml           Produce XML output.
######   --line-numbers      Write line numbers for errors.
######                       (Defaults to on; use --skip-line-numbers to disable.)
######   -L, --skip-line-numbers 
######                       Don't write line number for errors.
######   -n, --unbuffered    Flush buffer after each query.
######   --column-names      Write column names in results.
######                       (Defaults to on; use --skip-column-names to disable.)
######   -N, --skip-column-names 
######                       Don't write column names in results.
######   --sigint-ignore     Ignore SIGINT (CTRL-C).
######   -o, --one-database  Ignore statements except those that occur while the
######                       default database is the one named at the command line.
######   --pager[=name]      Pager to use to display results. If you don't supply an
######                       option, the default pager is taken from your ENV variable
######                       PAGER. Valid pagers are less, more, cat [> filename],
######                       etc. See interactive help (\h) also. This option does not
######                       work in batch mode. Disable with --disable-pager. This
######                       option is disabled by default.
######   -p, --password[=name] 
######                       Password to use when connecting to server. If password is
######                       not given it's asked from the tty.
######   -,, --password1[=name] 
######                       Password for first factor authentication plugin.
######   -,, --password2[=name] 
######                       Password for second factor authentication plugin.
######   -,, --password3[=name] 
######                       Password for third factor authentication plugin.
######   -P, --port=#        Port number to use for connection or 0 for default to, in
######                       order of preference, my.cnf, $MYSQL_TCP_PORT,
######                       /etc/services, built-in default (3306).
######   --prompt=name       Set the mysql prompt to this value.
######   --protocol=name     The protocol to use for connection (tcp, socket, pipe,
######                       memory).
######   -q, --quick         Don't cache result, print it row by row. This may slow
######                       down the server if the output is suspended. Doesn't use
######                       history file.
######   -r, --raw           Write fields without conversion. Used with --batch.
######   --reconnect         Reconnect if the connection is lost. Disable with
######                       --disable-reconnect. This option is enabled by default.
######                       (Defaults to on; use --skip-reconnect to disable.)
######   -s, --silent        Be more silent. Print results with a tab as separator,
######                       each row on new line.
######   -S, --socket=name   The socket file to use for connection.
######   --server-public-key-path=name 
######                       File path to the server public RSA key in PEM format.
######   --get-server-public-key 
######                       Get server public key
######   --ssl-mode=name     SSL connection mode.
######   --ssl-ca=name       CA file in PEM format.
######   --ssl-capath=name   CA directory.
######   --ssl-cert=name     X509 cert in PEM format.
######   --ssl-cipher=name   SSL cipher to use.
######   --ssl-key=name      X509 key in PEM format.
######   --ssl-crl=name      Certificate revocation list.
######   --ssl-crlpath=name  Certificate revocation list path.
######   --tls-version=name  TLS version to use, permitted values are: TLSv1.2,
######                       TLSv1.3
######   --ssl-fips-mode=name 
######                       SSL FIPS mode (applies only for OpenSSL); permitted
######                       values are: OFF, ON, STRICT
######   --tls-ciphersuites=name 
######                       TLS v1.3 cipher to use.
######   --ssl-session-data=name 
######                       Session data file to use to enable ssl session reuse
######   --ssl-session-data-continue-on-failed-reuse 
######                       If set to ON, this option will allow connection to
######                       succeed even if session data cannot be reused.
######   -t, --table         Output in table format.
######   --tee=name          Append everything into outfile. See interactive help (\h)
######                       also. Does not work in batch mode. Disable with
######                       --disable-tee. This option is disabled by default.
######   -u, --user=name     User for login if not current user.
######   -U, --safe-updates  Only allow UPDATE and DELETE that uses keys.
######   -U, --i-am-a-dummy  Synonym for option --safe-updates, -U.
######   -v, --verbose       Write more. (-v -v -v gives the table output format).
######   -V, --version       Output version information and exit.
######   -w, --wait          Wait and retry if connection is down.
######   --connect-timeout=# Number of seconds before connection timeout.
######   --max-allowed-packet=# 
######                       The maximum packet length to send to or receive from
######                       server.
######   --net-buffer-length=# 
######                       The buffer size for TCP/IP and socket communication.
######   --select-limit=#    Automatic limit for SELECT when using --safe-updates.
######   --max-join-size=#   Automatic limit for rows in a join when using
######                       --safe-updates.
######   --show-warnings     Show warnings after every statement.
######   -j, --syslog        Log filtered interactive commands to syslog. Filtering of
######                       commands depends on the patterns supplied via histignore
######                       option besides the default patterns.
######   --plugin-dir=name   Directory for client-side plugins.
######   --default-auth=name Default authentication client-side plugin to use.
######   --binary-mode       By default, ASCII '\0' is disallowed and '\r\n' is
######                       translated to '\n'. This switch turns off both features,
######                       and also turns off parsing of all clientcommands except
######                       \C and DELIMITER, in non-interactive mode (for input
######                       piped to mysql or loaded using the 'source' command).
######                       This is necessary when processing output from mysqlbinlog
######                       that may contain blobs.
######   --connect-expired-password 
######                       Notify the server that this client is prepared to handle
######                       expired password sandbox mode.
######   --network-namespace=name 
######                       Network namespace to use for connection via tcp with a
######                       server.
######   --compression-algorithms=name 
######                       Use compression algorithm in server/client protocol.
######                       Valid values are any combination of
######                       'zstd','zlib','uncompressed'.
######   --zstd-compression-level=# 
######                       Use this compression level in the client/server protocol,
######                       in case --compression-algorithms=zstd. Valid range is
######                       between 1 and 22, inclusive. Default is 3.
######   --load-data-local-dir=name 
######                       Directory path safe for LOAD DATA LOCAL INFILE to read
######                       from.
######   --fido-register-factor=name 
######                       Specifies authentication factor, for which registration
######                       needs to be done.
######   --authentication-oci-client-config-profile=name 
######                       Specifies the configuration profile whose configuration
######                       options are to be read from the OCI configuration file.
######                       Default is DEFAULT.
######   --oci-config-file=name 
######                       Specifies the location of the OCI configuration file.
######                       Default for Linux is ~/.oci/config and %HOME/.oci/config
######                       on Windows.
######   --system-command    Enable (by default) or disable the system mysql command.
######                       (Defaults to on; use --skip-system-command to disable.)
###### 
###### Default options are read from the following files in the given order:
###### /etc/my.cnf /etc/mysql/my.cnf ~/.my.cnf 
###### The following groups are read: mysql client
###### The following options may be given as the first argument:
###### --print-defaults        Print the program argument list and exit.
###### --no-defaults           Don't read default options from any option file,
######                         except for login file.
###### --defaults-file=#       Only read default options from the given file #.
###### --defaults-extra-file=# Read this file after the global files are read.
###### --defaults-group-suffix=#
######                         Also read groups with concat(group, suffix)
###### --login-path=#          Read this path from the login file.
###### 
###### Variables (--variable-name=value)
###### and boolean options {FALSE|TRUE}          Value (after reading options)
###### ----------------------------------------- --------------------------------
###### auto-rehash                               TRUE
###### auto-vertical-output                      FALSE
###### bind-address                              (No default value)
###### binary-as-hex                             FALSE
###### character-sets-dir                        (No default value)
###### column-type-info                          FALSE
###### commands                                  TRUE
###### comments                                  FALSE
###### compress                                  FALSE
###### database                                  (No default value)
###### default-character-set                     auto
###### delimiter                                 ;
###### enable-cleartext-plugin                   FALSE
###### vertical                                  FALSE
###### force                                     FALSE
###### histignore                                (No default value)
###### named-commands                            FALSE
###### ignore-spaces                             FALSE
###### init-command                              (No default value)
###### local-infile                              FALSE
###### no-beep                                   FALSE
###### host                                      (No default value)
###### dns-srv-name                              (No default value)
###### html                                      FALSE
###### xml                                       FALSE
###### line-numbers                              TRUE
###### unbuffered                                FALSE
###### column-names                              TRUE
###### sigint-ignore                             FALSE
###### port                                      0
###### prompt                                    mysql> 
###### quick                                     FALSE
###### raw                                       FALSE
###### reconnect                                 FALSE
###### socket                                    /var/run/mysqld/mysqld3307.sock
###### server-public-key-path                    (No default value)
###### get-server-public-key                     FALSE
###### ssl-ca                                    (No default value)
###### ssl-capath                                (No default value)
###### ssl-cert                                  (No default value)
###### ssl-cipher                                (No default value)
###### ssl-key                                   (No default value)
###### ssl-crl                                   (No default value)
###### ssl-crlpath                               (No default value)
###### tls-version                               (No default value)
###### tls-ciphersuites                          (No default value)
###### ssl-session-data                          (No default value)
###### ssl-session-data-continue-on-failed-reuse FALSE
###### table                                     FALSE
###### user                                      (No default value)
###### safe-updates                              FALSE
###### i-am-a-dummy                              FALSE
###### connect-timeout                           0
###### max-allowed-packet                        16777216
###### net-buffer-length                         16384
###### select-limit                              1000
###### max-join-size                             1000000
###### show-warnings                             FALSE
###### plugin-dir                                (No default value)
###### default-auth                              (No default value)
###### binary-mode                               FALSE
###### connect-expired-password                  FALSE
###### network-namespace                         (No default value)
###### compression-algorithms                    (No default value)
###### zstd-compression-level                    3
###### load-data-local-dir                       (No default value)
###### fido-register-factor                      (No default value)
###### authentication-oci-client-config-profile  (No default value)
###### oci-config-file                           (No default value)
###### system-command                            TRUE
