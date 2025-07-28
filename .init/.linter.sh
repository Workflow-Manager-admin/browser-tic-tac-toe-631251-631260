#!/bin/bash
cd /tmp/kavia/workspace/code-generation/browser-tic-tac-toe-631251-631260/frontend_tic_tac_toe_app
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

