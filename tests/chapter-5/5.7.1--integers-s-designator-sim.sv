// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-s-designator-sim
:description: The s designator changes signed interpretation without changing the literal bit pattern
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  logic [3:0] unsigned_bits;
  logic [3:0] signed_bits;
  logic [7:0] unsigned_extended;
  logic [7:0] signed_extended;

  initial begin
    unsigned_bits = 4'hf;
    signed_bits = 4'shf;
    unsigned_extended = 4'hf;
    signed_extended = 4'shf;

    $display(":assert: (%0d == 1)", unsigned_bits === 4'hf);
    $display(":assert: (%0d == 1)", signed_bits === 4'hf);
    $display(":assert: (%0d == 1)", unsigned_extended === 8'h0f);
    $display(":assert: (%0d == 1)", signed_extended === 8'hff);
  end
endmodule
