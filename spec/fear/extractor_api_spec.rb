RSpec.describe Fear::ExtractorApi do
  def assert(value)
    expect(value).to eq(true)
  end

  def assert_not(value)
    expect(value).not_to eq(true)
  end

  specify 'Array' do
    assert(Fear['[]'] === [])
    assert_not(Fear['[]'] === [1])
    assert(Fear['[1]'] === [1])
    assert_not(Fear['[1]'] === [1, 2])
    assert_not(Fear['[1]'] === [2])
    assert(Fear['[1, 2]'] === [1, 2])
    assert_not(Fear['[1, 2]'] === [1, 3])
    assert_not(Fear['[1, 2]'] === [1, 2, 4])
    assert_not(Fear['[1, 2]'] === [1])

    # assert(Fear['[a, b]']).to match([1, 2]) }
    #
    # it { expect(Fear['[a, b, c]']).to match([1, 2]) }
    #
    # it { expect(Fear['[a, b, _]']).to match([1, 2]) }
    #
    # it { expect(Fear['[a, b, c, d]']).not_to match([1, 2]) }
  end
end
