#!/usr/bin/env bash

# Copyright 2017, Rackspace US, Inc.
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

set -evu

if [ "${RE_JOB_UPGRADE_ACTION}" == "leap" ]; then
  tests/test-leapfrog.sh
elif [ "${RE_JOB_UPGRADE_ACTION}" == "minor" ]; then
  tests/test-minor.sh
else
  echo "FAIL!"
  echo "RE_JOB_UPGRADE_ACTION '${RE_JOB_UPGRADE_ACTION}' is not supported."
  exit 99
fi
