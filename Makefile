# Installation de grr
install:
	docker compose up -d --build

# installation ou mise à jour
realright:
	find /var/www/html/ -type d -exec chmod 750 {} \; 
	find /var/www/html/ -type f -exec chmod 640 {} \;
	chmod 770 -R /var/www/html/
	chown -R www-data:www-data /var/lib/php/sessions
	chown -R www-data:www-data ./html/sessions
  
# Modification de droit pour MAJ grr
majright:
	chmod -R 777 .
  
# démarrer nginx
restart:
	docker compose restart
	
# lance le shell
shell:
	docker-compose exec gestsup /bin/bash
