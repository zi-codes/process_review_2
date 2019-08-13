require 'bandpass_filter'

describe BandpassFilter do
  it "can filter an array of one soundwave" do
    expect(subject.filter([5],6,1)).to eq [5]
  end

  it "can filter an array of one frequency where the frequency is equal to the upper limit" do
    expect(subject.filter([6],6,1)).to eq [6]
  end

  it "can filter an array of one frequency where the frequency is equal to the lower limit" do
    expect(subject.filter([1],6,1)).to eq [1]
  end

  it "can filter a soundwave array of several frequencies where one of the frequencies is above the upper limit " do
    expect(subject.filter([5,6,7], 6, 1)).to eq [5,6,6]
  end

  it "can filter a soundwave array of several frequencies where one of the frequencies is below the lower limit" do
    expect(subject.filter([1,3,4], 6, 2)).to eq [2,3,4]
  end

  it "can filter a soundwave array where the frequencies are not in order and some are above the upper limit" do
    expect(subject.filter([2,6,3,5], 4, 2)).to eq [2,4,3,4]
  end

  it "can filter a soundwave array where the frequencies are not in order and there are some above the upper limit and some below the lower limit" do
    expect(subject.filter([0,6,10,3,2], 7, 3)).to eq [3,6,7,3,3]
  end

  it "will throw an error when there are frequencies with the value of nil contained within the soundwave array" do
    expect{subject.filter([5,nil,6,7],6,3)}.to raise_error("There are nils contained within the soundwave")
  end

  it "will throw an error when there are several frequencies with the value of nil contained within the soundwave array" do
    expect{subject.filter([5,nil,6,nil,nil,7],6,3)}.to raise_error("There are nils contained within the soundwave")
  end

  it "will throw an error when there is only a nil frequency in the array" do
    expect{subject.filter([nil],6,3)}.to raise_error("There are nils contained within the soundwave")
  end
end
