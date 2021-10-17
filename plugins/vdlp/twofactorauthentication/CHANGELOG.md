# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.1.3] - 2021-10-05

### Fixed
- Fix missing usage of `force_all_super_users` configuration parameter.

## [3.1.2] - 2021-09-23

### Fixed
- Fix redirects while intercepting login.

## [3.1.1] - 2021-09-22

### Added
- Add French translation file.
- Extended logging.

### Changed
- Update October CMS version requirement to README.md file.

### Removed
- Removed `$elevated` property from `Plugin` class. (See: https://octobercms.com/support/article/rn-27#no-elevate)

## [3.1.0] - 2021-09-20

- Drop support for October CMS 1.x
- Add support for October CMS 2.x

## [3.0.0] - 2021-07-13

- Add support for PHP 8.0
- Minimum required PHP version is 7.4
- Add cancel buttons to modals.
- Add Bitwarden support.

## [2.0.2] - 2021-03-02

- Fixes typo in Configuration section in README file.

## [2.0.1] - 2021-02-23

- Fixes 2FA verification was skipped when 'remember me' was checked.
- Fixes issue that access log table was not updated after a successful login.

## [2.0.0] - 2020-12-31

- Add support for forcing 2FA set up after authentication.
- Added configuration options `force_all_super_users` and `force_all_users`.
- The property TwoFactorManager::$useThrottle has been removed (was unused).
- The interception TTL has been increased to 600 seconds.
- Improved UI and translation.
