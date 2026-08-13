// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-default-signedness-sim
:description: Simple decimal literals are signed while based literals without an s designator are unsigned
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  logic [63:0] simple_decimal_value;
  logic [63:0] based_literal_value;

  initial begin
    simple_decimal_value = -1;
    based_literal_value = 'hffff_ffff;

    $display(":assert: (%0d == 1)", simple_decimal_value === 64'hffff_ffff_ffff_ffff);
    $display(":assert: (%0d == 1)", based_literal_value === 64'h0000_0000_ffff_ffff);
  end
endmodule
