# encoding: utf-8

require 'spec_helper'
require 'github_api2/core_ext/hash'

describe Github::Validations::Required do

  let(:validator) {
    Class.new.extend(described_class)
  }

  context '#assert_required_keys' do
    let(:required) { ['param_a', 'param_c'] }
    let(:provided) { { 'param_a' => true, 'param_c' => true } }

    it 'detect missing parameter' do
      expect {
        validator.assert_required_keys(required, provided.except('param_c')).
          is_expected.to be false
      }.to raise_error(Github::Error::RequiredParams)
    end

    it 'asserts correct required parameters' do
      expect(validator.assert_required_keys(required, provided)).to be true
    end
  end

end # Github::Validations::Required
