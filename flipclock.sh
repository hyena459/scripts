
# flipclockのイベントキャッチがバグっているので、それ用のパッチ。

#!/bin/bash
# backgroundで10秒間隔でマウスを微妙に動かして(位置は戻して)flipclockのイベントだけを発動させたい
while :
do
  xdotool mousemove_relative 10 10; xdotool mousemove_relative -- -10 -10
  sleep 10
done &

flatpak run one.alynx.FlipClock

kill -9 $!