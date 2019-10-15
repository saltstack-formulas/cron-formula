# -*- coding: utf-8 -*-
# vim: ft=yaml
---
cron:
  enabled: true      # Default
  tasks:
    task1:
      type: present  # Default
      name: echo test > /tmp/test
      user: root
      minute: 0
      hour: 0
      daymonth: 7
      month: 1
      dayweek: 6
      comment: comment1
    task2:
      type: absent   # To remove that crontask
      name: echo task2 > /tmp/test2
      user: root
      minute: random
      hour: 1
    task3:
      type: absent
      name: echo task3 > /tmp/test3
      user: root
      special: '@hourly'
      comment: comment3
    task4:
      type: present  # run every 5 minutes
      name: echo task4 > /tmp/test4
      user: root
      minute: '*/5'
      hour: '*'
      comment: comment4
