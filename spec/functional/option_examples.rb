RSpec.shared_examples 'Option' do
  specify '#get_or_else raises exception is no block given' do
    expect do
      subject.get_or_else
    end.to raise_error(ArgumentError)
  end

  specify '#map raises exception is no block given' do
    expect do
      subject.map
    end.to raise_error(ArgumentError)
  end

  specify '#inject raises exception is no block given' do
    expect do
      subject.inject(32)
    end.to raise_error(ArgumentError)
  end
end
