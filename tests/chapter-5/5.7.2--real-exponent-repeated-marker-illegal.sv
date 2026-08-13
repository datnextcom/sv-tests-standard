// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: real-exponent-repeated-marker-illegal
:description: A real literal cannot contain two exponent markers
:should_fail_because: The real literal contains a repeated exponent marker
:tags: 5.7.2
*/
module top();
  real value;

  initial begin
    value = 1.2ee3;
  end
endmodule
