class axi_agent extends uvm_env;
    axi_driver driver;
    axi_slave_bfm slave_bfm;
    axi_sqr sqr;
    axi_mon mon;
    axi_cov cov;
    `uvm_component_utils(axi_agent)
    `NEW
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        driver = axi_driver::type_id::create("driver", this);
        slave_bfm = axi_slave_bfm::type_id::create("slave_bfm", this);
        sqr = axi_sqr::type_id::create("sqr", this);
        mon = axi_mon::type_id::create("mon", this);
        cov = axi_cov::type_id::create("cov", this);
    endfunction

    function void connect_phase(uvm_phase phase);
        driver.seq_item_port.connect(sqr.seq_item_export);
    endfunction
  
    task run();
        $display("axi_env :: run");
        fork
            bfm.run();
            sqr.run();
            mon.run();
            cov.run();
        join
    endtask
    
endclass
