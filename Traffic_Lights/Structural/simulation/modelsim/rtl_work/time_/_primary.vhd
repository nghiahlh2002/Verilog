library verilog;
use verilog.vl_types.all;
entity \time_\ is
    port(
        en              : in     vl_logic;
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic
    );
end \time_\;
