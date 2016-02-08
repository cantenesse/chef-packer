#
# Cookbook Name:: packer
# Recipe:: default
#
# Copyright (C) 2013 Hadapt, Inc.
# 

# Install packages necessary for extracting stuff
include_recipe "ark"

packer_url = 'https://releases.hashicorp.com/packer/0.8.6/packer_0.8.6_darwin_amd64.zip'
packer_checksum = '91b5e5d4524a7a2f09a07aad1c8e26e1200b47191a42c1b2facac4a27fd674d0'

ark 'packer' do
    url packer_url 
    version node[:packer][:version]
    checksum packer_checksum
    has_binaries ["packer"]
    append_env_path false
    strip_leading_dir false

    action :install
end
