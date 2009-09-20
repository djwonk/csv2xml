require 'csv'
require 'rubygems'
require 'xmlsimple'

class Convert
  
  def self.csv_to_xml(filename)
    data = from_csv(filename)
    puts to_xml(data)
  end
  
  def self.from_csv(filename)
    rows = []
    CSV.open(filename, 'r') do |row|
      rows << {
        "id"   => row[0],
        "text" => row[1]
      }
    end
    { "opinion" => rows }
  end
  
  def self.to_xml(data)
    xs = XmlSimple.new(
      "xml_declaration" => true,
      "root_name"       => "opinions",
      "content_key"     => "text"
    )
    xs.xml_out(data)
  end
  
end

Convert.csv_to_xml(ARGV[0])
