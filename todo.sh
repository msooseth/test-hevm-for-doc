#!/bin/bash

forge clean
forge build --extra-output ir
HEVM=/home/matesoos/development/hevm/dist-newstyle/build/x86_64-linux/ghc-9.4.5/hevm-0.51.3/x/hevm/build/hevm/hevm
# $HEVM test --match "contract.sol.*"
$HEVM test --match 'src/contract.sol.*prove_add_value' --solver z3
