# lftp_fme
backport builder of lftp 4.8.1 for debian jessie

---

# pre requis:
installer dokker et docker compose

# compilation

```
# Cloner le repo
git clone git@github.com:neogeo-technologies/lftp_fme.git

cd lftp_fme
# builder l'image et créer un container (temporaire)
docker-compose build
docker-compose up

# recuperer le paquet sur le container
docker cp lftpfme_builder_1:/src/lftp_4.8.1-1~sdr1+1_amd64.deb ./

Et voilà
# 
```
