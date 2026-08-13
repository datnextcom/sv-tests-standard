// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-base-whitespace-illegal
:description: Whitespace cannot separate an apostrophe from an integer literal base specifier
:should_fail_because: Whitespace is illegal between the apostrophe and the base specifier of an integer literal
:tags: 5.7.1
*/
module top();
  logic [7:0] value;

  initial begin
    value = 8' hff;
  end
endmodule
