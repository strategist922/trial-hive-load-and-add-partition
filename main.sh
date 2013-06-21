#!/bin/sh

ruby gen_data.rb
hive < cretate_table.sql
hive < load_data.sql
bash copy_data.sh
bash copy_data020.sh
#hive < load_data_from_hdfs.sql
#hive < add_new_partition.sql
#hive < load_data_from_hdfs020.sql
#hive < add_new_partition020.sql
