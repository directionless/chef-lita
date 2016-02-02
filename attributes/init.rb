default['lita']['runit']['finish'] = false

# Settings for runit's env file. Override, or update as needed.
# Setting a value to nil, will cause it to be removed from hash passed to runit.
# Set to "" to preserve the empty string.
default['lita']['runit']['env']['HOME'] = node['lita']['install_dir']
default['lita']['runit']['env']['LANG'] = 'en_US.UTF-8'
default['lita']['runit']['env']['PATH'] = [
  node['languages']['ruby']['bin_dir'],
  node['languages']['ruby']['gem_bin'],
  node['languages']['ruby']['ruby_dir'],
].join(':')

default['lita']['init_style'] = 'runit'
