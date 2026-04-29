module top;
`include "test_lib.sv"

logic clk, rstn;

axi_intf vif(clk, rstn);  
initial begin
        uvm_config_db#(virtual axi_intf)::set(uvm_root::get(), "*", "vif_a", vif);
end
initial begin
        rstn = 0;
    repeat(2) @(posedge clk);
    rstn = 1;
	end

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    run_test();
end


initial begin
    $value$plusargs("testname=%s", axi_config::testname);  //string in to test_no
end

endmodule
