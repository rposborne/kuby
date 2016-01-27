require 'spec_helper'
class DummyClass
end

describe Kuby::Query do
  let(:link) { DummyClass.new }
  subject { Kuby::Query.new(link) }
  describe '#initialize' do
    it 'does something' do
      expect(subject.get_queries).to eq([])
      expect(subject.set_queries).to eq({})
    end
  end

  describe '#get' do
    it 'sets get keys' do
      subject.get(:roll)
      expect(subject.get_queries).to eq([:roll])
    end

    it 'can be chained' do
      subject.get(:roll)
      subject.get(:yaw)
      expect(subject.get_queries).to eq([:roll, :yaw])
    end

    it 'is chained in the order it is merged' do
      subject.get(:roll)
      subject.get(:yaw)
      subject.get(:roll)
      expect(subject.get_queries).to eq([:roll, :yaw])
    end
  end

  describe '#set' do
    it 'sets set keys' do
      subject.set(roll: 90)
      expect(subject.set_queries).to eq({roll: 90})
    end

    it 'can be chained' do
      subject.set(roll: 90)
      subject.set(yaw: 90)
      expect(subject.set_queries).to eq({roll: 90, yaw: 90})
    end

    it 'is chained in the order it is merged' do
      subject.set(roll: 90)
      subject.set(yaw: 90)
      subject.set(roll: 40)
      expect(subject.set_queries).to eq({roll: 40, yaw: 90})
    end
  end
end
