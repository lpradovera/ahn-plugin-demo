
#Dummy plugin
class AhnPluginDemo < Adhearsion::Plugin
  
#  dialplan :adh_plugin_demo_3 do |call|
#    SayText.start(call)
#  end

  dialplan ({:name => :adh_plugin_demo, :load => false})

  class << self
    
    def init
    end
    
    def adh_plugin_demo(call)
      SayText.start(call)
    end
    
    def adh_plugin_demo_2
      SayText.start(call)
    end
  end
  

  class SayText

    def self.start(call)
      10.times do
        logger.info "Hello world"
      end
    end
  end
  
end
