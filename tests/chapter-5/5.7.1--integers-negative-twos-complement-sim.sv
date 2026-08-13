// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-negative-twos-complement-sim
:description: Negative integer values have the two's-complement bit pattern of their sized operand
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  logic [7:0] negative_six;
  logic [7:0] negative_one;
  logic [3:0] negative_signed_fifteen;

  initial begin
    negative_six = -8'd6;
    negative_one = -8'd1;
    negative_signed_fifteen = -4'sd15;

    $display(":assert: (%0d == 1)", negative_six === 8'hfa);
    $display(":assert: (%0d == 1)", negative_one === 8'hff);
    $display(":assert: (%0d == 1)", negative_signed_fifteen === 4'h1);
  end
endmodule
