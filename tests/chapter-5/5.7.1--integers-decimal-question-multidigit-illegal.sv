// Copyright (C) 2026 The Datnextcom Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
//
// SPDX-License-Identifier: ISC


/*
:name: integers-decimal-question-multidigit-illegal
:description: A decimal question-mark integer literal cannot contain another digit
:should_fail_because: A decimal question-mark integer literal shall contain exactly one question-mark digit, apart from underscores
:tags: 5.7.1
*/
module top();
  logic [7:0] value;

  initial begin
    value = 8'd?0;
  end
endmodule
