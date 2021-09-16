{ pkgs ? import <nixpkgs> { }, composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false, sources }:

let
  packages = {
    "amphp/amp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-amp-efca2b32a7580087adb8aabbff6be1dc1bb924a9";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/amp/zipball/efca2b32a7580087adb8aabbff6be1dc1bb924a9";
          sha256 = "05q7cc67bmx7kg158mv0mw4iba0f1hqjax7f3r870j1pkplwvisd";
        };
      };
    };
    "amphp/byte-stream" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-byte-stream-acbd8002b3536485c997c4e019206b3f10ca15bd";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/byte-stream/zipball/acbd8002b3536485c997c4e019206b3f10ca15bd";
          sha256 = "14jqc5igivq54bwj0gr9rpbnw1rapi11ddhmvbkx1251a1bbyzr2";
        };
      };
    };
    "amphp/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-cache-2b6b5dbb70e54cc914df9952ba7c012bc4cbcd28";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/cache/zipball/2b6b5dbb70e54cc914df9952ba7c012bc4cbcd28";
          sha256 = "0ph57sarmqihnnqlsffjf6ajihgk2sq9zq4vyrfbz3jshqikwm71";
        };
      };
    };
    "amphp/dns" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-dns-852292532294d7972c729a96b49756d781f7c59d";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/dns/zipball/852292532294d7972c729a96b49756d781f7c59d";
          sha256 = "1l2k427x51an2y7531vcw0gbs3gxvm5ni8b82ahnxq71h36js5bk";
        };
      };
    };
    "amphp/parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-parser-f83e68f03d5b8e8e0365b8792985a7f341c57ae1";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/parser/zipball/f83e68f03d5b8e8e0365b8792985a7f341c57ae1";
          sha256 = "1qda6falmlgwvwcrbczzxalq6mhvmls5grzpzr5saf84107dn6j7";
        };
      };
    };
    "amphp/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-process-b88c6aef75c0b22f6f021141dd2d5e7c5db4c124";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/process/zipball/b88c6aef75c0b22f6f021141dd2d5e7c5db4c124";
          sha256 = "0c7ycya3320z2vxw99px8wqis0i5qypllvgrlgmqbwc09225y3kg";
        };
      };
    };
    "amphp/serialization" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-serialization-693e77b2fb0b266c3c7d622317f881de44ae94a1";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/serialization/zipball/693e77b2fb0b266c3c7d622317f881de44ae94a1";
          sha256 = "14mx5540f1z672fkszdc5qcdz370i3q7w0kdl87aimzj87r3awkx";
        };
      };
    };
    "amphp/socket" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-socket-a8af9f5d0a66c5fe9567da45a51509e592788fe6";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/socket/zipball/a8af9f5d0a66c5fe9567da45a51509e592788fe6";
          sha256 = "0aapwq1jz2dvc638cpfp12n4fgwmlcrlrqbkrm6prxdbzh2yaiwv";
        };
      };
    };
    "amphp/sync" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-sync-613047ac54c025aa800a9cde5b05c3add7327ed4";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/sync/zipball/613047ac54c025aa800a9cde5b05c3add7327ed4";
          sha256 = "13v6355rghmwjq49y252j5q91c6igb3vbv9sjfhdhl2mgs5r6dmy";
        };
      };
    };
    "amphp/windows-registry" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-windows-registry-0f56438b9197e224325e88f305346f0221df1f71";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/windows-registry/zipball/0f56438b9197e224325e88f305346f0221df1f71";
          sha256 = "1vv8xik6swpy12c5nzgfwrnjm92ay7v8vlwjw3wq0vjlrrkjw0jq";
        };
      };
    };
    "brick/math" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "brick-math-dff976c2f3487d42c1db75a3b180e2b9f0e72ce0";
        src = fetchurl {
          url = "https://api.github.com/repos/brick/math/zipball/dff976c2f3487d42c1db75a3b180e2b9f0e72ce0";
          sha256 = "11k4h3mvgf9fn2mj0f67jccgkwr1zyjjjx1czmkvxzkkydq3g3nk";
        };
      };
    };
    "composer/ca-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-ca-bundle-9fdb22c2e97a614657716178093cd1da90a64aa8";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/ca-bundle/zipball/9fdb22c2e97a614657716178093cd1da90a64aa8";
          sha256 = "0vaxjp9k7y97a8c96kany2r4n9xylqb48dvqbgmp82rrda6d6z14";
        };
      };
    };
    "composer/composer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-composer-28c9dfbe2351635961f670773e8d7b17bc5eda25";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/composer/zipball/28c9dfbe2351635961f670773e8d7b17bc5eda25";
          sha256 = "15l6xzl1mis5a29j9rsqvmgx3j9cwkg737kk5vbhxhlpy9ir5nrm";
        };
      };
    };
    "composer/package-versions-deprecated" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-package-versions-deprecated-c6522afe5540d5fc46675043d3ed5a45a740b27c";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/package-versions-deprecated/zipball/c6522afe5540d5fc46675043d3ed5a45a740b27c";
          sha256 = "0if500b7y1wqg3dxy1sk3vqnqr9wr0q75mas76qvh9m74a6i0h0j";
        };
      };
    };
    "composer/semver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-semver-647490bbcaf7fc4891c58f47b825eb99d19c377a";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/semver/zipball/647490bbcaf7fc4891c58f47b825eb99d19c377a";
          sha256 = "16dx37b0b3qnla05h8l49hyg6khibd52i42lwqfyd91iysdpgz5r";
        };
      };
    };
    "composer/spdx-licenses" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-spdx-licenses-de30328a7af8680efdc03e396aad24befd513200";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/spdx-licenses/zipball/de30328a7af8680efdc03e396aad24befd513200";
          sha256 = "0yamrbw2br8v3775pmlmvlqaylgvrd51ar274963cpkhxv1a7xfg";
        };
      };
    };
    "composer/xdebug-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-xdebug-handler-f27e06cd9675801df441b3656569b328e04aa37c";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/xdebug-handler/zipball/f27e06cd9675801df441b3656569b328e04aa37c";
          sha256 = "0db49yf7zcf4q57ba48n10cyrdjf7s598321m69dkb4dph0yc5qh";
        };
      };
    };
    "dantleech/argument-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dantleech-argument-resolver-e34fabf7d6e53e5194f745ad069c4a87cc4b34cc";
        src = fetchurl {
          url = "https://gitlab.com/api/v4/projects/dantleech%2Fargument-resolver/repository/archive.zip?sha=e34fabf7d6e53e5194f745ad069c4a87cc4b34cc";
          sha256 = "023hap8ikywq34j95xpb405hpi1fj9yp5za9a8ky9il87kdhsvnb";
        };
      };
    };
    "dantleech/invoke" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dantleech-invoke-9b002d746d2c1b86cfa63a47bb5909cee58ef50c";
        src = fetchurl {
          url = "https://api.github.com/repos/dantleech/invoke/zipball/9b002d746d2c1b86cfa63a47bb5909cee58ef50c";
          sha256 = "165vlqj5rf33gwvgc7674qxc12kqbpi7dqbzcdr87d4v6vi99w9n";
        };
      };
    };
    "dantleech/object-renderer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dantleech-object-renderer-942ad54a22e5ffb9ac3421d7bb06fa76bc45ad30";
        src = fetchurl {
          url = "https://api.github.com/repos/dantleech/object-renderer/zipball/942ad54a22e5ffb9ac3421d7bb06fa76bc45ad30";
          sha256 = "1m3dgyq1bs8xgffawdl3yij9zq9bcv6xay18p9zi9zq9wxawpzwj";
        };
      };
    };
    "daverandom/libdns" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "daverandom-libdns-e8b6d6593d18ac3a6a14666d8a68a4703b2e05f9";
        src = fetchurl {
          url = "https://api.github.com/repos/DaveRandom/LibDNS/zipball/e8b6d6593d18ac3a6a14666d8a68a4703b2e05f9";
          sha256 = "0l84mrkmm5w2cpkxvacm31vmv7pbz4dyxs5fj1rjfvbrhs0c2x03";
        };
      };
    };
    "dnoegel/php-xdg-base-dir" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dnoegel-php-xdg-base-dir-8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd";
        src = fetchurl {
          url = "https://api.github.com/repos/dnoegel/php-xdg-base-dir/zipball/8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd";
          sha256 = "02n4b4wkwncbqiz8mw2rq35flkkhn7h6c0bfhjhs32iay1y710fq";
        };
      };
    };
    "jetbrains/phpstorm-stubs" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jetbrains-phpstorm-stubs-ec9e109d9416203870109e464f8c8931474d404e";
        src = fetchurl {
          url = "https://api.github.com/repos/JetBrains/phpstorm-stubs/zipball/ec9e109d9416203870109e464f8c8931474d404e";
          sha256 = "1lgbkh1ldn36l03mskc2gh90fv46dnz3rz7gsxwl5sjfxadswlsp";
        };
      };
    };
    "justinrainbow/json-schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "justinrainbow-json-schema-2ba9c8c862ecd5510ed16c6340aa9f6eadb4f31b";
        src = fetchurl {
          url = "https://api.github.com/repos/justinrainbow/json-schema/zipball/2ba9c8c862ecd5510ed16c6340aa9f6eadb4f31b";
          sha256 = "18hqybnyfcyvnkjzgq91nqgb2c05gmziliq5ck8l8cy7s75wm6xf";
        };
      };
    };
    "kelunik/certificate" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "kelunik-certificate-56542e62d51533d04d0a9713261fea546bff80f6";
        src = fetchurl {
          url = "https://api.github.com/repos/kelunik/certificate/zipball/56542e62d51533d04d0a9713261fea546bff80f6";
          sha256 = "049izah872vw9rd5zydfy7hfpn2lwpn0jqpjw7xwzmabyv74d6kf";
        };
      };
    };
    "league/uri-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-uri-parser-671548427e4c932352d9b9279fdfa345bf63fa00";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/uri-parser/zipball/671548427e4c932352d9b9279fdfa345bf63fa00";
          sha256 = "1vqvk7npgipdd0ldmpj78pk63wwqlnwjcn61w695jv9sdfyw0c8n";
        };
      };
    };
    "microsoft/tolerant-php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "microsoft-tolerant-php-parser-1d76657e3271754515ace52501d3e427eca42ad0";
        src = fetchurl {
          url = "https://api.github.com/repos/microsoft/tolerant-php-parser/zipball/1d76657e3271754515ace52501d3e427eca42ad0";
          sha256 = "0dhyv0y0l161ccxq9l6xaqik1w7n9a5izpy5b4rq1s0pn2k05mik";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-c6b00f05152ae2c9b04a448f99c7590beb6042f5";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/monolog/zipball/c6b00f05152ae2c9b04a448f99c7590beb6042f5";
          sha256 = "02hr0z3rshvk7hiva7ag3rblr1wymm6s7s9i2yy5bai8f2qwjvdf";
        };
      };
    };
    "phpactor/amp-fswatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-amp-fswatch-e40b7dc1b96c5fdb5c6598a9abe9ca846039cdf1";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/amp-fswatch/zipball/e40b7dc1b96c5fdb5c6598a9abe9ca846039cdf1";
          sha256 = "0x31612vgc2528jrcj54zn125ad5sl3m4m2rnamv4b8mp0drf577";
        };
      };
    };
    "phpactor/class-mover" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-class-mover-47166e1fb095ff178dacb7a1b765b5c6e59f42e5";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/class-mover/zipball/47166e1fb095ff178dacb7a1b765b5c6e59f42e5";
          sha256 = "1mjg0jcls3kc7i4wawsq902nz51llp70i0mlw7rcwkqg53xaj1sq";
        };
      };
    };
    "phpactor/class-to-file" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-class-to-file-fa9ed96dec151e59fbd9d0583f5d08b9f02070f7";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/class-to-file/zipball/fa9ed96dec151e59fbd9d0583f5d08b9f02070f7";
          sha256 = "1x2pbz555bd5z94r6ncqyzlhl331s7qgccfrb5wnrslhny8fr5f6";
        };
      };
    };
    "phpactor/class-to-file-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-class-to-file-extension-9d6f6ae97f2642d79c1a8ab863d7512b347d856b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/class-to-file-extension/zipball/9d6f6ae97f2642d79c1a8ab863d7512b347d856b";
          sha256 = "06nigacwlx893812fyyf3kjg9q5mpcyk5rjgjn9xdn2f5y1l1zzp";
        };
      };
    };
    "phpactor/code-builder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-code-builder-9d739939a19e497b8da4e2704a3d102b4600aaf9";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/code-builder/zipball/9d739939a19e497b8da4e2704a3d102b4600aaf9";
          sha256 = "07h9nfa5ykicvlxhdvsijhz46g6s8acl34niqz7lcdd1qhz3dffb";
        };
      };
    };
    "phpactor/code-transform" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-code-transform-871509e723b6ce77524ca5735335a0dcf11f6751";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/code-transform/zipball/871509e723b6ce77524ca5735335a0dcf11f6751";
          sha256 = "1vhn8lb4risn7pbj0l7cmywx5gv1cd65zdjrjx2pbxlhm8x5h3nz";
        };
      };
    };
    "phpactor/code-transform-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-code-transform-extension-aff7ebc4127882adbf1ead01a86adb5ce167baff";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/code-transform-extension/zipball/aff7ebc4127882adbf1ead01a86adb5ce167baff";
          sha256 = "063jx6rm26ampa7ls0blzmaazb1zbi8fqvw54gd9jg9cgrxqnd3v";
        };
      };
    };
    "phpactor/completion" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-completion-e4486dc846b26eb3d1019fceab21c43fc0609e2f";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/completion/zipball/e4486dc846b26eb3d1019fceab21c43fc0609e2f";
          sha256 = "06s91zmdfmg2s1378x8ispjzp5cm4mkgzhgl8ww53kiclxx2n30p";
        };
      };
    };
    "phpactor/completion-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-completion-extension-1867de2160db1291f94e18697ec1491bdf450a33";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/completion-extension/zipball/1867de2160db1291f94e18697ec1491bdf450a33";
          sha256 = "0jz4fgrk3zvw5n7c7sz1jpicy8bm3xf49spz1pmgpkq3av5mgwrc";
        };
      };
    };
    "phpactor/completion-rpc-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-completion-rpc-extension-5f57f968949554559b75f6bc652a23159959916c";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/completion-rpc-extension/zipball/5f57f968949554559b75f6bc652a23159959916c";
          sha256 = "1qdk4ffcr5xwz8f383fjs6idwwg73914irvllgbjdjpv7g16mkl7";
        };
      };
    };
    "phpactor/completion-worse-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-completion-worse-extension-e1aceb0834b2bcd4543a09798d2cff124e648424";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/completion-worse-extension/zipball/e1aceb0834b2bcd4543a09798d2cff124e648424";
          sha256 = "0n7igvznc9kmnipg0ilrrvp5m0pl1lwrwysprq2wv7j0irc0n88g";
        };
      };
    };
    "phpactor/composer-autoloader-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-composer-autoloader-extension-442bfb7667d4c75e64487d6c4228d24eed0f6e66";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/composer-autoloader-extension/zipball/442bfb7667d4c75e64487d6c4228d24eed0f6e66";
          sha256 = "1z5w45w4bgk4asvq7qdmn0fa4pxfdph8wq5l54jhbb1rk3f8j1hd";
        };
      };
    };
    "phpactor/config-loader" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-config-loader-297608563ccdc14874d090c5a9af7d6c579b1a36";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/config-loader/zipball/297608563ccdc14874d090c5a9af7d6c579b1a36";
          sha256 = "1dszx28jwd0a228xm0gkg5f9gb6grd9izsnrdl8xynqfwjjymmwr";
        };
      };
    };
    "phpactor/console-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-console-extension-f4d2161287e71751539fb5647ab5d20c0f2b8675";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/console-extension/zipball/f4d2161287e71751539fb5647ab5d20c0f2b8675";
          sha256 = "14pp8blz0w6a23vmb5xb5k63kw8b3r5ck6349dgz6glq7q4b58y2";
        };
      };
    };
    "phpactor/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-container-61608993ac39ee7e45943f1b8f050c68e3ead515";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/container/zipball/61608993ac39ee7e45943f1b8f050c68e3ead515";
          sha256 = "07cniyagcvzz7z9gaarabpbpnp4wgbnznm83k1s9svx5wprd0bv1";
        };
      };
    };
    "phpactor/docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-docblock-a82cde09f49e388bb7a505465135aeff68c51647";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/docblock/zipball/a82cde09f49e388bb7a505465135aeff68c51647";
          sha256 = "1g4dk0j9cm0zdcpfs4nvabq5ckaj86w7f02l10i3vadja2b3bbmm";
        };
      };
    };
    "phpactor/extension-manager-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-extension-manager-extension-399a722367ce771e2f6f070a378e53eac83efe99";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/extension-manager-extension/zipball/399a722367ce771e2f6f070a378e53eac83efe99";
          sha256 = "0ycrxhsl7h3zmy155m5mnijzizq96sdag7133ny3v3wxcax6bpxg";
        };
      };
    };
    "phpactor/file-path-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-file-path-resolver-d274de198741a7b91bd657fe68173b6d8c5aa3f3";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/file-path-resolver/zipball/d274de198741a7b91bd657fe68173b6d8c5aa3f3";
          sha256 = "1fip85nlyx2lza2g6vx3lz9f6cmxqnw24a4cmxf6gxar8l3xi1j7";
        };
      };
    };
    "phpactor/file-path-resolver-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-file-path-resolver-extension-730b46357f4f61209e2ae17bd45cfaf0a7a4c75b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/file-path-resolver-extension/zipball/730b46357f4f61209e2ae17bd45cfaf0a7a4c75b";
          sha256 = "167f5r46xs61lyabcp3s68gmdadswksyik0ikjkp0hkpx65qa2ql";
        };
      };
    };
    "phpactor/indexer-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-indexer-extension-537febc6c3995645a1feaaf6b7c51d637ec9a501";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/indexer-extension/zipball/537febc6c3995645a1feaaf6b7c51d637ec9a501";
          sha256 = "1mgvlbbn1xbl148l1c6ic13v2v3j23bc5yypnq11mj6isg1n9fnd";
        };
      };
    };
    "phpactor/language-server" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-3475c59d76d8f5a7eb3d8745387f734dc057c8e4";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server/zipball/3475c59d76d8f5a7eb3d8745387f734dc057c8e4";
          sha256 = "02pm0dzqsa4li6gbnzj2gmcp5dfcsv799hinsl9warn14slajj6i";
        };
      };
    };
    "phpactor/language-server-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-extension-0e603fd6ef43816686b5261cbf7364d1fdbb219a";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server-extension/zipball/0e603fd6ef43816686b5261cbf7364d1fdbb219a";
          sha256 = "1h9fhcsik24jz6ndn73g9qkiqdv4slmkbw16f2bvgq8zlmak7qy6";
        };
      };
    };
    "phpactor/language-server-phpactor-extensions" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-phpactor-extensions-0b9e415d354e80d7268e229a0577373caaa8b068";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server-phpactor-extensions/zipball/0b9e415d354e80d7268e229a0577373caaa8b068";
          sha256 = "1msg5r8abr8928jnnba3c4v3k64mv5idiifd0s8kbkhlgl6fqisn";
        };
      };
    };
    "phpactor/language-server-protocol" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-protocol-393e8f22392f77e6581d3578d82a0b9ed4f73a26";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server-protocol/zipball/393e8f22392f77e6581d3578d82a0b9ed4f73a26";
          sha256 = "16sspmgwlwdgpxjyizk3pd1khrgx8fjspv9xscgjvq1wl0ffh6k4";
        };
      };
    };
    "phpactor/logging-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-logging-extension-1799922042200683782f563d5cec3fbf1a85c8c7";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/logging-extension/zipball/1799922042200683782f563d5cec3fbf1a85c8c7";
          sha256 = "0ijyk481iqyzcqjd6nq25s7hcylnxwwn9b789pz9mdgzs9swpb2b";
        };
      };
    };
    "phpactor/map-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-map-resolver-0a1b591fc7d059717fa93bfef97417e4c375be74";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/map-resolver/zipball/0a1b591fc7d059717fa93bfef97417e4c375be74";
          sha256 = "05hashycf6kvbvfwpjayf200rqpqcw4zaq5gan2vydsr1cv8rl23";
        };
      };
    };
    "phpactor/name-specification" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-name-specification-ebb0a9a0589a7992b97075441bfc7def4e01889d";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/name/zipball/ebb0a9a0589a7992b97075441bfc7def4e01889d";
          sha256 = "0s4bzxz94jfyipwwi66i3lzdgnc3djmw0yss3shrczp3q19iyczp";
        };
      };
    };
    "phpactor/path-finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-path-finder-ff3c8e1cc61b807cc4b04d45b473026df16bcd16";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/path-finder/zipball/ff3c8e1cc61b807cc4b04d45b473026df16bcd16";
          sha256 = "1a5m7azgjfcykhhqvsm1pfmxc0pa9j3gm0i0dna6j8a1gg4f9a80";
        };
      };
    };
    "phpactor/phly-event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-phly-event-dispatcher-5519ac1a5df8a1db72df82e11367b23443f2a0fe";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/phly-event-dispatcher/zipball/5519ac1a5df8a1db72df82e11367b23443f2a0fe";
          sha256 = "1y8j5c1plmwbfyjja95fl721jf8r7lbivqa6m8hmi2s9hql3bx4n";
        };
      };
    };
    "phpactor/php-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-php-extension-3a9739072bf9723c31b11da0dbf17aef7bc639e0";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/php-extension/zipball/3a9739072bf9723c31b11da0dbf17aef7bc639e0";
          sha256 = "0wc4p6v1dzsxc8layk0knfbz4f506di03jal9qld7aijhigh4i0p";
        };
      };
    };
    "phpactor/reference-finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-reference-finder-754f5b12ce42c3e98cf7b331222b7b0f8158c85f";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/reference-finder/zipball/754f5b12ce42c3e98cf7b331222b7b0f8158c85f";
          sha256 = "1fb80jdwkgzipzlq256fy2d6d42wkzzxvr7799zx1y9n92mrvwmd";
        };
      };
    };
    "phpactor/reference-finder-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-reference-finder-extension-f7126d074152351a5cfde3587a76892b372b017e";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/reference-finder-extension/zipball/f7126d074152351a5cfde3587a76892b372b017e";
          sha256 = "0f5apg9hmifyfmk6hqspdljhr7kwm9xkc4fnwpm7xc374y2zh64x";
        };
      };
    };
    "phpactor/reference-finder-rpc-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-reference-finder-rpc-extension-181875da5c998b7a5144c2a46d8b4d6b8f8af454";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/reference-finder-rpc-extension/zipball/181875da5c998b7a5144c2a46d8b4d6b8f8af454";
          sha256 = "0mjxx769znn47kkmxgx67bzf4z8846s415sy6j7xi0zc431s02xl";
        };
      };
    };
    "phpactor/rpc-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-rpc-extension-cfcde33c3f2821812d620283bb8116e88688309e";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/rpc-extension/zipball/cfcde33c3f2821812d620283bb8116e88688309e";
          sha256 = "0dvw52p2ba2a9mbll93jahcffqki4y7bz66y4l949ia7xgf44lkc";
        };
      };
    };
    "phpactor/source-code-filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-source-code-filesystem-6ca0c64462b59c6d47f12fef5d4013229e346f68";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/source-code-filesystem/zipball/6ca0c64462b59c6d47f12fef5d4013229e346f68";
          sha256 = "1ijgpfk0c6djvr1hdzkwdq0a2cxkr2ni5jckmqcn4jq7qr3gdylq";
        };
      };
    };
    "phpactor/source-code-filesystem-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-source-code-filesystem-extension-bdfa6a5acc0eae2dc7bf4a10ac2226d060d35c5d";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/source-code-filesystem-extension/zipball/bdfa6a5acc0eae2dc7bf4a10ac2226d060d35c5d";
          sha256 = "15la6sppsa0v5xr1vlq10yi6gq6cl0cqvk7gxyg7xl8kg83c0775";
        };
      };
    };
    "phpactor/text-document" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-text-document-962070cbf33a63e87e30ba6c7617f1aa80fa2be4";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/text-document/zipball/962070cbf33a63e87e30ba6c7617f1aa80fa2be4";
          sha256 = "1aib9km1nam9nmmxlcspalkgraxrxwd637ywv4rw69sps8rqdnqi";
        };
      };
    };
    "phpactor/worse-reference-finder-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-worse-reference-finder-extension-3b8b676634848e45c69bdcc8d4bed3ec851a01fc";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/worse-reference-finder-extension/zipball/3b8b676634848e45c69bdcc8d4bed3ec851a01fc";
          sha256 = "18qk1hkx8zd9zx7bplxsfsnjxpmjn3rfbf9flkrlp4di7fiwjknc";
        };
      };
    };
    "phpactor/worse-reference-finders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-worse-reference-finders-2685e4e01062a00b3eb2f6f96b8ce6d89a2fd332";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/worse-reference-finder/zipball/2685e4e01062a00b3eb2f6f96b8ce6d89a2fd332";
          sha256 = "00s144izakjl35sn8zrw8dkzy94m93c6rp7slypp7r4q29nxgnyx";
        };
      };
    };
    "phpactor/worse-reflection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-worse-reflection-4b4109af13c1815bfe3102ab0cf277bf9f231752";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/worse-reflection/zipball/4b4109af13c1815bfe3102ab0cf277bf9f231752";
          sha256 = "0csc08m9gq69nwfivpyy8dzj6p8v4jwg8dxrzi6ha4nrn6ps8z31";
        };
      };
    };
    "phpactor/worse-reflection-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-worse-reflection-extension-7e626bb0ebcbb38bb52d3ffa71d59724feff83a4";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/worse-reflection-extension/zipball/7e626bb0ebcbb38bb52d3ffa71d59724feff83a4";
          sha256 = "1pdnksz4a60sffgfcvjd29z4np4msvgq1lmncnc1j0p24svvvfai";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-8622567409010282b7aeebe4bb841fe98b58dcaf";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/container/zipball/8622567409010282b7aeebe4bb841fe98b58dcaf";
          sha256 = "0qfvyfp3mli776kb9zda5cpc8cazj3prk0bg0gm254kwxyfkfrwn";
        };
      };
    };
    "psr/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-event-dispatcher-dbefd12671e8a14ec7f180cab83036ed26714bb0";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/event-dispatcher/zipball/dbefd12671e8a14ec7f180cab83036ed26714bb0";
          sha256 = "05nicsd9lwl467bsv4sn44fjnnvqvzj1xqw2mmz9bac9zm66fsjd";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-d49695b909c3b7628b6289db5479a1c204601f11";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/d49695b909c3b7628b6289db5479a1c204601f11";
          sha256 = "0sb0mq30dvmzdgsnqvw3xh4fb4bqjncx72kf8n622f94dd48amln";
        };
      };
    };
    "ramsey/collection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-collection-28a5c4ab2f5111db6a60b2b4ec84057e0f43b9c1";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/collection/zipball/28a5c4ab2f5111db6a60b2b4ec84057e0f43b9c1";
          sha256 = "18ka3y51a21bf7mv3hxxxnn1dj1mn3vg8y1i3j3ajsfi49xl6r03";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-cd4032040a750077205918c86049aa0f43d22947";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/uuid/zipball/cd4032040a750077205918c86049aa0f43d22947";
          sha256 = "00hnl12crjs7kh67jhhjg157pma4ka5c5rpz46sdx8m207vhylzq";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-3461e3fccc7cfdfc2720be910d3bd73c69be590d";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/3461e3fccc7cfdfc2720be910d3bd73c69be590d";
          sha256 = "0967nl6cdnr0v0z83w4xy59agn60kfv8gb41aw3fpy1n2wpp62dj";
        };
      };
    };
    "seld/jsonlint" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-jsonlint-9ad6ce79c342fbd44df10ea95511a1b24dee5b57";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/jsonlint/zipball/9ad6ce79c342fbd44df10ea95511a1b24dee5b57";
          sha256 = "1ywni3i7zi2bsh7qpbf710qixd3jhpvz4l1bavrw9vnkxl38qj8p";
        };
      };
    };
    "seld/phar-utils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-phar-utils-8674b1d84ffb47cc59a101f5d5a3b61e87d23796";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/phar-utils/zipball/8674b1d84ffb47cc59a101f5d5a3b61e87d23796";
          sha256 = "14q8b6c7k1172nml5v88z244xy0vqbk6dhc68j2iv0l9yww2722d";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-649730483885ff2ca99ca0560ef0e5f6b03f2ac1";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/649730483885ff2ca99ca0560ef0e5f6b03f2ac1";
          sha256 = "029c1a5hg6d8akflinl5k0hpvfaqmj9plbax9ppsjgxj9jba8aid";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-deprecation-contracts-5f38c8804a9e97d23e0c8d63341088cd8a22d627";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/deprecation-contracts/zipball/5f38c8804a9e97d23e0c8d63341088cd8a22d627";
          sha256 = "11k6a8v9b6p0j788fgykq6s55baba29lg37fwvmn4igxxkfwmbp3";
        };
      };
    };
    "symfony/filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-filesystem-19b71c8f313b411172dd5f470fd61f24466d79a9";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/filesystem/zipball/19b71c8f313b411172dd5f470fd61f24466d79a9";
          sha256 = "1cw4p99nhy1jxk33228pjskzlks8havf3cg2lz87y8965vffky3x";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-0ae3f047bed4edff6fd35b26a9a6bfdc92c953c6";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/0ae3f047bed4edff6fd35b26a9a6bfdc92c953c6";
          sha256 = "0g7ywxk5qax371g9bc051kvbv7rq2r75ikj9zrxjlnp4gkbinf6m";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-46cd95797e9df938fdd2b03693b5fca5e64b01ce";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/46cd95797e9df938fdd2b03693b5fca5e64b01ce";
          sha256 = "0z4iiznxxs4r72xs4irqqb6c0wnwpwf0hklwn2imls67haq330zn";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-24b72c6baa32c746a4d0840147c9715e42bb68ab";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/24b72c6baa32c746a4d0840147c9715e42bb68ab";
          sha256 = "1ddgvsr2k585mj2vr3z1q56kxdbb5fin7y0ixhb1791x36km77f3";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-normalizer-8590a5f561694770bdcd3f9b5c69dde6945028e8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/8590a5f561694770bdcd3f9b5c69dde6945028e8";
          sha256 = "1c60xin00q0d2gbyaiglxppn5hqwki616v5chzwyhlhf6aplwsh3";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-2df51500adbaebdc4c38dea4c89a2e131c45c8a1";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/2df51500adbaebdc4c38dea4c89a2e131c45c8a1";
          sha256 = "1fbi13p4a6nn01ix3gcj966kq6z8qx03li4vbjylsr9ac2mgnmnn";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-fba8933c384d6476ab14fb7b8526e5287ca7e010";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php73/zipball/fba8933c384d6476ab14fb7b8526e5287ca7e010";
          sha256 = "0fc1d60iw8iar2zcvkzwdvx0whkbw8p6ll0cry39nbkklzw85n1h";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-eca0bf41ed421bed1b57c4958bab16aa86b757d0";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/eca0bf41ed421bed1b57c4958bab16aa86b757d0";
          sha256 = "1y5kc4vqh920wyjdlgxp23b958g5i9mw10mhbr30vf8j20vf1gra";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-7e812c84c3f2dba173d311de6e510edf701685a8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/7e812c84c3f2dba173d311de6e510edf701685a8";
          sha256 = "1bayw4mnjxqr94y0w0mk1ch5ynvyz71v2hlxlp7w6xw15m9ccpsk";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-f040a30e04b57fbcc9c6cbcf4dbaa96bd318b9bb";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/service-contracts/zipball/f040a30e04b57fbcc9c6cbcf4dbaa96bd318b9bb";
          sha256 = "1i573rmajc33a9nrgwgc4k3svg29yp9xv17gp133rd1i705hwv1y";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-bd53358e3eccec6a670b5f33ab680d8dbe1d4ae1";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/bd53358e3eccec6a670b5f33ab680d8dbe1d4ae1";
          sha256 = "0p71gvinzbi0zv6f1dizjxv18rrazv56pmmdxjz59gb0p5m01yhn";
        };
      };
    };
    "symfony/yaml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-yaml-485c83a2fb5893e2ff21bf4bfc7fdf48b4967229";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/yaml/zipball/485c83a2fb5893e2ff21bf4bfc7fdf48b4967229";
          sha256 = "141x8x5n65vwzl1d99jf96qlb9yflmwd4gvmn5zx0mc7cvbjgr9l";
        };
      };
    };
    "thecodingmachine/safe" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "thecodingmachine-safe-9f277171e296a3c8629c04ac93ec95ff0f208ccb";
        src = fetchurl {
          url = "https://api.github.com/repos/thecodingmachine/safe/zipball/9f277171e296a3c8629c04ac93ec95ff0f208ccb";
          sha256 = "0qslks98ywlmiyyskvh6mrphd6d45qln6jyaviz5lrfck2lwy0xm";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-27e5cf2b05e3744accf39d4c68a3235d9966d260";
        src = fetchurl {
          url = "https://api.github.com/repos/twigphp/Twig/zipball/27e5cf2b05e3744accf39d4c68a3235d9966d260";
          sha256 = "1sbs9sijq4hvi2cqplc5z6nmf1vz2bc5isbirddi91zzrxr900n1";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-6964c76c7804814a842473e0c8fd15bab0f18e25";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/assert/zipball/6964c76c7804814a842473e0c8fd15bab0f18e25";
          sha256 = "17xqhb2wkwr7cgbl4xdjf7g1vkal17y79rpp6xjpf1xgl5vypc64";
        };
      };
    };
    "webmozart/glob" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-glob-f6d25fc1cc33f5125ca6c3ee12b32263f5026bc6";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/glob/zipball/f6d25fc1cc33f5125ca6c3ee12b32263f5026bc6";
          sha256 = "15lqp0yfz88lndvir0hqvrnz7ga4jq0nx6nz9vg7f8sy78qxasjx";
        };
      };
    };
    "webmozart/path-util" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-path-util-d939f7edc24c9a1bb9c0dee5cb05d8e859490725";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozart/path-util/zipball/d939f7edc24c9a1bb9c0dee5cb05d8e859490725";
          sha256 = "0zv2di0fh3aiwij0nl6595p8qvm9zh0k8jd3ngqhmqnis35kr01l";
        };
      };
    };
  };
  devPackages = {
    "dantleech/what-changed" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dantleech-what-changed-d7912c3f98f0a279cb5cfc711df94e2398e6ab38";
        src = fetchurl {
          url = "https://api.github.com/repos/dantleech/what-changed/zipball/d7912c3f98f0a279cb5cfc711df94e2398e6ab38";
          sha256 = "0g0j382q13rnyg71ccp9dnfw5n82ppgzgyk773d3rgfi80p87dyh";
        };
      };
    };
    "dms/phpunit-arraysubset-asserts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dms-phpunit-arraysubset-asserts-8e3673a70019a60df484e36fc3271d63cbdc40ea";
        src = fetchurl {
          url = "https://api.github.com/repos/rdohms/phpunit-arraysubset-asserts/zipball/8e3673a70019a60df484e36fc3271d63cbdc40ea";
          sha256 = "0l7z0c9zn0pxr69bbj6jsfhrh0qqgh7gxg09k0yw3f63y9g7inv1";
        };
      };
    };
    "doctrine/annotations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-annotations-e6e7b7d5b45a2f2abc5460cc6396480b2b1d321f";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/annotations/zipball/e6e7b7d5b45a2f2abc5460cc6396480b2b1d321f";
          sha256 = "090vizq3xy9p151cjx5fa2izgvypc756wrnclswiiiac4h6mzpyf";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-d56bf6102915de5702778fe20f2de3b2fe570b5b";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/instantiator/zipball/d56bf6102915de5702778fe20f2de3b2fe570b5b";
          sha256 = "04rihgfjv8alvvb92bnb5qpz8fvqvjwfrawcjw34pfnfx4jflcwh";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-e864bbf5904cb8f5bb334f99209b48018522f042";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/lexer/zipball/e864bbf5904cb8f5bb334f99209b48018522f042";
          sha256 = "11lg9fcy0crb8inklajhx3kyffdbx7xzdj8kwl21xsgq9nm9iwvv";
        };
      };
    };
    "friendsofphp/php-cs-fixer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "friendsofphp-php-cs-fixer-d5b8a9d852b292c2f8a035200fa6844b1f82300b";
        src = fetchurl {
          url = "https://api.github.com/repos/FriendsOfPHP/PHP-CS-Fixer/zipball/d5b8a9d852b292c2f8a035200fa6844b1f82300b";
          sha256 = "0pq2yfx9z7x8bg7307fn81kx1l8qyfx8q4n5gdlc448djak0v0mw";
        };
      };
    };
    "jangregor/phpstan-prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jangregor-phpstan-prophecy-f01ca476840c370bbf9c224aed25fca60eecca9d";
        src = fetchurl {
          url = "https://api.github.com/repos/Jan0707/phpstan-prophecy/zipball/f01ca476840c370bbf9c224aed25fca60eecca9d";
          sha256 = "0vywjhjzva379asip318d724m3hn5nm15l0kz9f1sabgdflra006";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-776f831124e9c62e1a2c601ecc52e776d8bb7220";
        src = fetchurl {
          url = "https://api.github.com/repos/myclabs/DeepCopy/zipball/776f831124e9c62e1a2c601ecc52e776d8bb7220";
          sha256 = "181f3fsxs6s2wyy4y7qfk08qmlbvz1wn3mn3lqy42grsb8g8ym0k";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-fe14cf3672a149364fb66dfe11bf6549af899f94";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/fe14cf3672a149364fb66dfe11bf6549af899f94";
          sha256 = "042say14yx127k6znmjy5rx8wrwgrqq1160wc2a2padlqhx4mji1";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-85265efd3af7ba3ca4b2a2c34dbfc5788dd29133";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/manifest/zipball/85265efd3af7ba3ca4b2a2c34dbfc5788dd29133";
          sha256 = "13cqrx7iikx2aixszhxl55ql6hikblvbalix0kr05pbiccipg6fv";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-bae7c545bef187884426f042434e561ab1ddb182";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/version/zipball/bae7c545bef187884426f042434e561ab1ddb182";
          sha256 = "0hqmrihb4wv53rl3fg93wjldwrz79jyad5bv29ynbdklsirh7b2l";
        };
      };
    };
    "php-cs-fixer/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-cs-fixer-diff-dbd31aeb251639ac0b9e7e29405c1441907f5759";
        src = fetchurl {
          url = "https://api.github.com/repos/PHP-CS-Fixer/diff/zipball/dbd31aeb251639ac0b9e7e29405c1441907f5759";
          sha256 = "0wz8m2knrr8jhqbvkqayzykmxhgixxjivlkxmh5n8291sfgc2win";
        };
      };
    };
    "phpactor/debug-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-debug-extension-514740f714f4c42541ae42698804262da3622175";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/debug-extension/zipball/514740f714f4c42541ae42698804262da3622175";
          sha256 = "181g9d46avlp3vhz122zihmir9nbbsxq7qr2hmc8y1cq0kph8idy";
        };
      };
    };
    "phpactor/test-utils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-test-utils-1a2531b54a56f71fab270100d90d9ec6e27bff62";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/test-utils/zipball/1a2531b54a56f71fab270100d90d9ec6e27bff62";
          sha256 = "1q4sqkipv8h5g0076ds12fb2lqiih2w44my2pnxll6amnvchpsw3";
        };
      };
    };
    "phpbench/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpbench-container-def10824b6009d31028fa8dc9f73f4b26b234a67";
        src = fetchurl {
          url = "https://api.github.com/repos/phpbench/container/zipball/def10824b6009d31028fa8dc9f73f4b26b234a67";
          sha256 = "0bgspm210vch6rdkc8y6s2j193v46zklvzbg6ifwbpx4gp48ilbx";
        };
      };
    };
    "phpbench/dom" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpbench-dom-d26e615c4d64da41d168ab1096e4f55d97f2344f";
        src = fetchurl {
          url = "https://api.github.com/repos/phpbench/dom/zipball/d26e615c4d64da41d168ab1096e4f55d97f2344f";
          sha256 = "1f15vgv98nm6khhycp4n78izcjwq19j3if022f4lv6wv38ndfdzl";
        };
      };
    };
    "phpbench/phpbench" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpbench-phpbench-9827767f62f6f84974b1317f53536d68ae8db5e1";
        src = fetchurl {
          url = "https://api.github.com/repos/phpbench/phpbench/zipball/9827767f62f6f84974b1317f53536d68ae8db5e1";
          sha256 = "1ih0hlpw9iv284m2xjnlbijn3yvni25wi4h7jjpzi97qm1xsqv9h";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-1d01c49d4ed62f25aa84a747ad35d5a16924662b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/1d01c49d4ed62f25aa84a747ad35d5a16924662b";
          sha256 = "1wx720a17i24471jf8z499dnkijzb4b8xra11kvw9g9hhzfadz1r";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-069a785b2141f5bcf49f3e353548dc1cce6df556";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/069a785b2141f5bcf49f3e353548dc1cce6df556";
          sha256 = "0qid63bsfjmc3ka54f1ijl4a5zqwf7jmackjyjmbw3gxdnbi69il";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-6a467b8989322d92aa1c8bf2bebcc6e5c2ba55c0";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/6a467b8989322d92aa1c8bf2bebcc6e5c2ba55c0";
          sha256 = "01g6mihq5wd1396njjb7ibcdfgk26ix1kmbjb6dlshzav0k3983h";
        };
      };
    };
    "phpspec/prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-be1996ed8adc35c3fd795488a653f4b518be70ea";
        src = fetchurl {
          url = "https://api.github.com/repos/phpspec/prophecy/zipball/be1996ed8adc35c3fd795488a653f4b518be70ea";
          sha256 = "167snpasy7499pbxpyx2bj607qa1vrg07xfpa30dlpbwi7f34dji";
        };
      };
    };
    "phpspec/prophecy-phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-phpunit-2d7a9df55f257d2cba9b1d0c0963a54960657177";
        src = fetchurl {
          url = "https://api.github.com/repos/phpspec/prophecy-phpunit/zipball/2d7a9df55f257d2cba9b1d0c0963a54960657177";
          sha256 = "07dxv6bp7iz0qbhyk0irw3vsq2ikm4h3c6czqa5a31n8kqh1cini";
        };
      };
    };
    "phpstan/phpstan" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpstan-phpstan-64d4c5dc8ea96972bc18432d137a330239a5d2b2";
        src = fetchurl {
          url = "https://api.github.com/repos/phpstan/phpstan/zipball/64d4c5dc8ea96972bc18432d137a330239a5d2b2";
          sha256 = "0p9m1m2jx3bnqvkjnb8v3wls8j8wadhab0204bp5q9nm9ckzgykc";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-f6293e1b30a2354e8428e004689671b83871edde";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/f6293e1b30a2354e8428e004689671b83871edde";
          sha256 = "0q7az9h109jchlsgkzlnvzl90f39ifqp53k9bih85lbkaiz5w329";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-aa4be8575f26070b100fccb67faabb28f21f66f8";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/aa4be8575f26070b100fccb67faabb28f21f66f8";
          sha256 = "0vxnrzwb573ddmiw1sd77bdym6jiimwjhcz7yvmsr9wswkxh18l6";
        };
      };
    };
    "phpunit/php-invoker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-invoker-5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
          sha256 = "1vqnnjnw94mzm30n9n5p2bfgd3wd5jah92q6cj3gz1nf0qigr4fh";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
          sha256 = "0ff87yzywizi6j2ps3w0nalpx16mfyw3imzn6gj9jjsfwc2bb8lq";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
          sha256 = "0g1g7yy4zk1bidyh165fsbqx5y8f1c8pxikvcahzlfsr9p2qxk6a";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-fb9b8333f14e3dce976a60ef6a7e05c7c7ed8bfb";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/fb9b8333f14e3dce976a60ef6a7e05c7c7ed8bfb";
          sha256 = "0bvm4a3jgqgq2lvdp4k03h7bdd2z8yyh7603b9dlr8jzgk335qq3";
        };
      };
    };
    "psr/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-cache-d11b50ad223250cf17b86e38383413f5a6764bf8";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/cache/zipball/d11b50ad223250cf17b86e38383413f5a6764bf8";
          sha256 = "06i2k3dx3b4lgn9a4v1dlgv8l9wcl4kl7vzhh63lbji0q96hv8qz";
        };
      };
    };
    "sebastian/cli-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-cli-parser-442e7c7e687e42adc03470c7b668bc4b2402c0b2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/cli-parser/zipball/442e7c7e687e42adc03470c7b668bc4b2402c0b2";
          sha256 = "074qzdq19k9x4svhq3nak5h348xska56v1sqnhk1aj0jnrx02h37";
        };
      };
    };
    "sebastian/code-unit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-1fc9f64c0927627ef78ba436c9b17d967e68e120";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit/zipball/1fc9f64c0927627ef78ba436c9b17d967e68e120";
          sha256 = "04vlx050rrd54mxal7d93pz4119pas17w3gg5h532anfxjw8j7pm";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-reverse-lookup-ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
          sha256 = "1h1jbzz3zak19qi4mab2yd0ddblpz7p000jfyxfwd2ds0gmrnsja";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-55f4261989e546dc112258c7a75935a81a7ce382";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/comparator/zipball/55f4261989e546dc112258c7a75935a81a7ce382";
          sha256 = "1d4bgf4m2x0kn3nw9hbb45asbx22lsp9vxl74rp1yl3sj2vk9sch";
        };
      };
    };
    "sebastian/complexity" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-complexity-739b35e53379900cc9ac327b2147867b8b6efd88";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/complexity/zipball/739b35e53379900cc9ac327b2147867b8b6efd88";
          sha256 = "1y4yz8n8hszbhinf9ipx3pqyvgm7gz0krgyn19z0097yq3bbq8yf";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-388b6ced16caa751030f6a69e588299fa09200ac";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/environment/zipball/388b6ced16caa751030f6a69e588299fa09200ac";
          sha256 = "022vn8zss3sm7hg83kg3y0lmjw2ak6cy64b584nbsgxfhlmf6msd";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-d89cc98761b8cb5a1a235a6b703ae50d34080e65";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/d89cc98761b8cb5a1a235a6b703ae50d34080e65";
          sha256 = "1s8v0cbcjdb0wvwyh869y5f8d55mpjkr0f3gg2kvvxk3wh8nvvc7";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-23bd5951f7ff26f12d4e3242864df3e08dec4e49";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/global-state/zipball/23bd5951f7ff26f12d4e3242864df3e08dec4e49";
          sha256 = "0hrh5knc2g5i288kh9lkwmr6hb7yav5m8i21piz8pfh7kc75czjw";
        };
      };
    };
    "sebastian/lines-of-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-lines-of-code-c1c2e997aa3146983ed888ad08b15470a2e22ecc";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/lines-of-code/zipball/c1c2e997aa3146983ed888ad08b15470a2e22ecc";
          sha256 = "0fay9s5cm16gbwr7qjihwrzxn7sikiwba0gvda16xng903argbk0";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-5c9eeac41b290a3712d88851518825ad78f45c71";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/5c9eeac41b290a3712d88851518825ad78f45c71";
          sha256 = "11853z07w8h1a67wsjy3a6ir5x7khgx6iw5bmrkhjkiyvandqcn1";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
          sha256 = "0g5m1fswy6wlf300x1vcipjdljmd3vh05hjqhqfc91byrjbk4rsg";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-cd9d8cf3c5804de4341c283ed787f099f5506172";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/cd9d8cf3c5804de4341c283ed787f099f5506172";
          sha256 = "1k0ki1krwq6329vsbw3515wsyg8a7n2l83lk19pdc12i2lg9nhpy";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-resource-operations-0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
          sha256 = "0p5s8rp7mrhw20yz5wx1i4k8ywf0h0ximcqan39n9qnma1dlnbyr";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-b8cd8a1c753c90bc1a0f5372170e3e489136f914";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/type/zipball/b8cd8a1c753c90bc1a0f5372170e3e489136f914";
          sha256 = "05d36w28nr2i14nghzd279gvwwpcavcznb2h5bp2iy3rhaa14yjy";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-c6c1022351a901512170118436c764e473f6de8c";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/version/zipball/c6c1022351a901512170118436c764e473f6de8c";
          sha256 = "1bs7bwa9m0fin1zdk7vqy5lxzlfa9la90lkl27sn0wr00m745ig1";
        };
      };
    };
    "symfony/debug" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-debug-a8d2d5c94438548bff9f998ca874e202bb29d07f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/debug/zipball/a8d2d5c94438548bff9f998ca874e202bb29d07f";
          sha256 = "0w0i66c42bvh5ss84jqgjzq81dx673sliaf7z7p60p3fxiy0fdsy";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-67a5f354afa8e2f231081b3fa11a5912f933c3ce";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher/zipball/67a5f354afa8e2f231081b3fa11a5912f933c3ce";
          sha256 = "0qnaby62l2sw6zg4m258jmhy2llqc1jh8yg6wyx6snjimm008r3q";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-69fee1ad2332a7cbab3aca13591953da9cdb7a11";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/69fee1ad2332a7cbab3aca13591953da9cdb7a11";
          sha256 = "1xajgmj8fnix4q1p93mhhiwvxspm8p4ksgzyyh31sj4xsp1c41x7";
        };
      };
    };
    "symfony/options-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-options-resolver-162e886ca035869866d233a2bfef70cc28f9bbe5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/options-resolver/zipball/162e886ca035869866d233a2bfef70cc28f9bbe5";
          sha256 = "1n6f8kpg451fn99n9msdsm5z9hwzpn764zkxgzkif61i5diyvmj9";
        };
      };
    };
    "symfony/polyfill-php70" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php70-5f03a781d984aae42cebd18e7912fa80f02ee644";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php70/zipball/5f03a781d984aae42cebd18e7912fa80f02ee644";
          sha256 = "0yzw1gp2q46pk8fmgvz4nyiz34m6d4kiardyr9ajdmfrlqsiy202";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-9a142215a36a3888e30d0a9eeea9766764e96976";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php72/zipball/9a142215a36a3888e30d0a9eeea9766764e96976";
          sha256 = "06ipbcvrxjzgvraf2z9fwgy0bzvzjvs5z1j67grg1gb15x3d428b";
        };
      };
    };
    "symfony/stopwatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-stopwatch-313d02f59d6543311865007e5ff4ace05b35ee65";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/stopwatch/zipball/313d02f59d6543311865007e5ff4ace05b35ee65";
          sha256 = "188wk08rzvaghm2xhmbgvxkb3ymamknm23pcq3a341b8hafypdiq";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-46aa709affb9ad3355bd7a810f9662d71025c384";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/46aa709affb9ad3355bd7a810f9662d71025c384";
          sha256 = "0lqf4zwlyynbhmx925mkrhvfd2kvcpvwnvhnahhgraian4xzcn8i";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-75a63c33a8577608444246075ea0af0d052e452a";
        src = fetchurl {
          url = "https://api.github.com/repos/theseer/tokenizer/zipball/75a63c33a8577608444246075ea0af0d052e452a";
          sha256 = "1cj1lb99hccsnwkq0i01mlcldmy1kxwcksfvgq6vfx8mgz3iicij";
        };
      };
    };
  };
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "phpactor-phpactor";
  src = sources.phpactor;
  executable = true;
  symlinkDependencies = false;
  meta = {
    license = "MIT";
  };
}
