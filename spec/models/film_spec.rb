require 'spec_helper'

describe Film do
  # after(:each) do

  #         @document.versions.each do |v|
  #             store_path = File.dirname(File.dirname(v.document_file.url))
  #             temp_path = v.document_file.cache_dir
  #             FileUtils.rm_rf(Dir["#{Rails.root}/public/#{store_path}/[^.]*"])
  #             FileUtils.rm_rf(Dir["#{temp_path}/[^.]*"])
  #         end
  # end

  it "has many showings" do
    film = FactoryGirl.create(:film)
    showing = FactoryGirl.create(:showing, :film_id => film.id)

    puts film.inspect
    puts film.poster

    expect(film.showings).to include(showing)
  end
end
