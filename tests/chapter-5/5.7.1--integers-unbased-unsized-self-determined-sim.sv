// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-unbased-unsized-self-determined-sim
:description: Unbased unsized literals are one-bit unsigned values in self-determined contexts
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  initial begin
    $display(":assert: (%0d == 1)", $bits('0));
    $display(":assert: (%0d == 1)", $bits('1));
    $display(":assert: (%0d == 1)", $bits('x));
    $display(":assert: (%0d == 1)", $bits('z));

    // If '1 were signed, its one-bit value would compare as -1 here.
    $display(":assert: (%0d == 1)", '1 > 1'sb0);
  end
endmodule
