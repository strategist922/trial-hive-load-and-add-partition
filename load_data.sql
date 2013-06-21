USE default;
LOAD DATA LOCAL INPATH '/tmp/ishikawa_yu/test_data/*'
OVERWRITE INTO TABLE test_load_data010
PARTITION (dt = "2013-05-01", device = "pc", type_id = 1);
LOAD DATA LOCAL INPATH '/tmp/ishikawa_yu/test_data/*'
OVERWRITE INTO TABLE test_load_data010
PARTITION (dt = "2013-05-01", device = "mobile", type_id = 2);

set hive.exec.compress.output=true;
set mapred.output.compression.codec=org.apache.hadoop.io.compress.SnappyCodec;
set mapred.output.compression.type=BLOCK;
INSERT OVERWRITE TABLE test_load_data015
    PARTITION (dt = "2013-05-01", device = "pc", type_id = 1)
SELECT id, name FROM test_load_data010
WHERE dt = "2013-05-01" AND device = "pc" AND type_id = 1;
INSERT OVERWRITE TABLE test_load_data015
    PARTITION (dt = "2013-05-01", device = "mobile", type_id = 2)
SELECT id, name FROM test_load_data010
WHERE dt = "2013-05-01" AND device = "mobile" AND type_id = 2;
