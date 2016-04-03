# Description:
#   Arrange the order of the lab members' presentation.
#
# Commands:
#   boko darekara - Arrange the order of the lab members' presentation.
#
# Author:
#   ytakata69 <takata.yoshiaki@kochi-tech.ac.jp>

module.exports = (robot) ->

  members = [
    'awaryu725',
    'chisato',
    'isiokayuma',
    'k.o',
    'murabenao',
    'nyamadori',
    'wucancheng',
    'yy',
    'y-takata'
  ]

  shuffle = (m) ->
    for i in [m.length-1..0] by -1
      j = Math.floor(Math.random() * (i+1))
      [m[i], m[j]] = [m[j], m[i]]

  robot.respond /darekara/, (res) ->
    shuffle members
    res.send "次の順番で発表してね。"
    for i in [1..members.length]
      res.send "#{i}番目は[ #{members[i-1]} ]さん。"
