require 'rails_helper'

describe Artist do
  it "has and belongs to many tags" do
    artist1 = Artist.new(:name => "Bad Brains")
    artist2 = Artist.new(:name => "Eric Clapton")
    tag1 = Tag.new(:name => "Punk")
    tag2 = Tag.new(:name => "Reggae")
    tag3 = Tag.new(:name => "Classic Rock")
    artist1.tags << tag1
    artist1.tags << tag2
    artist2.tags << tag2
    artist2.tags << tag3
    artist1.save
    artist2.save
    expect(artist1.tags).to eq [tag1, tag2]
    expect(artist2.tags).to eq [tag2, tag3]
    expect(tag1.artists).to eq [artist1]
    expect(tag2.artists).to eq [artist2, artist1]
  end
end
