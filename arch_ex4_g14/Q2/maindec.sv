module maindec( input logic [6:0] op,
                output logic [1:0] ResultSrc,
                output logic MemWrite,
                output logic Branch, ALUSrc,
                output logic RegWrite, Jump,
                output logic [1:0] ImmSrc,
                output logic [1:0] ALUOp,
                output logic TargetCtrl);
    logic [11:0] controls;
    assign {RegWrite, ImmSrc, ALUSrc, MemWrite,
            ResultSrc, Branch, ALUOp, Jump, TargetCtrl} = controls;
    always_comb
        case(op)
            // RegWrite_ImmSrc_ALUSrc_MemWrite_ResultSrc_Branch_ALUOp_Jump_TargetCtrl
            7'b0000011: controls = 12'b1_00_1_0_01_0_00_0_1; // lw
            7'b0100011: controls = 12'b0_01_1_1_00_0_00_0_1; // sw
            7'b0110011: controls = 12'b1_xx_0_0_00_0_10_0_1; // R–type
            7'b1100011: controls = 12'b0_10_0_0_00_1_01_0_1; // beq
            7'b0010011: controls = 12'b1_00_1_0_00_0_10_0_1; // I–type ALU
            7'b1101111: controls = 12'b1_11_0_0_10_0_00_1_1; // jal
            7'b1100111: controls = 12'b1_00_0_0_10_0_00_1_0;  // jalr

            default: controls = 12'bx_xx_x_x_xx_x_xx_x_x; // ???
        endcase
endmodule