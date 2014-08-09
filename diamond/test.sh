#!/bin/bash

docker run -it\
           -v /proc:/chroot/proc:ro \
           -v /sys:/chroot/sys:ro \
           -v /dev:/chroot/dev:ro \
           -v /run:/chroot/run:ro \
           nacyot/diamond zsh
