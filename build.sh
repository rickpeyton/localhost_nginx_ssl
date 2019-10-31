#!/bin/bash
docker build -t $(basename "$(pwd)") .
