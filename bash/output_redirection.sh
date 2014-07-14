#!/bin/bash

echo "redirect to file" > output_redirect.txt
echo "appending to file" >> output_redirect.txt

echo "redirect standard out to file" 1> output_stdout.txt

echo "throw away output" > /dev/null

ls -al /blah 2> output_error.txt

ls -al /wrong 2>&1>output_stderr_stdout.txt
echo "direct STDOUT to STDERR and then to file" 2>&1 > output_stdout_stderr.txt

# redirect STDOUT & STDERR to front_end.log
./node_modules/.bin/gulp connect > front_end.log 2>&1
