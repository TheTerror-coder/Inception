Projet d'Administration Système - Inception

Rôle : Développeur de projet
Technologies utilisées : Docker, Docker Compose, NGINX, WordPress, MariaDB, Makefile, Virtualisation, SSL/TLS, Script Shell, Variables d'environnement
Durée : [Insérer la période]
Aperçu :

Conception et déploiement réussi d'une infrastructure multi-services en utilisant Docker et Docker Compose dans un environnement virtualisé. Le projet consistait à configurer et déployer une pile d'application web comprenant NGINX, WordPress, PHP-FPM et MariaDB, le tout déployé dans des conteneurs isolés avec les volumes nécessaires pour le stockage de données persistantes. Une attention particulière a été portée sur la sécurité, l'automatisation et les bonnes pratiques de gestion des conteneurs.
Réalisations principales :

    Conteneurisation : Développement de Dockerfiles personnalisés pour les services NGINX, WordPress et MariaDB, assurant la performance et l'évolutivité des services.
    Sécurité : Configuration de NGINX avec les protocoles TLSv1.2/1.3 pour garantir des communications HTTPS sécurisées.
    Gestion des volumes : Mise en place de volumes Docker pour garantir la persistance des données de la base de données WordPress et des fichiers du site web.
    Gestion des environnements : Utilisation de variables d'environnement, fichiers .env et secrets Docker pour gérer en toute sécurité les informations sensibles et les identifiants.
    Réseautage : Création d'un réseau Docker interne pour faciliter la communication sécurisée entre les services.
    Automatisation : Rédaction d'un Makefile pour automatiser l'intégralité du processus de déploiement via Docker Compose, réduisant ainsi les interventions manuelles.
    Tolérance aux pannes : Configuration des conteneurs pour un redémarrage automatique en cas de défaillance afin de garantir la disponibilité continue des services.
    Configuration de domaine : Configuration d'un domaine local (login.42.fr) pointant vers l'adresse IP du projet pour faciliter l'accès.
    Meilleures pratiques : Respect des meilleures pratiques pour l'écriture de Dockerfiles, en évitant l'utilisation de solutions non robustes comme les boucles infinies ou les commandes tail.

Outils & Technologies :

    Docker, Docker Compose
    NGINX, WordPress, MariaDB
    SSL/TLS, Makefile
    Machine virtuelle, Réseautage
    Variables d'environnement, Secrets Docker
