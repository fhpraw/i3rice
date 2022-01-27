#!/bin/bash
echo " ⚡$(acpi | awk -F ', ' '{print int($2)}')% "
