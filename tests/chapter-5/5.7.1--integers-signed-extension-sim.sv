// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-signed-extension-sim
:description: Signed and sized-negative integer values sign-extend into signed and unsigned destinations
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  logic signed [15:0] signed_destination;
  logic        [15:0] unsigned_destination;
  logic signed [15:0] signed_negative_destination;
  logic        [15:0] unsigned_negative_destination;

  initial begin
    signed_destination = 4'sh8;
    unsigned_destination = 4'sh8;
    signed_negative_destination = -4'd1;
    unsigned_negative_destination = -4'd1;

    $display(":assert: (%0d == 1)", signed_destination === 16'hfff8);
    $display(":assert: (%0d == 1)", unsigned_destination === 16'hfff8);
    $display(":assert: (%0d == 1)", signed_negative_destination === 16'hffff);
    $display(":assert: (%0d == 1)", unsigned_negative_destination === 16'hffff);
  end
endmodule
