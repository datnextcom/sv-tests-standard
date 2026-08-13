// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-left-extension-sim
:description: Unsized based integer literals are extended with zero, X, or Z from their leftmost digit
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  logic [11:0] x_value;
  logic [11:0] zero_value;
  logic [11:0] z_value;
  logic [11:0] explicit_zero_value;
  logic [84:0] wide_zero_value;
  logic [84:0] wide_x_value;
  logic [84:0] wide_z_value;

  initial begin
    x_value = 'hx;
    zero_value = 'h3x;
    z_value = 'hz3;
    explicit_zero_value = 'h0z3;
    wide_zero_value = 'h5;
    wide_x_value = 'hx;
    wide_z_value = 'hz;

    $display(":assert: (%0d == 1)", x_value === 12'bxxxx_xxxx_xxxx);
    $display(":assert: (%0d == 1)", zero_value === 12'b0000_0011_xxxx);
    $display(":assert: (%0d == 1)", z_value === 12'bzzzz_zzzz_0011);
    $display(":assert: (%0d == 1)", explicit_zero_value === 12'b0000_zzzz_0011);
    $display(":assert: (%0d == 1)", wide_zero_value === {{82{1'b0}}, 3'b101});
    $display(":assert: (%0d == 1)", wide_x_value === {85{1'bx}});
    $display(":assert: (%0d == 1)", wide_z_value === {85{1'bz}});
  end
endmodule
