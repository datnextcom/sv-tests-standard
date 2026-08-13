// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-sized-truncation-sim
:description: Sized integer literal values are truncated on the left to their declared size
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  logic [3:0] binary_value;
  logic [5:0] octal_value;
  logic [3:0] decimal_value;
  logic [7:0] hexadecimal_value;

  initial begin
    binary_value = 4'b10101;
    octal_value = 6'o177;
    decimal_value = 4'd31;
    hexadecimal_value = 8'h1ff;

    $display(":assert: (%0d == 1)", binary_value === 4'b0101);
    $display(":assert: (%0d == 1)", octal_value === 6'o77);
    $display(":assert: (%0d == 1)", decimal_value === 4'd15);
    $display(":assert: (%0d == 1)", hexadecimal_value === 8'hff);
  end
endmodule
