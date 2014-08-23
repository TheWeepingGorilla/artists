require 'rails_helper'

describe Tag do
  it "has and belongs to many artists" do
    artist1 = Artist.new(:name => "Bad Brains")
    artist2 = Artist.new(:name => "Eric Clapton")
    tag1 = Tag.new(:name => "Punk")
    tag2 = Tag.new(:name => "Reggae")
    tag3 = Tag.new(:name => "Classic Rock")
    tag1.artists << artist1
    tag2.artists << artist1
    tag2.artists << artist2
    tag3.artists << artist2
    tag1.save
    tag2.save
    tag3.save
    expect(artist1.tags).to eq [tag2, tag1]
    expect(artist2.tags).to eq [tag2, tag3]
    expect(tag1.artists).to eq [artist1]
    expect(tag2.artists).to eq [artist1, artist2]
  end
end
