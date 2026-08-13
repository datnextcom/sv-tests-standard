// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: real-exponent-value-sim
:description: Exponent-form real literals produce their specified numerical values
:tags: 5.7.2
:type: simulation elaboration parsing
:unsynthesizable: 1
*/
module top();
  initial begin
    $display(":assert: (%0d == 1)", 1.25e2 == 125.0);
    $display(":assert: (%0d == 1)", 125e-3 == 0.125);
    $display(":assert: (%0d == 1)", 2E3 == 2000.0);
  end
endmodule
