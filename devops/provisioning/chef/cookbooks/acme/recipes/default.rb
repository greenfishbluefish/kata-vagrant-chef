# https://docs.chef.io/resource_group.html
group 'acme'

# https://docs.chef.io/resource_user.html
user 'acme' do
  group 'acme'
end

directory '/var/www/acme' do
  owner 'acme'
  group 'acme'
  mode '0755'
end

file '/var/www/acme/index.html' do
  owner 'acme'
  group 'acme'
  content "Hello from ACME\n"
  mode '0644'
end

hostsfile_entry '127.0.0.1' do
  action :create
  hostname 'acme.dev'
end

web_app 'acme' do
  cookbook 'apache2'
  server_name 'acme.dev'
  docroot '/var/www/acme'
end
