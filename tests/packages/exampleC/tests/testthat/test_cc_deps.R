# Copyright 2018 The Bazel Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# test cc_deps in the RProtoBuf package.
test_that("cc_deps", {
  expect_equal(7, proto()$id)
})

# test cc_import for the .so file in the Rcpp package.
test_that("cc_import", {
  expect_equal(c("hello", "world"), exampleC::rcppHello())
  expect_equal(c("hello", "world", "from", "me", "too"), exampleC::rcppHelloWrapped())
})
