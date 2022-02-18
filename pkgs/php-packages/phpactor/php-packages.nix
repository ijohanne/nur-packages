{ composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false, sources }:

let
  packages = {
    "amphp/amp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "amphp-amp-c5fc66a78ee38d7ac9195a37bacaf940eb3f65ae";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/amp/zipball/c5fc66a78ee38d7ac9195a37bacaf940eb3f65ae";
          sha256 = "0a33y6kjz9869ixhdglgr09p3xi9qxlldl3b4azzzqbjj28d2p2a";
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
        name = "amphp-process-f09e3ed3b0a953ccbfff1140f12be4a884f0aa83";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/process/zipball/f09e3ed3b0a953ccbfff1140f12be4a884f0aa83";
          sha256 = "1g4p5vxndccayc3pda0mhnknr5z6383dzb2v72b8dbpp1lbllkfd";
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
        name = "amphp-sync-85ab06764f4f36d63b1356b466df6111cf4b89cf";
        src = fetchurl {
          url = "https://api.github.com/repos/amphp/sync/zipball/85ab06764f4f36d63b1356b466df6111cf4b89cf";
          sha256 = "1ffl60c6pj1bg74fipyj16irhlj6356bc5nnkdmv7qrli212f800";
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
        name = "brick-math-ca57d18f028f84f777b2168cd1911b0dee2343ae";
        src = fetchurl {
          url = "https://api.github.com/repos/brick/math/zipball/ca57d18f028f84f777b2168cd1911b0dee2343ae";
          sha256 = "1nr1grrb9g5g3ihx94yk0amp8zx8prkkvg2934ygfc3rrv03cq9w";
        };
      };
    };
    "composer/ca-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-ca-bundle-4c679186f2aca4ab6a0f1b0b9cf9252decb44d0b";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/ca-bundle/zipball/4c679186f2aca4ab6a0f1b0b9cf9252decb44d0b";
          sha256 = "1rwd8mf34mwz5hhw98rv5372p2gj99clx45dcaqrzkmxjd1f2jbh";
        };
      };
    };
    "composer/composer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-composer-892838f84440b4851ec7e57221d52cb65a8991a5";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/composer/zipball/892838f84440b4851ec7e57221d52cb65a8991a5";
          sha256 = "1rgz2902wddc0vq19db2m4gbv6a52bvi6sqw8m9bix8dfp46a7rb";
        };
      };
    };
    "composer/package-versions-deprecated" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-package-versions-deprecated-b4f54f74ef3453349c24a845d22392cd31e65f1d";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/package-versions-deprecated/zipball/b4f54f74ef3453349c24a845d22392cd31e65f1d";
          sha256 = "1hrjxvk8i14pw9gi7j3qc0gljjy74hwdkv8zwsrg5brgyzhqfwam";
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
        name = "composer-spdx-licenses-a30d487169d799745ca7280bc90fdfa693536901";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/spdx-licenses/zipball/a30d487169d799745ca7280bc90fdfa693536901";
          sha256 = "0dwkbzvynmlp77gkqc6w2f3670h1ag722yvsxvx7ywp8jxblqbz8";
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
        name = "jetbrains-phpstorm-stubs-c790a8fa467ff5d3f11b0e7c1f3698abbe37b182";
        src = fetchurl {
          url = "https://api.github.com/repos/JetBrains/phpstorm-stubs/zipball/c790a8fa467ff5d3f11b0e7c1f3698abbe37b182";
          sha256 = "16q2w1s5xqn8ldp74yx9a76b21fspkr21n79r6pvjsxmlnz2n58j";
        };
      };
    };
    "justinrainbow/json-schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "justinrainbow-json-schema-2ab6744b7296ded80f8cc4f9509abbff393399aa";
        src = fetchurl {
          url = "https://api.github.com/repos/justinrainbow/json-schema/zipball/2ab6744b7296ded80f8cc4f9509abbff393399aa";
          sha256 = "0mfi1w83hcynqhjbgz4ljpyyiigyvi984q3ya02xkzvrxpp3hiwg";
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
        name = "microsoft-tolerant-php-parser-6a965617cf484355048ac6d2d3de7b6ec93abb16";
        src = fetchurl {
          url = "https://api.github.com/repos/microsoft/tolerant-php-parser/zipball/6a965617cf484355048ac6d2d3de7b6ec93abb16";
          sha256 = "1cv59r3r7qgl1s66yixifzyy32w8gp7f03m0rw74pfr8rdh4fqkx";
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
        name = "phpactor-class-mover-67d078564fc12fee293d09e43e6f629ab6470e2f";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/class-mover/zipball/67d078564fc12fee293d09e43e6f629ab6470e2f";
          sha256 = "0hlgkp8nwykqbq8gmdszk371vg5w3m2wkbi54yn8ms1qgkhcxafd";
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
        name = "phpactor-code-builder-d3707df0e066b1c8a3134228eefb69fdc5dfbccd";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/code-builder/zipball/d3707df0e066b1c8a3134228eefb69fdc5dfbccd";
          sha256 = "0g940b476j20nvnchkrs09yv9sq811jmmn89qj8m3x7s1ia13bcs";
        };
      };
    };
    "phpactor/code-transform" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-code-transform-5d8795f079a29049202df9c7a51bc70c79b9a2ab";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/code-transform/zipball/5d8795f079a29049202df9c7a51bc70c79b9a2ab";
          sha256 = "0lkxxspngyq3b7rmvgc4ama1w51c5n0xhqgbqfmhwlanqd0pmzdp";
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
        name = "phpactor-completion-ee37cca679fc0e82c05c87974d8d3222c54e44f8";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/completion/zipball/ee37cca679fc0e82c05c87974d8d3222c54e44f8";
          sha256 = "01m85cyq9bifvm9dg57m8q45ki3nc5dqshsdd2gnh1s8vhz4vvdd";
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
        name = "phpactor-docblock-908c303f34db5c2c9f7d3186001490f95a2d8f5d";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/docblock/zipball/908c303f34db5c2c9f7d3186001490f95a2d8f5d";
          sha256 = "0x8d5vxkh3a4cp3h64h58i30w5pclvv7m3g7nhgi3mbfr5zy1b6i";
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
        name = "phpactor-indexer-extension-e4d6d34cd902f332f4b0d791dbe7f527cacf57bd";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/indexer-extension/zipball/e4d6d34cd902f332f4b0d791dbe7f527cacf57bd";
          sha256 = "1ly05dhldjzv8f5xf4pccqpdiaj7rky5c2y6gaq1k3ms9a6yqrva";
        };
      };
    };
    "phpactor/language-server" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-302e70d85b39ad0d5c368900b94b7cd6d3b77a05";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server/zipball/302e70d85b39ad0d5c368900b94b7cd6d3b77a05";
          sha256 = "1kgfj43kv5id7l7cjg8wisiaznjdm5mma06v6sjk18pxhq3ja1v4";
        };
      };
    };
    "phpactor/language-server-extension" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-extension-399f1a1ed41d8201facb3b8effda2c34acd96212";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server-extension/zipball/399f1a1ed41d8201facb3b8effda2c34acd96212";
          sha256 = "17a5qxmr6myn1yp5iv3iwwpgix9jv31pkzivldbb9azhi4chzpfh";
        };
      };
    };
    "phpactor/language-server-phpactor-extensions" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-phpactor-extensions-f6437bee6ec13ec66ead223c49aabfe8cdd41f53";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server-phpactor-extensions/zipball/f6437bee6ec13ec66ead223c49aabfe8cdd41f53";
          sha256 = "14g7gl1shj150fz0vkhm7jk1akbhx4dd8sibwpxfrrzw0vzzbvvl";
        };
      };
    };
    "phpactor/language-server-protocol" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-language-server-protocol-306dd561711833f2a05a63b8332dc717d7ea5001";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/language-server-protocol/zipball/306dd561711833f2a05a63b8332dc717d7ea5001";
          sha256 = "0kxzsnn3509rhvkfcqpv9h4m1xfyrswyy6xnikbwbzj3zk006cc2";
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
        name = "phpactor-source-code-filesystem-4a5c527c624f590e579020aea5a11acf9fcdf760";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/source-code-filesystem/zipball/4a5c527c624f590e579020aea5a11acf9fcdf760";
          sha256 = "180fx69jk5cyzqi5jkl9jwa01la6kv6w8l27zr5srjxaabv0v47j";
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
        name = "phpactor-worse-reference-finders-b873f659fa426fefd5b09cac1994be5735e275ac";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/worse-reference-finder/zipball/b873f659fa426fefd5b09cac1994be5735e275ac";
          sha256 = "1n0hx9fp9m44xb5x39b8mkc0f9zz874ab12q23vkn6qqxm198bxl";
        };
      };
    };
    "phpactor/worse-reflection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpactor-worse-reflection-cef7b8dd5d2cc0b0fb4cf4a071312ce75e443a54";
        src = fetchurl {
          url = "https://api.github.com/repos/phpactor/worse-reflection/zipball/cef7b8dd5d2cc0b0fb4cf4a071312ce75e443a54";
          sha256 = "0gnw3v8cd6ysrliq08cdn1cp4jqypqizsnic9r52pxn5prszk08d";
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
        name = "ramsey-collection-cccc74ee5e328031b15640b51056ee8d3bb66c0a";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/collection/zipball/cccc74ee5e328031b15640b51056ee8d3bb66c0a";
          sha256 = "1i2ga25aj80cci3di58qm17l588lzgank8wqhdbq0dcb3cg6cgr6";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-fc9bb7fb5388691fd7373cd44dcb4d63bbcf24df";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/uuid/zipball/fc9bb7fb5388691fd7373cd44dcb4d63bbcf24df";
          sha256 = "1fhjsyidsj95x5dd42z3hi5qhzii0hhhxa7xvc5jj7spqjdbqln4";
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
        name = "seld-phar-utils-9f3452c93ff423469c0d56450431562ca423dcee";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/phar-utils/zipball/9f3452c93ff423469c0d56450431562ca423dcee";
          sha256 = "0jdz6mrrp8m6300n4rk769x5365sxj1bn3zfpwi2k5ripraj2n4r";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-a2a86ec353d825c75856c6fd14fac416a7bdb6b8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/a2a86ec353d825c75856c6fd14fac416a7bdb6b8";
          sha256 = "1dj3fsgw1bxj0igrs973734sdj4270q9rvbvjq5x1bad399fj004";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-deprecation-contracts-6f981ee24cf69ee7ce9736146d1c57c2780598a8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/deprecation-contracts/zipball/6f981ee24cf69ee7ce9736146d1c57c2780598a8";
          sha256 = "05jws1g4kcs297bwf5d72z47m2263i2jqpivi3yv8kf50kdjjzba";
        };
      };
    };
    "symfony/filesystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-filesystem-0f0c4bf1840420f4aef3f32044a9dbb24682731b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/filesystem/zipball/0f0c4bf1840420f4aef3f32044a9dbb24682731b";
          sha256 = "0cjk7blwffz3p3l5lxaldijv385bi89kcwcgyf798fx1k0niib5n";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-231313534dded84c7ecaa79d14bc5da4ccb69b7d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/231313534dded84c7ecaa79d14bc5da4ccb69b7d";
          sha256 = "1i2gr1ghnsk9gzcivixflg51vp83a99h4a0sh692acj0iq77iga6";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-30885182c981ab175d4d034db0f6f469898070ab";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/30885182c981ab175d4d034db0f6f469898070ab";
          sha256 = "0dfh24f8g048vbj88vx0lvw48nq5dsamy5kva72ab1h7vw9hvpwb";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-81b86b50cf841a64252b439e738e97f4a34e2783";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/81b86b50cf841a64252b439e738e97f4a34e2783";
          sha256 = "1dxymfi577yridk6dn8v2z1hyrpaxr8sp4g6dxxy913ilf6igx7r";
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
        name = "symfony-polyfill-mbstring-0abb51d2f102e00a4eefcf46ba7fec406d245825";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/0abb51d2f102e00a4eefcf46ba7fec406d245825";
          sha256 = "1z17f7465fn778ak68mzz5kg2ql1n6ghgqh3827n9mcipwbp4k58";
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
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-cc5db0e22b3cb4111010e48785a97f670b350ca5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php73/zipball/cc5db0e22b3cb4111010e48785a97f670b350ca5";
          sha256 = "04z6fah8rn5b01w78j0vqa0jys4mvji66z4ql6wk1r1bf6j0048y";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-57b712b08eddb97c762a8caa32c84e037892d2e9";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/57b712b08eddb97c762a8caa32c84e037892d2e9";
          sha256 = "0dpa53wj3l84f273cnphlps23k09789z8g1znd4h4c7ly6dlqx14";
        };
      };
    };
    "symfony/polyfill-php81" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php81-5de4ba2d41b15f9bd0e19b2ab9674135813ec98f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php81/zipball/5de4ba2d41b15f9bd0e19b2ab9674135813ec98f";
          sha256 = "0igxnmib8vkjp9x81j66hl4pf8i0nj86k4hdh8gzcymq01si0mxm";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-b2d924e5a4cb284f293d5092b1dbf0d364cb8b67";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/b2d924e5a4cb284f293d5092b1dbf0d364cb8b67";
          sha256 = "00bx06d4q4p4a07x6sq58l8fza9lmx9hivgyr937x8vsqpcwyxb2";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-1ab11b933cd6bc5464b08e81e2c5b07dec58b0fc";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/service-contracts/zipball/1ab11b933cd6bc5464b08e81e2c5b07dec58b0fc";
          sha256 = "0c1vq6jv2jc37i9m1ndpbv7g75blgvf1s44vk65nb1jdk3hrbrd1";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-92043b7d8383e48104e411bc9434b260dbeb5a10";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/92043b7d8383e48104e411bc9434b260dbeb5a10";
          sha256 = "0c3a1bxf3b4c5510wk9a1r2ilck0wnhhfds2kyijprib1n3iy41z";
        };
      };
    };
    "symfony/yaml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-yaml-e80f87d2c9495966768310fc531b487ce64237a2";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/yaml/zipball/e80f87d2c9495966768310fc531b487ce64237a2";
          sha256 = "05a6sahs8jk71c9f1rzy3lbfi9l1dxmyinaqhwp0qdni6m4f9kr9";
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
        name = "twig-twig-66baa66f29ee30e487e05f1679903e36eb01d727";
        src = fetchurl {
          url = "https://api.github.com/repos/twigphp/Twig/zipball/66baa66f29ee30e487e05f1679903e36eb01d727";
          sha256 = "1n3gw0b2zj7c6ly5y3hmr7maz346c74w6rn3kkl8vib263r0gf22";
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
        name = "webmozart-glob-539b5dbc10021d3f9242e7a9e9b6b37843179e83";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/glob/zipball/539b5dbc10021d3f9242e7a9e9b6b37843179e83";
          sha256 = "1shn7lkd7pn3acdrr2hs5d87x0wjyfqm4m1yskq15bxixsf4vkh6";
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
        name = "dantleech-what-changed-02c32b1e03b8964a459847065c985f1b9423b558";
        src = fetchurl {
          url = "https://api.github.com/repos/dantleech/what-changed/zipball/02c32b1e03b8964a459847065c985f1b9423b558";
          sha256 = "0kwf50xb6460qqvxwp46pzwd30byz82lgzmfyny8910701z304dh";
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
        name = "doctrine-annotations-5b668aef16090008790395c02c893b1ba13f7e08";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/annotations/zipball/5b668aef16090008790395c02c893b1ba13f7e08";
          sha256 = "129dixpipqfi55yq1rcp7dwj1yl1w70i462rs16ma4bn5vzxqz5s";
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
        name = "doctrine-lexer-9c50f840f257bbb941e6f4a0e94ccf5db5c3f76c";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/lexer/zipball/9c50f840f257bbb941e6f4a0e94ccf5db5c3f76c";
          sha256 = "0cczszzlzws2fbc66npl93x8ayqv4bqls4rpkxg1zylcvf8f3cw8";
        };
      };
    };
    "friendsofphp/php-cs-fixer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "friendsofphp-php-cs-fixer-75ac86f33fab4714ea5a39a396784d83ae3b5ed8";
        src = fetchurl {
          url = "https://api.github.com/repos/FriendsOfPHP/PHP-CS-Fixer/zipball/75ac86f33fab4714ea5a39a396784d83ae3b5ed8";
          sha256 = "00xg8zbn1sg2gjkwpiyz1szj6xr9y099davdxivmrfrmp0yznlpm";
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
        name = "nikic-php-parser-210577fe3cf7badcc5814d99455df46564f3c077";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/210577fe3cf7badcc5814d99455df46564f3c077";
          sha256 = "191ijb7bybqnl1jayx6bipqh91dc9acg9zsbh89fk4h1ff87b1qp";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-97803eca37d319dfa7826cc2437fc020857acb53";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/manifest/zipball/97803eca37d319dfa7826cc2437fc020857acb53";
          sha256 = "107dsj04ckswywc84dvw42kdrqd4y6yvb2qwacigyrn05p075c1w";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-15a90844ad40f127afd244c0cad228de2a80052a";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/version/zipball/15a90844ad40f127afd244c0cad228de2a80052a";
          sha256 = "050rzbg7pzav7mwvl6bpr2k7jncka3wsvk1ap0vgarbmnsl5clb1";
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
        name = "phpbench-container-6d555ff7174fca13f9b1ec0b4a089ed41d0ab392";
        src = fetchurl {
          url = "https://api.github.com/repos/phpbench/container/zipball/6d555ff7174fca13f9b1ec0b4a089ed41d0ab392";
          sha256 = "02j7b5ss72937iin0rsa6h42kp8k3p3hl6x7526qnv9j8xq02nmp";
        };
      };
    };
    "phpbench/dom" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpbench-dom-b013b717832ddbaadf2a40984b04bc66af9a7110";
        src = fetchurl {
          url = "https://api.github.com/repos/phpbench/dom/zipball/b013b717832ddbaadf2a40984b04bc66af9a7110";
          sha256 = "1rjqqiz78drz6c589c4fpypi22xj71fn29xhz1xf8ik7rzgnifzx";
        };
      };
    };
    "phpbench/phpbench" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpbench-phpbench-31750c45791a3e0bb7311aebfd1a4ed6f8f3fc86";
        src = fetchurl {
          url = "https://api.github.com/repos/phpbench/phpbench/zipball/31750c45791a3e0bb7311aebfd1a4ed6f8f3fc86";
          sha256 = "0jkvjlxl8in3c0rgjkkph7zm3053vk0yhkab0ary98ywdbjjzdlm";
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
        name = "phpdocumentor-reflection-docblock-622548b623e81ca6d78b721c5e029f4ce664f170";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/622548b623e81ca6d78b721c5e029f4ce664f170";
          sha256 = "1vs0fhpqk8s9bc0sqyfhpbs63q14lfjg1f0c1dw4jz97145j6r1n";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-93ebd0014cab80c4ea9f5e297ea48672f1b87706";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/93ebd0014cab80c4ea9f5e297ea48672f1b87706";
          sha256 = "0b76kr2bp9pmkilr334zv7y5ml8z2vfhhfqcpr9y2kn97hirfn35";
        };
      };
    };
    "phpspec/prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-bbcd7380b0ebf3961ee21409db7b38bc31d69a13";
        src = fetchurl {
          url = "https://api.github.com/repos/phpspec/prophecy/zipball/bbcd7380b0ebf3961ee21409db7b38bc31d69a13";
          sha256 = "1xw7x12lws8qdrryhbgjiih48gxwlq99ayhhsy0q2ls9i9p6mw0w";
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
        name = "phpstan-phpstan-b4d40f1d759942f523be267a1bab6884f46ca3f7";
        src = fetchurl {
          url = "https://api.github.com/repos/phpstan/phpstan/zipball/b4d40f1d759942f523be267a1bab6884f46ca3f7";
          sha256 = "0sbvbfcjyx6j4yaajy6iqsarf9iqa6pmz34p439kr8j5jcykadm2";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-d5850aaf931743067f4bfc1ae4cbd06468400687";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/d5850aaf931743067f4bfc1ae4cbd06468400687";
          sha256 = "0amms22y1ca77is9vkzyd3n8glrs7bgp0srsr3wg5f8jwwapn8cn";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
          sha256 = "1407d8f1h35w4sdikq2n6cz726css2xjvlyr1m4l9a53544zxcnr";
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
        name = "phpunit-phpunit-597cb647654ede35e43b137926dfdfef0fb11743";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/597cb647654ede35e43b137926dfdfef0fb11743";
          sha256 = "106d9hbnb1jzr8cbh5wjwyz0ykyr2lch04ahh32k7cgz5glwa74z";
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
        name = "sebastian-exporter-65e8b7db476c5dd267e65eea9cab77584d3cfff9";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/65e8b7db476c5dd267e65eea9cab77584d3cfff9";
          sha256 = "071813jw7nlsa3fs1hlrkl5fsjz4sidyq0i26p22m43isvvyad0q";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-19c519631c5a511b7ed0ad64a6713fdb3fd25fe4";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/global-state/zipball/19c519631c5a511b7ed0ad64a6713fdb3fd25fe4";
          sha256 = "0wbn6j9lcg86lkgcplp1ycayjs8xkn4shnib1j6n88vslw43spb5";
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
        name = "symfony-debug-5de6c6e7f52b364840e53851c126be4d71e60470";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/debug/zipball/5de6c6e7f52b364840e53851c126be4d71e60470";
          sha256 = "1kmf8kk5ra6nr17z007vacw3dvpcglng584l0y98wrn5kmmfgh4x";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-dec8a9f58d20df252b9cd89f1c6c1530f747685d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher/zipball/dec8a9f58d20df252b9cd89f1c6c1530f747685d";
          sha256 = "0mf1h2v8xgfn8k55y9yhwr9pb9jia4va5a91xfchyvfyzd5x4sm4";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-66bea3b09be61613cd3b4043a65a8ec48cfa6d2a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/66bea3b09be61613cd3b4043a65a8ec48cfa6d2a";
          sha256 = "03bx5j7xh5bv1v17nlaw9wnbad66bzwp5w7npg8w2b01my49phfy";
        };
      };
    };
    "symfony/options-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-options-resolver-cc1147cb11af1b43f503ac18f31aa3bec213aba8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/options-resolver/zipball/cc1147cb11af1b43f503ac18f31aa3bec213aba8";
          sha256 = "0jnn1aybjfah3ivhgrc5k6bwhs5r90f0fdcybhp95an0wxr6z45z";
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
    "symfony/stopwatch" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-stopwatch-395220730edceb6bd745236ccb5c9125c748f779";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/stopwatch/zipball/395220730edceb6bd745236ccb5c9125c748f779";
          sha256 = "0vb0jxjzfpcnhhhivn49i3qanss7hak002pswsddl56ylkvw0cw7";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-970a01f208bf895c5f327ba40b72288da43adec4";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/970a01f208bf895c5f327ba40b72288da43adec4";
          sha256 = "1fi6kbwq0p4sk3yzjn8nkspms39pbnmxjmgygkwpaacsi6192z9d";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-34a41e998c2183e22995f158c581e7b5e755ab9e";
        src = fetchurl {
          url = "https://api.github.com/repos/theseer/tokenizer/zipball/34a41e998c2183e22995f158c581e7b5e755ab9e";
          sha256 = "1za4a017kjb4rw2ydglip4bp5q2y7mfiycj3fvnp145i84jc7n0q";
        };
      };
    };
  };
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "phpactor-phpactor";
  src = sources.phpactor;
  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "MIT";
  };
}
