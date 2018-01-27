#!/bin/bash

MESSAGE="Setup Mac Finished"

echo "${MESSAGE}"

osascript -e "display notification \"${MESSAGE}\" with title \"provisioning\""

say "${MESSAGE}"
