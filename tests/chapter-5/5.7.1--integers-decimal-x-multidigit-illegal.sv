// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-decimal-x-multidigit-illegal
:description: A decimal X integer literal cannot contain another digit
:should_fail_because: A decimal X integer literal shall contain exactly one X digit, apart from underscores
:tags: 5.7.1
*/
module top();
  logic [7:0] value;

  initial begin
    value = 8'dx0;
  end
endmodule
