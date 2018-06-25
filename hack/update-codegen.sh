#!/usr/bin/env bash

# Copyright 2017 The Kubernetes Authors.
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

set -o errexit
set -o nounset
set -o pipefail

#Run from project root
SCRIPT_ROOT=$(dirname ${BASH_SOURCE})/..

$SCRIPT_ROOT/vendor/k8s.io/code-generator/generate-groups.sh all github.com/hibri/kt/pkg/client github.com/hibri/kt/pkg/apis "samplecontroller:v1alpha1" --go-header-file $SCRIPT_ROOT/hack/boilerplate.go.txt