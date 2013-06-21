USE default;
ALTER TABLE test_load_data015
    ADD
    PARTITION (dt = '2013-05-05', device = 'pc', type_id = '1')
    LOCATION '/user/hive/warehouse/test_load_data015/tmp/dt=2013-05-05/device=pc/type_id=1/'
    PARTITION (dt = '2013-05-05', device = 'mobile', type_id = '2')
    LOCATION '/user/hive/warehouse/test_load_data015/tmp/dt=2013-05-05/device=mobile/type_id=2/';
