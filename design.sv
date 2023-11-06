module structuralProject(F1, F2, F3, a, b, c, d);
  input a, b, c, d;
  output F1, F2, F3;
  
  wire inva, invb, invc, invd;
  
  not (inva, a);
  not (invb, b);
  not (invc, c);
  not (invd, d);
  
  setF1 fistBit(F1, a, b, c, d);
  setF2 secondBit(F2, a, b, c, d);
  setF3 thirdBit(F3, a, b, c, d);
  
endmodule

module setF1(F1, a, b, c, d);
  // bc' + a'bd' + ab'cd
  input a, b, c, d;
  output F1;
  
  wire term1, term2, term3;
  
  and and1 (term1, b, structuralProject.invc);
  and and2 (term2, structuralProject.inva, b, structuralProject.invd);
  and and3 (term3, a, structuralProject.invb, c, d);
  
  or or1 (F1, term1, term2, term3);
endmodule

module setF2(F2, a, b, c, d);
  // a'b'c (term1) + a'cd'(term2) + ac'd (term3) + b'cd' (term4)
  input a, b, c, d;
  output F2;
  
  wire term1, term2, term3, term4;

  and and1 (term1, structuralProject.inva, structuralProject.invb, c);
  and and2 (term2, structuralProject.inva, c, structuralProject.invd);
  and and3 (term3, a, structuralProject.invc, d);
  and and4 (term4, structuralProject.invb, c, structuralProject.invd);
  
  or or1 (F2, term1, term2, term3, term4);
endmodule


module setF3(F3, a, b, c, d);
  // a'b'd (term1) + a'c'd(term2) + ab'd'(term3) + ac'd'(term4) + abcd(term5)
  input a, b, c, d;
  output F3;
  
  wire term1, term2, term3, term4, term5;
 
  
  and and1 (term1, structuralProject.inva, structuralProject.invb, d);
  and and2 (term2, structuralProject.inva, structuralProject.invc, d);
  and and3 (term3, a, structuralProject.invb, structuralProject.invd);
  and and4 (term4, a, structuralProject.invc, structuralProject.invd);
  and and5 (term5, a, b, c, d);
  
  or or1 (F3 ,term1, term2, term3, term4, term5);
endmodule