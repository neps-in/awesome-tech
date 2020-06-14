# Awesome popular Wordpress Bugs / errors and their solutions.

####  Plugin Installation failed 

Everytime you want to install plugin from the wordpress dashboard you get this error.

```
Installation failed: Download failed. Destination directory for file streaming does not exist or is not writable.
```
#### Solution

#### Make `wp-content` folder writable

1. Make sure you have right permission (make it writable) by the apache process for the folder `wp-content` otherwise give right permissions `sudo chmod -R 755 wp-content`

#### Setup WP_TEMP_DIR for wordpress.
2. Sometime it could be because of temp folder missing. Please add the following line in `wp-config.php`.

Its good to give seperate directory inside wp-content like the following.

Manytimes we may forget to create temp directory inside wp-content. In your wordpress folder, create `mkdir wp-content/temp`.

```
define('WP_TEMP_DIR', ABSPATH . 'wp-content/temp/');
```





