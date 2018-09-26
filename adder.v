module full_adder(
    input wire a, 
    input wire b, // ，a，b为要加的数，1 bit

    input wire cin, //进位输入
    output wire cout, //进位输出
    output wire s // 输出结果
);
    always @ *begin
     ( *full_case=true* ) case ({cin, b, a})
        3'b000 : {cout, s} = 2'b00;
        3'b001 : {cout, s} = 2'b01;
        3'b010 : {cout, s} = 2'b10;
        3'b011 : {cout, s} = 2'b10;
        3'b100 : {cout, s} = 2'b01;
        3'b101 : {cout, s} = 2'b10;
        3'b110 : {cout, s} = 2'b10;
        3'b111 : {cout, s} = 2'b11;
      endcase
    end
endmodule
