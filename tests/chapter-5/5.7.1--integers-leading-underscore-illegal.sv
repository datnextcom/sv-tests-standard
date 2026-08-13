// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-leading-underscore-illegal
:description: An underscore cannot be the first character of an integer literal value
:should_fail_because: An underscore shall not be the first character after the base specifier
:tags: 5.7.1
*/
module top();
  logic [7:0] value;

  initial begin
    value = 8'h_ff;
  end
endmodule
