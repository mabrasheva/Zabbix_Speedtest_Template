#!/bin/bash

SPEEDTEST_SERVER_ID=$1
HOME=/var/lib/zabbix speedtest -f json --accept-license --accept-gdpr -s $1
