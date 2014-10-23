#
# Cookbook Name:: packer
# Recipe:: default
#
# Copyright (C) 2013 Hadapt, Inc.
# 

# Install packages necessary for extracting stuff
include_recipe "ark"

packer_url = 'https://dl.bintray.com/mitchellh/packer/packer_0.7.1_linux_amd64.zip'
packer_checksum = '4f7b8cd96a147f9473cc724397613c8d98bbf0d8cb037b122785ff252eb12581'

ark 'packer' do
    url packer_url 
    version node[:packer][:version]
    checksum packer_checksum
    has_binaries ["packer"]
    append_env_path false
    strip_leading_dir false

    action :install
end
