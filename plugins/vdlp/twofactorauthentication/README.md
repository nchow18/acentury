<p align="center">
	<img height="60px" width="60px" src="https://plugins.vdlp.nl/octobercms/icons/Vdlp.TwoFactorAuthentication.svg">
	<h1 align="center">Vdlp.TwoFactorAuthentication</h1>
</p>

<p align="center">
	<em>This plugin adds Two Factor Authentication to the Backend of October CMS.</em>
</p>

<p align="center">
	<img src="https://badgen.net/badge/cms/October%20CMS">
	<img src="https://badgen.net/badge/type/plugin">
</p>

## Requirements

* October CMS 2.0 or higher
* PHP 7.4 or higher

## Configuration

To configure this plugin execute the following command:

```
php artisan vendor:publish --provider="Vdlp\TwoFactorAuthentication\ServiceProvider" --tag="config"
```

This will create a `config/twofactorauthentication.php` file in your app where you can modify the configuration.

## What makes this plugin better than others?

* Each Secret Key is stored **encrypted**.
* Actively Maintained by Van der Let & Partners (official October CMS partner).
* User Friendly UI.
* New features will be added frequently.

## Supported Apps

* [Authy for iOS, Android, Chrome, Mac OS](https://www.authy.com/)
* [FreeOTP for iOS, Android and Pebble](https://apps.getpebble.com/en_US/application/52f1a4c3c4117252f9000bb8)
* [Google Authenticator for iOS](https://itunes.apple.com/us/app/google-authenticator/id388497605?mt=8)
* [Google Authenticator for Android](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2)
* [Google Authenticator (port) on Windows Store](https://www.microsoft.com/en-us/store/p/google-authenticator/9wzdncrdnkrf)
* [Microsoft Authenticator for Windows Phone](https://www.microsoft.com/en-us/store/apps/authenticator/9wzdncrfj3rj)
* [LastPass Authenticator for iOS, Android, Mac OS, Windows](https://lastpass.com/auth/)
* [1Password for iOS, Android, Mac OS, Windows](https://1password.com)
* [Bitwarden for iOS, Android, Mac OS, Linux, Windows](https://bitwarden.com/)

## Questions? Need help?

If you have any question about how to use this plugin, please don't hesitate to contact us at [octobercms@vdlp.nl](mailto:octobercms@vdlp.nl). We're
happy to help you. You can also visit the support forum and drop your questions/issues there.

---

> If you love this quality plugin as much as we do, please [**rate our plugin**](https://octobercms.com/plugin/vdlp-twofactorauthentication).

---
