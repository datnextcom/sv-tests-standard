// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-question-mark-z-sim
:description: A question-mark digit is equivalent to Z in decimal, hexadecimal, octal, and binary literals
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  logic [7:0] decimal_question;
  logic [7:0] decimal_z;
  logic [7:0] hexadecimal_question;
  logic [7:0] hexadecimal_z;
  logic [5:0] octal_question;
  logic [5:0] octal_z;
  logic [1:0] binary_question;
  logic [1:0] binary_z;

  initial begin
    decimal_question = 8'd?;
    decimal_z = 8'dz;
    hexadecimal_question = 8'h?1;
    hexadecimal_z = 8'hz1;
    octal_question = 6'o?1;
    octal_z = 6'oz1;
    binary_question = 2'b?1;
    binary_z = 2'bz1;

    $display(":assert: (%0d == 1)", decimal_question === decimal_z);
    $display(":assert: (%0d == 1)", hexadecimal_question === hexadecimal_z);
    $display(":assert: (%0d == 1)", octal_question === octal_z);
    $display(":assert: (%0d == 1)", binary_question === binary_z);
  end
endmodule
