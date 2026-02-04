module instruction_memory (
    input           clk_i,
    input           reset_i,
    input  [31:0]   iaddr_i,
    input           ird_i,
    output          accept,
    output reg [31:0] irdata_o
);

    assign accept = 1;
    reg [31:0] data;
    
    // Define HALT instruction - Using a custom instruction format
    // You can use an unused opcode or create a custom one
    // For RISC-V, we'll use a custom instruction: 32'hFFFFFFFF
    localparam HALT_INSTRUCTION = 32'hFFFFFFFF;


    // Combinatorial ROM:
    always @* begin
        case (iaddr_i[31:2])
                    30'd0:   data = 32'h00000013; // nop
                30'd1:   data = 32'h00000013; // nop
                30'd2:   data = 32'h00000013; // nop
                
                30'd3:   data = 32'h048000ef;
                30'd4:   data = 32'h00000013;
                30'd5:   data = 32'hfe010113;
                30'd6:   data = 32'h00112e23;
                30'd7:   data = 32'h00812c23;
                30'd8:   data = 32'h02010413;
                30'd9:   data = 32'hfea42623;
                30'd10:  data = 32'hfeb42423;
                30'd11:  data = 32'hfec42223;
                30'd12:  data = 32'hfec42503;
                30'd13:  data = 32'hfe842583;
                30'd14:  data = 32'hfe442603;
                30'd15:  data = 32'h02c5850b;
                30'd16:  data = 32'h00000013;
                30'd17:  data = 32'h01c12083;
                30'd18:  data = 32'h01812403;
                30'd19:  data = 32'h02010113;
                30'd20:  data = 32'h00008067;
                30'd21:  data = 32'hfe010113;
                30'd22:  data = 32'h00112e23;
                30'd23:  data = 32'h00812c23;
                30'd24:  data = 32'h02010413;
                30'd25:  data = 32'h000017b7;
                30'd26:  data = 32'h80078793;
                30'd27:  data = 32'hfef42623;
                30'd28:  data = 32'h000017b7;
                30'd29:  data = 32'h84078793;
                30'd30:  data = 32'hfef42423;
                30'd31:  data = 32'h000017b7;
                30'd32:  data = 32'h88078793;
                30'd33:  data = 32'hfef42223;
                30'd34:  data = 32'hfec42783;
                30'd35:  data = 32'h00100713;
                30'd36:  data = 32'h00e7a023;
                30'd37:  data = 32'hfec42783;
                30'd38:  data = 32'h00478793;
                30'd39:  data = 32'h00200713;
                30'd40:  data = 32'h00e7a023;
                30'd41:  data = 32'hfec42783;
                30'd42:  data = 32'h00878793;
                30'd43:  data = 32'h00300713;
                30'd44:  data = 32'h00e7a023;
                30'd45:  data = 32'hfec42783;
                30'd46:  data = 32'h00c78793;
                30'd47:  data = 32'h00400713;
                30'd48:  data = 32'h00e7a023;
                30'd49:  data = 32'hfec42783;
                30'd50:  data = 32'h01078793;
                30'd51:  data = 32'h00500713;
                30'd52:  data = 32'h00e7a023;
                30'd53:  data = 32'hfec42783;
                30'd54:  data = 32'h01478793;
                30'd55:  data = 32'h00600713;
                30'd56:  data = 32'h00e7a023;
                30'd57:  data = 32'hfec42783;
                30'd58:  data = 32'h01878793;
                30'd59:  data = 32'h00700713;
                30'd60:  data = 32'h00e7a023;
                30'd61:  data = 32'hfec42783;
                30'd62:  data = 32'h01c78793;
                30'd63:  data = 32'h00800713;
                30'd64:  data = 32'h00e7a023;
                30'd65:  data = 32'hfec42783;
                30'd66:  data = 32'h02078793;
                30'd67:  data = 32'h00900713;
                30'd68:  data = 32'h00e7a023;
                30'd69:  data = 32'hfe842783;
                30'd70:  data = 32'h00900713;
                30'd71:  data = 32'h00e7a023;
                30'd72:  data = 32'hfe842783;
                30'd73:  data = 32'h00478793;
                30'd74:  data = 32'h00800713;
                30'd75:  data = 32'h00e7a023;
                30'd76:  data = 32'hfe842783;
                30'd77:  data = 32'h00878793;
                30'd78:  data = 32'h00700713;
                30'd79:  data = 32'h00e7a023;
                30'd80:  data = 32'hfe842783;
                30'd81:  data = 32'h00c78793;
                30'd82:  data = 32'h00600713;
                30'd83:  data = 32'h00e7a023;
                30'd84:  data = 32'hfe842783;
                30'd85:  data = 32'h01078793;
                30'd86:  data = 32'h00500713;
                30'd87:  data = 32'h00e7a023;
                30'd88:  data = 32'hfe842783;
                30'd89:  data = 32'h01478793;
                30'd90:  data = 32'h00400713;
                30'd91:  data = 32'h00e7a023;
                30'd92:  data = 32'hfe842783;
                30'd93:  data = 32'h01878793;
                30'd94:  data = 32'h00300713;
                30'd95:  data = 32'h00e7a023;
                30'd96:  data = 32'hfe842783;
                30'd97:  data = 32'h01c78793;
                30'd98:  data = 32'h00200713;
                30'd99:  data = 32'h00e7a023;
                30'd100: data = 32'hfe842783;
                30'd101: data = 32'h02078793;
                30'd102: data = 32'h00100713;
                30'd103: data = 32'h00e7a023;
                30'd104: data = 32'hfe842603;
                30'd105: data = 32'hfec42583;
                30'd106: data = 32'hfe442503;
                  30'd107:   data = 32'h00000013;
                    30'd108:   data = 32'h00000013;
                      30'd109:   data = 32'h00000013;
                        30'd110:   data = 32'h00000013;
                          30'd111:   data = 32'h00000013;
                            30'd112:   data = 32'h00000013;
                              30'd113:   data = 32'h00000013;
                30'd114: data = 32'he69ff0ef;
                30'd115: data = 32'h0000006f;

                    // HALT instruction immediately after MATMUL
          //7ALT - Stop execution here
                    default: data = 32'h00000013; // nop
             
        endcase
    end

    // Synchronous output:
    always @(posedge clk_i) begin
        if (reset_i) begin
            irdata_o <= 32'h00000013;
        end else if (ird_i) begin
            irdata_o <= data;
        end
    end
    
    

    

endmodule
