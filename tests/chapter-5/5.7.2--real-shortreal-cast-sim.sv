// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: real-shortreal-cast-sim
:description: A shortreal cast converts a real literal to IEEE-754 binary32
:tags: 5.7.2
:type: simulation elaboration parsing
:unsynthesizable: 1
*/
module top();
  shortreal exact_value;
  shortreal rounded_value;

  initial begin
    exact_value = shortreal'(1.5);
    // Exactly 1 + 3*2^-25; binary32 round-to-nearest produces 1 + 2^-23.
    rounded_value = shortreal'(1.0000000894069671630859375);

    $display(":assert: ('%s' == 'shortreal')", $typename(shortreal'(1.5)));
    $display(":assert: (%0d == 1)", exact_value == 1.5);
    $display(":assert: (%0d == 1)",
             $shortrealtobits(rounded_value) === 32'h3f800001);
  end
endmodule
