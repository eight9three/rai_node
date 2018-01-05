# rai_node
Docker Rai node

```shell

# Build & start docker instance once

$ docker-compose up -d
Building rai_node
Creating rai_node
$ docker-compose down
Stopping rai_node ... done
Removing rai_node ... done

# Download latest data file and extract to the data/Raiblocks/ directory (Didn't automate this part, yet)
# https://cdn.discordapp.com/attachments/370285680691249162/395696249862356997/RaiBlocks_fast_sync_tutorial.pdf

$ 7z e -odata/RaiBlocks/ RaiBlocks_Linux64_2018_01_04_07.7z
file data/RaiBlocks/data.ldb
already exists. Overwrite with
data.ldb?
(Y)es / (N)o / (A)lways / (S)kip all / A(u)to rename all / (Q)uit? y
Extracting  data.ldb

# Restart the docker instance again

$ docker-compose up -d
Creating rai_node
$ docker exec -ti rai_node /bin/bash
$ /rai_node --debug_block_count
Block count: 4768568
```
