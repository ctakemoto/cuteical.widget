# Get calendar events on your desktop with cute bullets 
# Made by Cara Takemoto
# Using icalBuddy: http://hasseg.org/icalBuddy/
# Requires Python 2.7 


options =
  # To enable the widget, set value to true. To disable, false.
  widgetEnable: true


#This command shows all of your events for today and tomorrow

command: "python ical.widget/calendar_events_txtbullets.py"


# the refresh frequency s is seconds and m is minutes
refreshFrequency: '60s'

options : options

render: (output) -> "
<div class='wrapper'>#{output}</div>
"

update: (output, domEl) ->

  wrapper_display = $(domEl)

  if @options.widgetEnable
      
    wrapper_display.find('.wrapper').html(output)
  else
    wrapper_display.hide()



style: """
  font-family: Helvetica Neue
  left: 25px
  top: 20px

  
  div
    text-shadow: 0 0 1px rgba(#000, 0.5)
    font-size: 20px
    font-weight: 200
    display: block
    color: rgba(255,255,255,1)
    width: 320px

  .wrapper
    xxwidth:100%
    display:inline-block

  .title
    font-weight: 300
    font-size: 25px
    padding:6px

  .event_title
    font-weight: 250
    padding-top: 5px
    padding-left: 10px
    margin-left: 1.1em
    text-indent: -1.1em

  .event_time
    font-weight: 200
    padding-left: 30px

  .today
    padding-bottom:10px

  .square
    font-size: 26px
    color: rgba(204,181,252, 1)

  .heart
    font-size: 13px
    color: rgba(244,189,247, 1)

  .circle
    font-size: 25px
    color: rgba(160,242,164, 1)

  .triangle
    font-size: 13px
    color: rgba(255,244,155, 1)

"""