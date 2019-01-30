#
# Cookbook Name:: crystal
# Recipe:: install
#

include_recipe 'homebrew' if platform?('mac_os_x')

package 'crystal'
