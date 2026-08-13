// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-hexadecimal-digit-illegal
:description: A hexadecimal integer literal cannot contain a digit beyond F
:should_fail_because: The digit G is illegal in a hexadecimal integer literal
:tags: 5.7.1
*/
module top();
  logic [3:0] value;

  initial begin
    value = 4'hG;
  end
endmodule
