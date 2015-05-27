mysql_service 'joengo' do
  port '3306'
  version '5.5'
  initial_root_password 'banana'
  action [:create, :start]
end
