#
# Cookbook Name:: crystal
# Recipe:: install
#

include_recipe 'homebrew' if platform?('mac_os_x')
include_recipe 'crystal::prepare' unless platform?('mac_os_x')

package 'crystal'
