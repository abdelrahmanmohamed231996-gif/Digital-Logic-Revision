module logic_tb();
reg a,b,carry_in;
wire out_test1,out_test2,out_test3,out_test4,
out_test5,out_test6,out_test11,carry_out7,carry_out8,
carry_out9,carry_out10,
sum7,sum8,sum9,sum10;
test_and_nand test1 (a,b,out_test1);
test_or_nand test2(a,b,out_test2);
test_and_nor test3(a,b,out_test3);
test_nand_mux test4(a,b,out_test4);
test_or_mux test5(a,b,out_test5);
test_xor_mux test6(a,b,out_test6);
test_halfadder_mux test7(a,b,sum7,carry_out7);
test_halfadder_decoder test8(a,b,sum8,carry_out8);
full_adder_4_1mux test9(a,b,sum9,carry_out9,carry_in);
fulladder_3_8decoder test10(a,b,carry_in,sum10,carry_out10);
xnor_buffer test11(a,out_test11);











initial begin

    a=1;
    b=0;
    carry_in=1;


    #1;
    if (out_test1!=0) begin
         $display("test_1 fail_____out=%b",out_test1);
         $stop;
    end
    else  $display("test_1 pass_____out=%b",out_test1);
     



         if (out_test2!=1) begin
         $display("test_2 fail_____out=%b",out_test2);
         $stop;
    end
    else  $display("test_2 pass_____out=%b",out_test2);





         if (out_test3!=0) begin
         $display("test_3 fail_____out=%b",out_test3);
         $stop;
    end
    else  $display("test_3 pass_____out=%b",out_test3);





         if (out_test4!=1) begin
         $display("test_4 fail_____out=%b",out_test4);
         $stop;
    end
    else  $display("test_4 pass_____out=%b",out_test4);





         if (out_test5!=1) begin
         $display("test_5 fail_____out=%b",out_test5);
         $stop;
    end
    else  $display("test_5 pass_____out=%b",out_test5);






         if (out_test6!=0) begin
         $display("test_6 fail_____out=%b",out_test6);
         $stop;
    end
    else  $display("test_6 pass_____out=%b",out_test6);






         if (sum7!=1||carry_out7!=0) begin
         $display("test_7 fail_____sum=%b____carry_out=%b",sum7,carry_out7);
         $stop;
    end
    else          $display("test_7 pass_____sum=%b____carry_out=%b",sum7,carry_out7);






         if (sum8!=1||carry_out8!=0) begin
         $display("test_8 fail_____sum=%b____carry_out=%b",sum8,carry_out8);
         $stop;
    end
    else          $display("test_8 pass_____sum=%b____carry_out=%b",sum8,carry_out8);





         if (sum9!=0||carry_out9!=1) begin
         $display("test_9 fail_____sum=%b____carry_out=%b",sum9,carry_out9);
         $stop;
    end
    else          $display("test_9 pass_____sum=%b____carry_out=%b____a=%b____b=%b_____cin=%b",sum9,carry_out9,a,b,carry_in);




         if (sum10!=0||carry_out10!=1) begin
         $display("test_10 fail_____sum=%b____carry_out=%b",sum10,carry_out10);
         $stop;
    end
    else          $display("test_10 pass_____sum=%b____carry_out=%b",sum10,carry_out10);



         if (out_test11!=1) begin
         $display("test_11 fail_____out=%b",out_test11);
         $stop;
    end
    else  $display("test_11 pass_____out=%b",out_test11);


     $stop;


end
endmodule
