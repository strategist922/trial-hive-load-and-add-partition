USE default;

LOAD DATA INPATH '/user/hive/warehouse/test_load_data015/tmp/dt=2013-05-04/device=pc/type_id=1/*'
OVERWRITE INTO TABLE test_load_data015 PARTITION (dt = '2013-05-04', device = 'pc', type_id = '1');
LOAD DATA INPATH '/user/hive/warehouse/test_load_data015/tmp/dt=2013-05-04/device=mobile/type_id=2/*'
OVERWRITE INTO TABLE test_load_data015 PARTITION (dt = '2013-05-04', device = 'mobile', type_id = '2');
