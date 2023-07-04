module mux_32 (
    input logic [4:0] sel,
    input logic [31:0] data,
    output logic out
);

wire [3:0] first;


mux_8 m0(.sel(sel[2:0]), .data(data[7:0]), .out(first[0]));
mux_8 m1(.sel(sel[2:0]), .data(data[15:8]), .out(first[1]));
mux_8 m2(.sel(sel[2:0]), .data(data[23:16]), .out(first[2]));
mux_8 m3(.sel(sel[2:0]), .data(data[31:24]), .out(first[3]));

wire [1:0] second;

mux2_if m4(.sel(sel[3:2]), .data(first[1:0]), .out(second[0]));
mux2_if m5(.sel(sel[3:2]), .data(first[3:2]), .out(second[1]));

mux2_case m6(.sel(sel[4:3]), .data(second[1:0]), .out(out));


endmodule