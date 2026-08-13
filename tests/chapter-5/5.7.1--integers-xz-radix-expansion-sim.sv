// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-xz-radix-expansion-sim
:description: Each X or Z digit expands to four, three, or one bit in hexadecimal, octal, or binary literals
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  logic [7:0] hexadecimal_x;
  logic [7:0] hexadecimal_z;
  logic [5:0] octal_x;
  logic [5:0] octal_z;
  logic [1:0] binary_x;
  logic [1:0] binary_z;

  initial begin
    hexadecimal_x = 8'hx1;
    hexadecimal_z = 8'hz1;
    octal_x = 6'ox1;
    octal_z = 6'oz1;
    binary_x = 2'bx1;
    binary_z = 2'bz1;

    $display(":assert: (%0d == 1)", hexadecimal_x === 8'bxxxx_0001);
    $display(":assert: (%0d == 1)", hexadecimal_z === 8'bzzzz_0001);
    $display(":assert: (%0d == 1)", octal_x === 6'bxxx_001);
    $display(":assert: (%0d == 1)", octal_z === 6'bzzz_001);
    $display(":assert: (%0d == 1)", binary_x === 2'bx1);
    $display(":assert: (%0d == 1)", binary_z === 2'bz1);
  end
endmodule
