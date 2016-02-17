require 'spec_helper'

class DummyClass
end

describe Kuby::Link::MechjebMethods do
  subject { DummyClass.new }

  before do
    subject.extend Kuby::Link::MechjebMethods
    allow(subject).to receive(:api_get)
  end
end
