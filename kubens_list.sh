#!/bin/bash

namespace_list=$(kubens | awk '{print $0 "\t"}' | nl -w 3 -s ". ")

echo "$namespace_list"

echo "Enter the index of the namespace you want to select: "
read namespace_index

namespace=$(echo "$namespace_list" | grep "^ *$namespace_index\." | awk '{print $2}')

kubens $namespace








