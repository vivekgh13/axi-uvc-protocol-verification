typedef enum {
    READ,
    WRITE,
    WRITE_READ
} wr_rd_e;
`define ADDR_WIDTH 32
`define DATA_WIDTH 32
`define STRB_WIDTH 4
`define ID_WIDTH 4

`define NEW
    function new(string name="", uvm_component parent=null);
        super.new(name, parent);
    endfunction

`define NEW_OBJ
    function new(string name="");
        super.new(name);
    endfunction


class axi_config; //it is class used to store all the commonly used varaibles
    static string testname;
    static mailbox gen2bfm = new();
    static mailbox bfm2gen = new();
    static mailbox mon2cov = new();
    static mailbox mon2ref = new();
    static virtual axi_intf vif;
endclass
