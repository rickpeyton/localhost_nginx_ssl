#!/bin/bash
echo "Started on port 443"
docker run -it --rm -p 443:443 $(basename "$(pwd)")
# exiting requires Ctrl-C, so skip a line to print a nice message
echo
echo "All done."
