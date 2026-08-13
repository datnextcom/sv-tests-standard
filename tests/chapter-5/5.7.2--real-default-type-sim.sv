// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: real-default-type-sim
:description: Fixed-point and exponent-form real literals have the default real type
:tags: 5.7.2
:type: simulation elaboration parsing
:unsynthesizable: 1
*/
module top();
  initial begin
    $display(":assert: ('%s' == 'real')", $typename(1.5));
    $display(":assert: ('%s' == 'real')", $typename(2.0e10));
  end
endmodule
