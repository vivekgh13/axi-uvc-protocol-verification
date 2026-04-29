program axi_tb();
  axi_env env;
  axi_slave_bfm bfm_s;
    initial begin  
      env = new();
      bfm_s = new();
      fork
      env.run();
      bfm_s.run();
        join
  end
endprogram
