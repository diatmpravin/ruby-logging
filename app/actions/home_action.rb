class HomeAction < Cramp::Action
  def start
    
    #count = File.foreach("/home/ubuntu/demo/log/development.log").inject(0) {|c, line| c+1}
    #render count + "\n"


    File.open("/home/ubuntu/demo/log/development.log", "r").each_line do |line|
      render( line + "\n")
    end

    finish
  end
end
