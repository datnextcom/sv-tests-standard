// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: real-fixed-point-value-sim
:description: Fixed-point real literals produce their specified numerical values
:tags: 5.7.2
:type: simulation elaboration parsing
:unsynthesizable: 1
*/
module top();
  initial begin
    $display(":assert: (%0d == 1)", (1.5 * 2.0) == 3.0);
    $display(":assert: (%0d == 1)", (0.125 * 8.0) == 1.0);
    $display(":assert: (%0d == 1)", (2394.25 - 2394.0) == 0.25);
  end
endmodule
