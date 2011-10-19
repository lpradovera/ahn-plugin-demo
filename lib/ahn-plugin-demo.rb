#Dummy plugin

class AhnPluginDemo < Adhearsion::Plugin

  class << self
    def init
      define_method :adh_plugin_demo do
        create_say_text(self).start
      end
    end
  
    def create_say_text(value)
      SayText.new(value)
    end
  end
  

  class SayText

    def initialize(call)
      @call = call
    end

    def start
      10.times do
        @call.play %W['Hello world']
      end
    end
  end
  
end
