  def(tm)
      puts "minuts:"+tm.to_s
      start_time=Time.now
      puts start_time.strt(%I:%M:%S %P)
      tm.downto(1){|i| sleep 60}
      #end_time=Time.now
  end