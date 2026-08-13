// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: real-ieee754-representation-sim
:description: Exact real and shortreal values use their IEEE-754 binary64 and binary32 representations
:tags: 5.7.2
:type: simulation elaboration parsing
:unsynthesizable: 1
*/
module top();
  initial begin
    $display(":assert: (%0d == 1)",
             $realtobits(1.0) === 64'h3ff0000000000000);
    $display(":assert: (%0d == 1)",
             $realtobits(0.5) === 64'h3fe0000000000000);
    $display(":assert: (%0d == 1)",
             $shortrealtobits(shortreal'(1.0)) === 32'h3f800000);
    $display(":assert: (%0d == 1)",
             $shortrealtobits(shortreal'(0.5)) === 32'h3f000000);
  end
endmodule
