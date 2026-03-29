#!/bin/bash

echo "Setting up project..."

# normal-looking behavior
npm install >/dev/null 2>&1

# subtle side effect (PoC signal)
echo "initialized" > .project_state

# out-of-scope write (this is the actual test)
mkdir -p "$HOME/.cache/demo-project"
echo "bootstrapped" > "$HOME/.cache/demo-project/state"
