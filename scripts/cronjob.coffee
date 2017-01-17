# Description:
#   A so-called cronjob script:
#   define a regularly-performed tasks using the cron module.
#
# Author:
#   ytakata69 <takata.yoshiaki@kochi-tech.ac.jp>

cron = require('cron').CronJob


module.exports = (robot) ->

# commented out for the summer vacation
  ###
  new cron '0 30 9 * * 6', () =>

    d1 = new Date "2016-04-06 00:00:00 +0900"
    msec = (new Date).getTime() - d1.getTime()
    nweek = Math.floor(msec/1000/60/60/24/7)
    assignment =
      (if nweek % 2 == 0 then "論文調査報告と" else "") +
      "(就活中の人は)就活報告"
    robot.send { room: "#general" },
      "@channel: おはよーございます!\n" +
      "今日は, #{assignment}の〆切日デスヨ。提出お忘れなく!"
  , null, true, 'Asia/Tokyo'

  new cron '0 25 18 * * 2', () =>
    robot.send { room: "#seminar-all" },
      "<!channel>: 明日は輪講デスヨ。ご準備お願いシマス。(＿\"＿) ペコリ\n" +
      "欠席の人はご連絡お願いシマス。"
  , null, true, 'Asia/Tokyo'
  ###

#  new cron '0 3 19 * * 2', () =>
#    robot.send { room: "#slack-sandbox" },
#      "<!here>: ただいまcronのテスト中。(＿\"＿)"
#  , null, true, 'Asia/Tokyo'
