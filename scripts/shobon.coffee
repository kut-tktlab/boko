# Description:
#   Hearing someone saying "しょぼん," express sympathy for it by sending
#   a message "(´・ω・`)しょぼ-ん."
#
# Author:
#   ytakata69 <takata.yoshiaki@kochi-tech.ac.jp>

module.exports = (robot) ->

  robot.hear /ショボ[ー\-]*ン|しょぼ[ー\-]*ん|shobo[\-]*n|\borz\b/, (res) ->
    res.send "(´・ω・`)しょぼ-ん"
