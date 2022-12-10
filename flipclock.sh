
# flipclockのイベントキャッチがバグっているので、それ用のパッチ。
# backgroundで10秒間隔でマウスを微妙に動かして(位置は戻して)flipclockのイベントを発動させたい
watch "xdotool mousemove_relative 10 10 | xdotool mousemove_relative -- -10 -10" &

# foregroundでflipclock start
flatpak run one.alynx.FlipClock
