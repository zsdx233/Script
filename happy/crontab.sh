export EDITOR=vim
crontab -e
#* * * * *
#- - - - -
#| | | | |
#| | | | +----- 星期中星期几 (0 - 6) (星期天 为0)
#| | | +---------- 月份 (1 - 12)
#| | +--------------- 一个月中的第几天 (1 - 31)
#| +-------------------- 小时 (0 - 23)
#+------------------------- 分钟 (0 - 59)
0 * * * * cd /home/jiangyj19/work/Script/happy && /home/jiangyj19/anaconda3/envs/py36/bin/python happy.py