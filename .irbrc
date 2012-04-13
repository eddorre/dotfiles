alias q exit

require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:AUTO_INDENT] = true

def load_gem(gem_name, &block)
  begin
    require gem_name
    yield if block_given?
  rescue LoadError
    puts "Couldn't load gem #{gem_name}"
  end
end

load_gem 'wirble' do
  Wirble.init
  Wirble.colorize
end

load_gem 'bond' do
  Bond.start
end

load_gem 'ap'
