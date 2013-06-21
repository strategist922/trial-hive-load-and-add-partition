require "digest/md5"

base_path = "/tmp/ishikawa_yu/test_data"
begin
    Dir::mkdir(base_path, 0777)
end
md5 = Digest::MD5.new
0.upto(23).each do |hour|
  file_name = sprintf("%02d", hour)
  file = File.open("#{base_path}/test_data#{file_name}.tsv", 'w')
  1.upto(1000).each do |index|
    file.puts("#{(hour+1) * index}\t#{md5.update(index.to_s)}")
  end
end
