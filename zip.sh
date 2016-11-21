#!/bin/sh 
# Copyright (C) 2016 evenS

tar -czvf /tmp/data/kms/kms.tar.gz /usr/sbin/vlmcsd /etc/init.d/kms.sh

tar -czvf /tmp/data/kms/archive.tgz -C /tmp/data/kms/ manifest.json script kms.tar.gz 