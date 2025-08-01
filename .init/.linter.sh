#!/bin/bash
cd /home/kavia/workspace/code-generation/user-profile-management-system-19402-19411/frontend_app
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

