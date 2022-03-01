#!/bin/bash


################################################################################
#### Script d'initialisation des GPO
################################################################################

mkdir -p /root/gpo/logs/ && cd /root/gpo/linux-gpo
ansible-playbook systemd-jobs/gpo-systemd-settings.yml --connection=local --diff | tee /root/gpo/logs/gpo_systemd_settings_$(date +%d-%m-%y).log
ansible-playbook package-update/gpo-package-update.yml --connection=local --diff | tee /root/gpo/logs/gpo_package_update_$(date +%d-%m-%y).log
