#!/bin/bash

# Suppression de la protection du dossier
chattr -i /root/gpo/linux-gpo

# Pull
cd /root/gpo/linux-gpo
git pull -fp origin main

# Ajout de la protection du dossier
chattr +i /root/gpo/linux-gpo