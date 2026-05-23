#!/bin/bash

RESULTS_DIR="/tmp/ansible-benchmarks"
mkdir -p "$RESULTS_DIR"

benchmark_playbook() {
    PLAYBOOK=$1

    echo "===== Testing $PLAYBOOK ====="

    START=$(date +%s)

    ansible-playbook -i inventory "$PLAYBOOK" > "$RESULTS_DIR/${PLAYBOOK}.log" 2>&1

    END=$(date +%s)

    echo "$PLAYBOOK completed in $((END - START)) seconds"
}

benchmark_playbook optimized-playbook.yml
benchmark_playbook async-optimization.yml
benchmark_playbook delegation-optimization.yml
benchmark_playbook parallel-optimization.yml
