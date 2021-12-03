{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
{
  "bitwarden-password-manager" = buildFirefoxXpiAddon {
    pname = "bitwarden-password-manager";
    version = "1.54.0";
    addonId = "{446900e4-71c2-419f-a6a7-df9c091e268b}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3859577/bitwarden_free_password_manager-1.54.0-an+fx.xpi";
    sha256 = "232b50247ea309b98c0c022fea9d8ca5ef227eb539bf27c58c2fd83d8270d9d7";
    meta = with lib;
      {
        homepage = "https://bitwarden.com";
        description = "A secure and free password manager for all of your devices.";
        license = licenses.gpl3;
        platforms = platforms.all;
      };
  };
  "certificate-pinner" = buildFirefoxXpiAddon {
    pname = "certificate-pinner";
    version = "0.17.10";
    addonId = "{9550e8a6-7884-43d1-ba9c-2c2928ab0a26}";
    url = "https://addons.mozilla.org/firefox/downloads/file/3599612/certificate_pinner-0.17.10-an+fx.xpi";
    sha256 = "54b77a89a94156ce4cbdf372bfac1df222a13c776698bd91705714a118961e97";
    meta = with lib;
      {
        description = "Pins TLS certificates of configured web pages and interrupts/alerts when a new certificate is presented. Adds a button to the browser's toolbar for pinning and unpinning.";
        license = licenses.gpl2;
        platforms = platforms.all;
      };
  };
  "darkreader" = buildFirefoxXpiAddon {
    pname = "darkreader";
    version = "4.9.42";
    addonId = "addon@darkreader.org";
    url = "https://addons.mozilla.org/firefox/downloads/file/3864423/dark_reader-4.9.42-an+fx.xpi";
    sha256 = "592885b9a7b568d055207eb52bef3e13aa75c1015a98a19b4e6ecd79c2725403";
    meta = with lib;
      {
        homepage = "https://darkreader.org/";
        description = "Dark mode for every website. Take care of your eyes, use dark theme for night and daily browsing.";
        license = licenses.mit;
        platforms = platforms.all;
      };
  };
  "enhancer-for-youtube" = buildFirefoxXpiAddon {
    pname = "enhancer-for-youtube";
    version = "2.0.108";
    addonId = "enhancerforyoutube@maximerf.addons.mozilla.org";
    url = "https://addons.mozilla.org/firefox/downloads/file/3865222/enhancer_for_youtubetm-2.0.108-fx.xpi";
    sha256 = "e2c1ee5298aa384472a25ab58ad99d8013d0377434872e3d12cad7fc9d0f49bd";
    meta = with lib;
      {
        homepage = "https://www.mrfdev.com/enhancer-for-youtube";
        description = "Take control of YouTube and boost your user experience!";
        platforms = platforms.all;
      };
  };
  "facebook-container" = buildFirefoxXpiAddon {
    pname = "facebook-container";
    version = "2.3.1";
    addonId = "@contain-facebook";
    url = "https://addons.mozilla.org/firefox/downloads/file/3818838/facebook_container-2.3.1-fx.xpi";
    sha256 = "37e5def08a300360a1667a16b281af41a9f282d0d85a2c7b05693db8b3e33853";
    meta = with lib;
      {
        homepage = "https://github.com/mozilla/contain-facebook";
        description = "Prevent Facebook from tracking you around the web. The Facebook Container extension for Firefox helps you take control and isolate your web activity from Facebook.";
        license = licenses.mpl20;
        platforms = platforms.all;
      };
  };
  "https-everywhere" = buildFirefoxXpiAddon {
    pname = "https-everywhere";
    version = "2021.7.13";
    addonId = "https-everywhere@eff.org";
    url = "https://addons.mozilla.org/firefox/downloads/file/3809748/https_everywhere-2021.7.13-an+fx.xpi";
    sha256 = "e261461b5d4d3621285fce70773558184d691c614b330744dab672f032db731c";
    meta = with lib;
      {
        homepage = "https://www.eff.org/https-everywhere";
        description = "Encrypt the web! HTTPS Everywhere is a Firefox extension to protect your communications by enabling HTTPS encryption automatically on sites that are known to support it, even when you type URLs or follow links that omit the https: prefix.";
        platforms = platforms.all;
      };
  };
  "lastpass-password-manager" = buildFirefoxXpiAddon {
    pname = "lastpass-password-manager";
    version = "4.85.1.3";
    addonId = "support@lastpass.com";
    url = "https://addons.mozilla.org/firefox/downloads/file/3872176/lastpass_password_manager-4.85.1.3-an+fx.xpi";
    sha256 = "6e160766e25cb10cc787a5bf4c661b7bf97be0bdd4dd83174464b312cb6e423a";
    meta = with lib;
      {
        homepage = "https://lastpass.com/";
        description = "LastPass, an award-winning password manager, saves your passwords and gives you secure access from every computer and mobile device.";
        platforms = platforms.all;
      };
  };
  "reddit-enhancement-suite" = buildFirefoxXpiAddon {
    pname = "reddit-enhancement-suite";
    version = "5.22.5";
    addonId = "jid1-xUfzOsOFlzSOXg@jetpack";
    url = "https://addons.mozilla.org/firefox/downloads/file/3784229/reddit_enhancement_suite-5.22.5-an+fx.xpi";
    sha256 = "213f1ada92bb9d2814e6760cf20a2dc3cf2cc31b503e2baa8fe2f784be6df11c";
    meta = with lib;
      {
        homepage = "https://redditenhancementsuite.com/";
        description = "Reddit Enhancement Suite (RES) is a suite of tools to enhance your Reddit browsing experience.";
        license = licenses.gpl3;
        platforms = platforms.all;
      };
  };
  "ublock-origin" = buildFirefoxXpiAddon {
    pname = "ublock-origin";
    version = "1.39.2";
    addonId = "uBlock0@raymondhill.net";
    url = "https://addons.mozilla.org/firefox/downloads/file/3875359/ublock_origin-1.39.2-an+fx.xpi";
    sha256 = "02e139624549b733542b95c4c75b6b315a09cce91373c263ba2f18ca5ed8d93a";
    meta = with lib;
      {
        homepage = "https://github.com/gorhill/uBlock#ublock-origin";
        description = "Finally, an efficient wide-spectrum content blocker. Easy on CPU and memory.";
        license = licenses.gpl3;
        platforms = platforms.all;
      };
  };
}
