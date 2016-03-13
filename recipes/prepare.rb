#
# Cookbook Name:: crystal
# Recipe:: prepare
#

remote_file '/tmp/setup.sh' do
  source 'http://dist.crystal-lang.org/apt/setup.sh'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  notifies :run, 'bash[update]', :immediately
end

bash "update" do
  user 'root'
  group 'root'
  cwd '/tmp'
  code <<-EOH
    ./setup.sh
  EOH
  action :nothing
end

