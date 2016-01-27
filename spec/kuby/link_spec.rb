require 'spec_helper'

describe Kuby::Link do
  subject { Kuby::Link.new }

  describe '#initialize' do
    context 'without options' do
      it 'sets the host to the default' do
        expect(subject.host).to eq '127.0.0.1'
      end

      it 'sets the port to default' do
        expect(subject.port).to eq 8085
      end
    end

    context 'with host' do
      subject { Kuby::Link.new(host: 'kerbalhost.com') }

      it 'sets the host to the given value' do
        expect(subject.host).to eq 'kerbalhost.com'
      end
    end

    context 'with port' do
      subject { Kuby::Link.new(port: 1234) }

      it 'sets the port to the given value' do
        expect(subject.port).to eq 1234
      end
    end
  end

  describe '#connect!' do
    context 'unsupported version' do
      before do
        stub_request(:get, /r=a.version\z/).to_return(status: 200, body: '{"r":"1.4.5.0"}')
      end

      it 'raises a Kuby::UnsupportedTelemachusVersion exception' do
        expect do
          subject.connect!
        end.to raise_error Kuby::UnsupportedTelemachusVersion
      end
    end

    context 'connection refused' do
      before do
        stub_request(:get, /.+/).to_raise(Errno::ECONNREFUSED)
      end

      it 'raises a Kuby::TelemachusConnectionRefused exception' do
        expect do
          subject.connect!
        end.to raise_error Kuby::TelemachusConnectionRefused
      end
    end

    context 'connection ok' do
      it 'returns true' do
        expect(subject.connect!).to eq true
      end
    end
  end

  describe 'chainable' do
    context '#get' do
      before do
        stub_request(:get, /0=a.version\z/).to_return(status: 200, body: '{"version":"1.4.6.0"}')
      end
      it 'can be called' do
        expect(subject.get(:version)).to be_a Kuby::Query
      end

      it 'is lazy' do
        expect(subject.get(:version).call).to eq(version: '1.4.6.0')
      end
    end

    context 'multiple get and sets' do
      before do
        stub_request(:get, /0=a.version/)
          .to_return(status: 200, body: '{"version":"1.4.6.0","fly_by_wire":1}')
      end
      it 'can be called' do
        subject.get(:version).set(fly_by_wire: 1)
        expect(subject.query.call).to eq(version: '1.4.6.0', fly_by_wire: 1)
      end
    end
  end
end
