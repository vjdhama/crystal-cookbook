#
# Cookbook Name:: crystal
# Recipe:: prepare
#

case node['platform']
when 'debian', 'ubuntu'
  package_manager = 'apt'
when 'redhat', 'centos', 'fedora'
  package_manager = 'rpm'
end

remote_file '/tmp/setup.sh' do
  source "http://dist.crystal-lang.org/#{package_manager}/setup.sh"
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

