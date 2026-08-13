// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-zero-size-illegal
:description: A sized integer literal cannot have a zero size
:should_fail_because: The size of a sized integer literal shall be a nonzero unsigned number
:tags: 5.7.1
*/
module top();
  logic value;

  initial begin
    value = 0'b1;
  end
endmodule
