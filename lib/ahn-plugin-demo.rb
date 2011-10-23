
#Dummy plugin
class AhnPluginDemo < Adhearsion::Plugin
  
#  dialplan :adh_plugin_demo_3 do |call|
#    SayText.start(call)
#  end

  class << self
    
    def dialplan_methods
      [:adh_plugin_demo]
    end

    def init
      Proc.new {
        methods_for :dialplan do
          def adh_plugin_demo_2
            SayText.new(self).start
          end
        end
      }
    end
    
    def adh_plugin_demo
      SayText.new(self).start
    end
    
    def adh_plugin_demo_2
      SayText.new(self).start
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
