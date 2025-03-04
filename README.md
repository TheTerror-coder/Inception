# Inception - Projet d'Administration Système

Description : Développement d'une infrastructure complète utilisant Docker pour déployer un site WordPress avec une architecture multi-conteneurs. Ce projet implique la création de plusieurs services dans des containers Docker, dont NGINX, WordPress + PHP-FPM, et MariaDB, ainsi que l'utilisation de volumes pour la persistance des données. Le projet inclut également des configurations de sécurité comme l'usage de TLSv1.2 ou TLSv1.3 pour le serveur NGINX, la gestion des variables d'environnement via .env et Docker secrets, et une configuration réseau entre les containers via Docker Compose.

Compétences et technologies utilisées :

    Langage : Docker, Bash (pour les scripts), configuration via docker-compose.yml
    Technologies : Docker, Docker Compose, NGINX, PHP-FPM, MariaDB, WordPress
    Systèmes : Virtualisation via machines virtuelles, gestion des réseaux Docker
    Outils : Dockerfile, gestion de containers, réseaux, volumes et fichiers .env

Responsabilités et Réalisations :

    Mise en place de l'infrastructure Docker :
        Création de plusieurs containers Docker pour les services NGINX (avec support TLS), WordPress avec PHP-FPM, et MariaDB, chacun dans son propre container dédié.
        Configuration des volumes pour la base de données et les fichiers du site WordPress, assurant leur persistance.
        Utilisation de Docker Compose pour orchestrer le déploiement de l'infrastructure via un seul fichier de configuration.

    Configuration de NGINX avec TLS :
        Mise en place du container NGINX avec une configuration HTTPS, en utilisant TLSv1.2 ou TLSv1.3 exclusivement, assurant la sécurité des communications.
        Le serveur NGINX a été configuré pour être le seul point d'entrée de l'infrastructure web via le port 443.

    Gestion de la base de données et WordPress :
        Configuration de MariaDB dans un container, avec un utilisateur spécifique pour WordPress et des paramètres de sécurité appropriés.
        Mise en place de WordPress avec PHP-FPM dans un container dédié, permettant d'exécuter les scripts PHP tout en étant isolé du serveur NGINX et de la base de données.

    Variables d’environnement et sécurité :
        Stockage sécurisé des variables d’environnement sensibles dans un fichier .env et utilisation de Docker secrets pour gérer des informations confidentielles comme les mots de passe de la base de données.
        Respect des bonnes pratiques de sécurité pour ne pas exposer de mots de passe ou clés API dans les Dockerfiles ou dans les commits.

    Orchestration et automatisation :
        Automatisation du processus de build des containers via un Makefile, qui déclenche la construction des images Docker à partir de Dockerfiles personnalisés, ainsi que l'exécution de docker-compose pour déployer les services.

    Tests et validation :
        Vérification de l'accès au site web via le domaine configuré (par exemple, wil.42.fr) pointant vers l'adresse IP locale de la machine virtuelle, assurant ainsi que l'infrastructure fonctionne comme prévu.
        Tests d'intégration pour s'assurer que chaque service (NGINX, MariaDB, WordPress) fonctionne correctement et peut interagir sans problème avec les autres services.

Performance et gestion des ressources :

    Optimisation de l'utilisation des ressources système en limitant le nombre de conteneurs redondants et en assurant que chaque service a une configuration adéquate en termes de performance et de gestion des erreurs.
    Configuration des containers pour qu'ils redémarrent automatiquement en cas de crash, assurant la disponibilité de l'infrastructure.

Résultats :

    Infrastructure Docker fonctionnelle : Mise en place complète d'une infrastructure Docker comprenant plusieurs services interconnectés, respectant les standards de sécurité et de performance.
    Optimisation des connexions sécurisées : NGINX avec TLSv1.2/v1.3 fonctionne comme point d'entrée sécurisé pour le site web.
    Persistance des données : Les volumes Docker assurent que les données de la base WordPress et les fichiers du site soient conservées même en cas de redémarrage des containers.
    Expérience utilisateur fluide : Accès sécurisé au site via HTTPS, avec une gestion optimale des services WordPress et MariaDB.

Expertise dans les domaines suivants :

    Administration Système et Virtualisation : Mise en place de machines virtuelles et gestion d'infrastructure Docker multi-conteneurs.
    Développement avec Docker : Création et gestion de Dockerfiles, utilisation de Docker Compose pour l’orchestration des services.
    Sécurité et bonnes pratiques : Configuration de TLS, gestion des variables d’environnement et sécurisation des données sensibles.

