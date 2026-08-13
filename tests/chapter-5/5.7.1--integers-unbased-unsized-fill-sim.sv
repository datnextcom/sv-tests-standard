// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-unbased-unsized-fill-sim
:description: Unbased unsized literals fill every bit of differently sized assignment destinations
:tags: 5.7.1
:type: simulation elaboration parsing
*/
module top();
  logic        one_bit_value;
  logic [15:0] sixteen_bit_value;
  logic [64:0] sixty_five_bit_value;

  initial begin
    one_bit_value = '0;
    sixteen_bit_value = '0;
    sixty_five_bit_value = '0;
    $display(":assert: (%0d == 1)", one_bit_value === 1'b0);
    $display(":assert: (%0d == 1)", sixteen_bit_value === {16{1'b0}});
    $display(":assert: (%0d == 1)", sixty_five_bit_value === {65{1'b0}});

    one_bit_value = '1;
    sixteen_bit_value = '1;
    sixty_five_bit_value = '1;
    $display(":assert: (%0d == 1)", one_bit_value === 1'b1);
    $display(":assert: (%0d == 1)", sixteen_bit_value === {16{1'b1}});
    $display(":assert: (%0d == 1)", sixty_five_bit_value === {65{1'b1}});

    one_bit_value = 'x;
    sixteen_bit_value = 'x;
    sixty_five_bit_value = 'x;
    $display(":assert: (%0d == 1)", one_bit_value === 1'bx);
    $display(":assert: (%0d == 1)", sixteen_bit_value === {16{1'bx}});
    $display(":assert: (%0d == 1)", sixty_five_bit_value === {65{1'bx}});

    one_bit_value = 'z;
    sixteen_bit_value = 'z;
    sixty_five_bit_value = 'z;
    $display(":assert: (%0d == 1)", one_bit_value === 1'bz);
    $display(":assert: (%0d == 1)", sixteen_bit_value === {16{1'bz}});
    $display(":assert: (%0d == 1)", sixty_five_bit_value === {65{1'bz}});
  end
endmodule
