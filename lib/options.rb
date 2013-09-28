require 'optparse'
module Options
  def self.parse!
    options = OpenStruct.new speed: 0.02

    OptionParser.new do |opts|
      opts.on("-s", "--speed=val", Float)  { |arg| options.speed = arg }
      opts.on("-h", "--help")              { exec "more #{__FILE__}"   }
    end.parse!
    options
  end
end

