node[:deploy].each do |app, deploy|
  file File.join(deploy[:deploy_to], 'shared', 'config', 'mydatabase.yml') do
    content YAML.dump(node[deploy:][app].to_hash)
  end
end 
