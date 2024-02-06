VERSION ?= 0.1.0

clean:
	php artisan route:clear
	php artisan cache:clear
	php artisan config:clear
	php artisan view:clear
	php artisan optimize:clear

test:
	php artisan serve

permissions:
	chmod 644 .env
	chmod 755 ./bootstrap/
	chmod 755 ./bootstrap/cache/
	chmod 755 ./storage/
	chmod 755 ./storage/logs/
	chmod 755 ./storage/framework/

chown:
	sudo chown -R <username>:<groupname> folder

install:
	php artisan down
	php artisan migrate
	php artisan db:seed
	php artisan key:generate
	php artisan storage:link
	make permissions
	make clean
	php artisan up

update:
	php artisan down
	php artisan migrate --force
	php artisan db:seed --force
	make clean
	php artisan up