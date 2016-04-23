#
# Cookbook Name:: crystal
# Recipe:: install
#

case node['platform']
when 'debian', 'ubuntu'
  apt_package 'crystal' do
    action :install
    options '--force-yes'
  end
when 'redhat', 'centos', 'fedora'
  yum_package 'crystal' do
    action :install
    flush_cache [ :before ]
  end
end


