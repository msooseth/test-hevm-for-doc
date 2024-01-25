#!/bin/bash

forge init
forge clean
forge build --extra-output ir
hevm test --match 'src/contract.sol.*prove.*' --solver z3
