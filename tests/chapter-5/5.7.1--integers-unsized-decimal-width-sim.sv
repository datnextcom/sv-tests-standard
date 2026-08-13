// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-unsized-decimal-width-sim
:description: Unsized decimal integer literals have a minimum width of 32 bits
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  initial begin
    $display(":assert: (%0d >= 32)", $bits(1));
  end
endmodule
