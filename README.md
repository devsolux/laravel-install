# Laravel Install

```bash
php artisan laravel:install
```

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/devsolux/laravel-install"
    }
  ],
  "require": {
    "devsolux/laravel-install": "dev-master"
  }
}
```

## PHP configuration
```ini
max_execution_time = 30000
max_input_time = 30000
memory_limit = 512M
post_max_size=100M
Upload_max_filesize = 128M
```

## Make sure to all extensions are available
```ini
extension=curl
extension=fileinfo
extension=gd
extension=gettext
extension=intl
extension=mbstring
extension=exif
extension=mysqli
extension=pdo_mysql
extension=pdo_sqlite
extension=zip
```
