# RT 4.4.3 teszkörnyezet

## Előfeltételek
- docker telepítése
- docker-compose telepítése
- docker service elindítása
- docker futtatási jog a felhasználónak


## Indítás

```bash
docker-compose up -d
./container-init.sh
```

## Restart

```bash
docker restart rt
```

## Eltávolítás
```
docker-composer down -v
```

## Használat

A telepítés után a rendszer elérhető a localhost:8080-as porton. A root user adatai
- usernév: root
- jelszó: password

A fejlesztett plugint a plugins könyvtárban kell elhelyezni, majd a Custom_SiteConfig.pm fájlba 
fel kell venni a plugint, majd restartolni az rt-t

//TODO: milyen néven/szintaxissal kell felvenni a plugin-t? Plugin('RT::Extension::plugin_name');
//TODO: batch file windowshoz