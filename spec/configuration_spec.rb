require 'spec_helper'

describe Raddocs::Configuration do
  let(:configuration) { Raddocs::Configuration.new }

  subject { configuration }

  its(:settings) { should == {} }

  describe ".add_setting" do
    it 'should allow creating a new setting' do
      Raddocs::Configuration.add_setting :new_setting
      configuration.should respond_to(:new_setting)
      configuration.should respond_to(:new_setting=)
    end

    it 'should allow setting a default' do
      Raddocs::Configuration.add_setting :new_setting, :default => "default"
      configuration.new_setting.should == "default"
    end

    it "should allow the default setting to be a lambda" do
      Raddocs::Configuration.add_setting :another_setting, :default => lambda { |config| config.new_setting }
      configuration.another_setting.should == "default"
    end
  end

  describe "default settings" do
    its(:docs_dir) { should == "docs" }
  end
end