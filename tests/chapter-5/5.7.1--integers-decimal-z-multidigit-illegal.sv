// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-decimal-z-multidigit-illegal
:description: A decimal Z integer literal cannot contain another digit
:should_fail_because: A decimal Z integer literal shall contain exactly one Z digit, apart from underscores
:tags: 5.7.1
*/
module top();
  logic [7:0] value;

  initial begin
    value = 8'dz0;
  end
endmodule
