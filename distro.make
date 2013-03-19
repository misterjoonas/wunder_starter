; Use this file to build a full distro including Drupal core (with patches) and
; the Wunder Starter install profile using the following command:
;
;     $ drush make distro.make [directory]

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.20"

; Use vocabulary machine name for permissions
; http://drupal.org/node/995156
projects[drupal][patch][995156] = http://drupal.org/files/issues/995156-5_portable_taxonomy_permissions.patch

; Add wunder_starter to the full Drupal distro build
projects[wunder_starter][type] = profile
projects[wunder_starter][download][type] = git
projects[wunder_starter][download][url] = git@mearra.beanstalkapp.com:/wunderstarter.git
