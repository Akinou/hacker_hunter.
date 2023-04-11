# hacker_hunter.
surveille l'activité du système en temps réel et envoie des alertes en cas d'activité suspecte ou de tentative de violation de la sécurité.


Ce script surveille le fichier de logs /var/log/secure en temps réel à l'aide de la commande tail -f. Il recherche des mots clés suspects tels que "Failed password", "Invalid user" ou "authentication failure" dans chaque ligne de log, qui peuvent indiquer une tentative de connexion malveillante ou une violation de la sécurité. Si une ligne de log correspond à l'un de ces mots clés, le script envoie une alerte par email à l'adresse spécifiée dans la variable ALERT_EMAIL, avec le message défini dans la variable ALERT_MESSAGE et le sujet ALERT_SUBJECT.

Bien sûr, ce script est un exemple de base et peut être adapté pour surveiller d'autres fichiers de logs ou utiliser d'autres méthodes d'alerte, telles que l'envoi de SMS ou la notification via un système de messagerie instantanée. Il est important de noter que ce script ne remplace pas une stratégie de sécurité globale et l'utilisation de mesures de sécurité supplémentaires pour protéger votre système est toujours recommandée.
