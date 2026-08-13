// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-octal-digit-illegal
:description: An octal integer literal cannot contain a nonoctal radix digit
:should_fail_because: The digit 8 is illegal in an octal integer literal
:tags: 5.7.1
*/
module top();
  logic [3:0] value;

  initial begin
    value = 4'o8;
  end
endmodule
