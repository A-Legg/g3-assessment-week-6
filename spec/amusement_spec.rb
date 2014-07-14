require "parks"

describe ParksFilter do
  before do
    @parks =

      [
        {
          :id=>546,
          :name=>"Kalahari Resorts",
          :city=>"Wisconsin Dells",
          :state=>"Wisconsin",
          :country=>"United States"
        },
        {
          :id=>547,
          :name=>"Little Amerricka",
          :city=>"Marshall",
          :state=>"Wisconsin",
          :country=>"United States"
        },
        {
          :id=>2,
          :name=>"Calaway Park",
          :city=>"Calgary",
          :state=>"Alberta",
          :country=>"Canada"
        }
      ]
  end

  describe "#id_index" do
    it "returns a hash with the id as the key and all remaining values" do
      id = {
        546 => {
          :id=>546,
          :name=>"Kalahari Resorts",
          :city=>"Wisconsin Dells",
          :state=>"Wisconsin",
          :country=>"United States"
        },
        547 => {
          :id=>547,
          :name=>"Little Amerricka",
          :city=>"Marshall",
          :state=>"Wisconsin",
          :country=>"United States"
        }
      }
    expect(ParksFilter.new(@parks).id_index.to eq(id))

    end
    end

  describe "#country_id" do
    it "returns an array of hashes for each country" do
      country = {
        "Canada" => [
          {
            :id=>2,
            :name=>"Calaway Park",
            :city=>"Calgary",
            :state=>"Alberta",
            :country=>"Canada"
          }
        ],
        "United States" => [
          {
            :id=>546,
            :name=>"Kalahari Resorts",
            :city=>"Wisconsin Dells",
            :state=>"Wisconsin",
            :country=>"United States"
          },
          {
            :id=>547,
            :name=>"Little Amerricka",
            :city=>"Marshall",
            :state=>"Wisconsin",
            :country=>"United States"
          }
        ]
      }
    expect ParksFileter.new(@parks).country_index.to eq(country)

    end
    end





end