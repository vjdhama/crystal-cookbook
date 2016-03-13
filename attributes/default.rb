#
# Cookbook Name:: crystal
# Attributes:: default
#

default['crystal'].tap do |crystal|
  crystal['repository'] = 'https://github.com/crystal-lang/crystal'
  crystal['install_path'] = '/opt/crystal'
  crystal['owner'] = 'root'
  crystal['group'] = 'root'
  crystal['mode'] = '0755'
end


