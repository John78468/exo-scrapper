# intialiser un gemfile et installer bybug (docu)ok
# Recuperer le csv (chercher info csv comment recup des infos csv)
# Recuperer uniquement les noms et les numero de telephone et les mettre dans un hash (comment les mettres dans un hash custom avec mes valeurs)
# Afficher ce hash dans la console
# bonus
# Prendre ce hash et les mettre dans nouveau csv
require 'csv'
require 'byebug'

def scrap_csv
  doc_csv = CSV.parse(File.read("data_csv.csv"), headers: true)
  convert_to_a_with_h(doc_csv)
  generate_csv(doc_csv)
end

def convert_to_a_with_h(doc_csv)
  @array_of_hash= doc_csv.map do |row|
    row.to_h
    row.fields("full_name","phone_number")
  end
  puts @array_of_hash.to_h
end

def generate_csv(doc_csv)
  CSV.open("Enfin.csv", "a+") do |doc_csv|
    doc_csv << [@array_of_hash]
  end
end
def perform
  scrap_csv
end

perform

