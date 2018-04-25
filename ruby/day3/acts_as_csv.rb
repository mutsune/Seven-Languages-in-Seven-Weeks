module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << CsvRow.new(row.chomp.split(', '))
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

    def method_missing(name, *_, &block)
      if name.to_s == "each"
        csv_contents.each {|r|
          block.call r
        }
      end
    end
  end
end

class CsvRow
  def initialize(row = [])
    @row = row
  end

  def one
    @row.first
  end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect

csv = RubyCsv.new
csv.each {|row| puts row.one}
# > lions
