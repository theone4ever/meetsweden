#!/bin/bash
cd ~
sudo rm -rf /data/opencart/html/
sudo rm -rf /data/mysql/
sudo mkdir -p /data/mysql
sudo chmod 777 /data/mysql
sudo mkdir -p /data/opencart/html
sudo cp -rf meetsweden/opencart-2.0.3.1/upload/* /data/opencart/html/
cd /data/opencart/html/
sudo chmod 777 ./config.php admin/config.php system/cache/ system/logs/ system/download/ system/upload/ image/ image/cache/ image/catalog/ system/modification

# google domain verificaiton: /data/opencart/html/catalog/view/theme/default/template/common/header.tpl

