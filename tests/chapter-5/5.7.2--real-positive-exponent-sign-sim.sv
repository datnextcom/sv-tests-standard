// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: real-positive-exponent-sign-sim
:description: An explicit plus sign is accepted in a real literal exponent
:tags: 5.7.2
:type: simulation elaboration parsing
:unsynthesizable: 1
*/
module top();
  initial begin
    $display(":assert: (%0d == 1)", 1.2e+3 == 1200.0);
  end
endmodule
