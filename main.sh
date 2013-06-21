#!/bin/sh

ruby gen_data.rb
sudo -u hdfs hive < cretate_table.sql
sudo -u hdfs hive < load_data.sql
sudo -u hdfs bash copy_data.sh
sudo -u hdfs hive < load_data_from_hdfs.sql
sudo -u hdfs hive < add_new_partition.sql
