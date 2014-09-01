require 'spec_helper'

# Timezone
describe command('packer -v') do
  its(:stdout) { should match(/0.6.1/) }
end
