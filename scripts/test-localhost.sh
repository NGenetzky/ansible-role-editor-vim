#!/bin/sh

cd "$(dirname "$0")/.."

ansible-playbook -i tests/inventory tests/test.yml
