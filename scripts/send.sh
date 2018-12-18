#!/usr/bin/env bash
gst-launch-1.0 videotestsrc ! queue ! vp8enc ! rtpvp8pay !  application/x-rtp,media=video,encoding-name=VP8,payload=97!  shmsink socket-path=/tmp/socket sync=true wait-for-connection=false shm-size=10000000
