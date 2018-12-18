#!/usr/bin/env bash
gst-launch-1.0 shmsrc socket-path=/tmp/socket ! application/x-rtp,media=video,encoding-name=VP8,payload=97 ! rtpvp8depay ! vp8dec ! videoconvert ! fakesink
