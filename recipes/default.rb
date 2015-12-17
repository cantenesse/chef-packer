#
# Cookbook Name:: packer
# Recipe:: default
#
# Copyright (C) 2013 Hadapt, Inc.
# 

# Install packages necessary for extracting stuff
include_recipe "ark"

packer_url = 'https://dl.bintray.com/mitchellh/packer/packer_0.8.6_linux_amd64.zip'
packer_checksum = '2f1ca794e51de831ace30792ab0886aca516bf6b407f6027e816ba7ca79703b5'

ark 'packer' do
    url packer_url 
    version node[:packer][:version]
    checksum packer_checksum
    has_binaries ["packer"]
    append_env_path false
    strip_leading_dir false

    action :install
end
