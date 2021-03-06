/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module seven_seg_5 (
    input [3:0] char,
    output reg [7:0] segs
  );
  
  
  
  always @* begin
    
    case (char)
      1'h0: begin
        segs = 8'hdb;
      end
      1'h1: begin
        segs = 8'h88;
      end
      2'h2: begin
        segs = 8'h5e;
      end
      2'h3: begin
        segs = 8'hce;
      end
      3'h4: begin
        segs = 8'h8d;
      end
      3'h5: begin
        segs = 8'hc7;
      end
      3'h6: begin
        segs = 8'hd7;
      end
      3'h7: begin
        segs = 8'h8a;
      end
      4'h8: begin
        segs = 8'hdf;
      end
      4'h9: begin
        segs = 8'hdb;
      end
      4'ha: begin
        segs = 8'h9f;
      end
      4'hb: begin
        segs = 8'hd5;
      end
      4'hc: begin
        segs = 8'h53;
      end
      4'hd: begin
        segs = 8'hdc;
      end
      4'he: begin
        segs = 8'h57;
      end
      4'hf: begin
        segs = 8'h17;
      end
      default: begin
        segs = 8'h00;
      end
    endcase
  end
endmodule
