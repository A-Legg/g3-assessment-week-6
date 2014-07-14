Class ParksFilter

def initialize(parks)
  @parks = parks

  def index_id

    id = {}

    @parks.each do |id_index|
      if @parks[:id] < 500

        id << {id_index[:id] => id_index[:id][:name][:city][:state][:country]}


      end
      id
  end
  end

  def index_country
    country = {}
    @parks.each do |country_index|
      country << [country_index[:country] => {country_index[:id][:name][:city][:state][:country]}}]
    end
  end
end

# {
#   "Canada" => [
#     {
#       :id=>2,
#       :name=>"Calaway Park",
#       :city=>"Calgary",
#       :state=>"Alberta",
#       :country=>"Canada"
#     }
#   ],
#   "United States" => [
#     {
#       :id=>546,
#       :name=>"Kalahari Resorts",
#       :city=>"Wisconsin Dells",
#       :state=>"Wisconsin",
#       :country=>"United States"
#     },
#     {
#       :id=>547,
#       :name=>"Little Amerricka",
#       :city=>"Marshall",
#       :state=>"Wisconsin",
#       :country=>"United States"
#     }
#   ]
# }


# [
#   {
#     :id=>546,
#     :name=>"Kalahari Resorts",
#     :city=>"Wisconsin Dells",
#     :state=>"Wisconsin",
#     :country=>"United States"
#   },
#   {
#     :id=>547,
#     :name=>"Little Amerricka",
#     :city=>"Marshall",
#     :state=>"Wisconsin",
#     :country=>"United States"
#   }
# ]


# {
#   546 => {
#     :id=>546,
#     :name=>"Kalahari Resorts",
#     :city=>"Wisconsin Dells",
#     :state=>"Wisconsin",
#     :country=>"United States"
#   },
#   547 => {
#     :id=>547,
#     :name=>"Little Amerricka",
#     :city=>"Marshall",
#     :state=>"Wisconsin",
#     :country=>"United States"
#   }
# }