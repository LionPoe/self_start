#!/bin/bash
systemctl stop firewalld.service
systemctl disable firewalld.service
gunicorn -c /root/guni.conf app:wsgi
