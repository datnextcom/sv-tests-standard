// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: real-underscore-value-sim
:description: Underscores in each permitted portion of a real literal do not change its value
:tags: 5.7.2
:type: simulation elaboration parsing
:unsynthesizable: 1
*/
module top();
  initial begin
    $display(":assert: (%0d == 1)",
             $realtobits(1_234.5) === $realtobits(1234.5));
    $display(":assert: (%0d == 1)",
             $realtobits(12.3_75) === $realtobits(12.375));
    $display(":assert: (%0d == 1)",
             $realtobits(1.25e1_0) === $realtobits(1.25e10));
    $display(":assert: (%0d == 1)",
             $realtobits(236.123_763_e-12) ===
             $realtobits(236.123763e-12));
  end
endmodule
