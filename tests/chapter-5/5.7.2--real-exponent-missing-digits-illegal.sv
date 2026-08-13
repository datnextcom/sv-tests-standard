// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: real-exponent-missing-digits-illegal
:description: A real literal exponent marker must be followed by exponent digits
:should_fail_because: A real literal exponent marker is not followed by an unsigned number
:tags: 5.7.2
*/
module top();
  real value;

  initial begin
    value = 1.2e;
  end
endmodule
