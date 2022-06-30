# frozen_string_literal: true

include_controls 'inspec-aws'
require './test/library/common'

tfstate = StateFileReader.new

control 'default' do
  describe json(tfstate.state_file_path) do
    its(%w[outputs ami-kms-arn value ami_id]) { should eq 'ami-052efd3df9dad4825' }
    its(%w[outputs ami-kms-arn value kms_arn]) { should eq '' }
    its(%w[outputs ami-kms-arn value snapshot_id]) { should eq 'snap-02d9369affc74b4f8' }
    its(%w[outputs snapshot-kms-arn value ami_id]) { should eq nil }
    its(%w[outputs snapshot-kms-arn value kms_arn]) { should eq '' }
    its(%w[outputs snapshot-kms-arn value snapshot_id]) { should eq 'snap-02d9369affc74b4f8' }
  end
end
