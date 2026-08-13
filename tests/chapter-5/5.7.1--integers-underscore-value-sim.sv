// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-underscore-value-sim
:description: Underscore separators do not change decimal, hexadecimal, octal, or binary integer values
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  logic [31:0] decimal_separated;
  logic [31:0] decimal_plain;
  logic [31:0] hexadecimal_separated;
  logic [31:0] hexadecimal_plain;
  logic [11:0] octal_separated;
  logic [11:0] octal_plain;
  logic [15:0] binary_separated;
  logic [15:0] binary_plain;

  initial begin
    decimal_separated = 27_195_000;
    decimal_plain = 27195000;
    hexadecimal_separated = 32'hde_ad_be_ef;
    hexadecimal_plain = 32'hdeadbeef;
    octal_separated = 12'o7_4_6_0;
    octal_plain = 12'o7460;
    binary_separated = 16'b0011_0101_0001_1111;
    binary_plain = 16'b0011010100011111;

    $display(":assert: (%0d == 1)", decimal_separated === decimal_plain);
    $display(":assert: (%0d == 1)", hexadecimal_separated === hexadecimal_plain);
    $display(":assert: (%0d == 1)", octal_separated === octal_plain);
    $display(":assert: (%0d == 1)", binary_separated === binary_plain);
  end
endmodule
