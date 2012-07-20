# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  options = {scrollWheelZoom: false, zoomControl: false}
  map = new L.Map('map-background', options)

  cloudmadeUrl = 'http://{s}.tile.cloudmade.com/8ee2a50541944fb9bcedded5165f09d9/31643/256/{z}/{x}/{y}.png'
  attribution = 'Mrktblink 2012'
  cloudmade = new L.TileLayer(cloudmadeUrl, {maxZoom: 16, attribution: attribution})
  map.setView(new L.LatLng(39.0, -20.5), 3).addLayer(cloudmade)

  $('#equities-btn').click => 
    eq_map = 'http://{s}.tile.cloudmade.com/8ee2a50541944fb9bcedded5165f09d9/2/256/{z}/{x}/{y}.png'
    map.addLayer( new L.TileLayer(eq_map, {maxZoom: 16, attribute: attribution}))

  $('#bonds-btn').click => 
    eq_map = 'http://{s}.tile.cloudmade.com/8ee2a50541944fb9bcedded5165f09d9/8/256/{z}/{x}/{y}.png'
    map.addLayer( new L.TileLayer(eq_map, {maxZoom: 16, attribute: attribution}))

  $('#volatility-btn').click => 
    eq_map = 'http://{s}.tile.cloudmade.com/8ee2a50541944fb9bcedded5165f09d9/31643/256/{z}/{x}/{y}.png'
    map.addLayer( new L.TileLayer(eq_map, {maxZoom: 16, attribute: attribution}))

  countries =
    london:
      lat: 51.5
      lon: -0.09
    usa:
      lat: 39.0
      lon: -98.5
    argentina:
      lat: -38.4
      lon: -63.6
    brazil:
      lat: -14.2
      lon: -51.9
    mexico:
      lat: 23.6
      lon: -102.6
    chile:
      lat: -35.6
      lon: -71.5
    peru:
      lat: -9.19
      lon: -75
    columbia:
      lat: 4.6
      lon: -74.3
    canada:
      lat: 56.1
      lon: -106.3
    austria:
      lat: 47.5
      lon: 14.6
    belgium:
      lat: 50.5
      lon: 4.5
    france:
      lat: 46.2
      lon: 2.2
    germany:
      lat: 51.2
      lon: 10.5
    netherlands:
      lat: 52.1
      lon: 5.3
    norway:
      lat: 60.5
      lon: 8.4
    sweden:
      lat: 60.1
      lon: 18.6
    switzerland:
      lat: 46.8
      lon: 8.2
    england:
      lat: 52.3
      lon: -1.2
    czeck_republic:
      lat: 50.1
      lon: 14.4
    russia:
      lat: 61.5
      lon: 105.3
    greece:
      lat: 39.1
      lon: 21.8
    ireland:
      lat: 53.4
      lon: -8.2
    spain:
      lat: 40.5
      lon: -3.7
    portugal:
      lat:  39.4
      lon: -8.2
    isreal:
      lat: 31
      lon: 34.9
    south_africa:
      lat: -30.6
      lon: 22.9
    china:
      lat: 35.9
      lon: 104.2
    malaysia:
      lat: 4.2
      lon: 101.9
    japan:
      lat: 36.2
      lon: 138.3
    taiwan:
      lat: 23.7
      lon: 121
    korea:
      lat: 35.9
      lon: 127.8
    australia:
      lat: -25.3
      lon: 133.8
    india:
      lat: 20.0
      lon: 77.0

  CountryIcon = L.Icon.extend({
    iconUrl: '',
    iconSize: ''
  })

  usaIcon = new CountryIcon('/images/country_images/united_states_green.png', {iconSize: new L.Point(583, 449)})
  mexicoIcon = new CountryIcon('/images/country_images/mexico_red.png', {iconSize: new L.Point(169,110)})
  indiaIcon = new CountryIcon('/images/country_images/india_green.png', {iconSize: new L.Point(123,172)})
  indiaRedIcon = new CountryIcon('/images/country_images/india_red.png', {iconSize: new L.Point(123,172)})
  argentinaIcon = new CountryIcon('/images/country_images/argentina_green.png', {iconSize: new L.Point(114, 253)})
  brazilIcon = new CountryIcon('/images/country_images/brazil_green.png', {iconSize: new L.Point(226, 232)})
  chileIcon = new CountryIcon('/images/country_images/chile_red.png', {iconSize: new L.Point(52, 280)})
  australiaIcon = new CountryIcon('/images/country_images/australia_green.png', {iconSize: new L.Point(233, 182)})
  belgiumIcon = new CountryIcon('/images/country_images/belgium_green.png', {iconSize: new L.Point(19, 24)})
  canadaIcon = new CountryIcon('/images/country_images/canada_green.png', {iconSize: new L.Point(508, 377)})
  chinaIcon = new CountryIcon('/images/country_images/china_red.png', {iconSize: new L.Point(355, 247)})
  columbiaIcon = new CountryIcon('/images/country_images/columbia_red.png', {iconSize: new L.Point(66,89)})
  englandIcon = new CountryIcon('/images/country_images/england_green.png', {iconSize: new L.Point(47,86)})
  franceIcon = new CountryIcon('/images/country_images/france_green.png', {iconSize: new L.Point(73,75)})
  germanyIcon = new CountryIcon('/images/country_images/germany_green.png', {iconSize: new L.Point(66,112)})
  greeceIcon = new CountryIcon('/images/country_images/greece_green.png', {iconSize: new L.Point(40,44)})
  # austriaIcon = new CountryIcon('/images/country_images/austria_green.png', {iconSize: new L.Point(40,44)})
  irelandIcon = new CountryIcon('/images/country_images/ireland_green.png', {iconSize: new L.Point(25,39)})
  isrealIcon = new CountryIcon('/images/country_images/isreal_green.png', {iconSize: new L.Point(18,22)})
  italyIcon = new CountryIcon('/images/country_images/italy_green.png', {iconSize: new L.Point(70,71)})
  japanIcon = new CountryIcon('/images/country_images/japan_green.png', {iconSize: new L.Point(97,181)})
  malaysiaIcon = new CountryIcon('/images/country_images/malaysia_green.png', {iconSize: new L.Point(120,88)})
  norwayIcon = new CountryIcon('/images/country_images/norway_green.png', {iconSize: new L.Point(152,183)})
  peruIcon = new CountryIcon('/images/country_images/peru_green.png', {iconSize: new L.Point(74,107)})
  portugalIcon = new CountryIcon('/images/country_images/portugal_green.png', {iconSize: new L.Point(18,37)})
  russiaIcon = new CountryIcon('/images/country_images/russia_green.png', {iconSize: new L.Point(930,469)})
  southAfricaIcon = new CountryIcon('/images/country_images/south_africa_green.png', {iconSize: new L.Point(88,82)})
  koreaIcon = new CountryIcon('/images/country_images/south_korea_green.png', {iconSize: new L.Point(11,16)})
  spainIcon = new CountryIcon('/images/country_images/spain_green.png', {iconSize: new L.Point(71,60)})
  swedenIcon = new CountryIcon('/images/country_images/sweden_green.png', {iconSize: new L.Point(74,174)})
  switzerlandIcon = new CountryIcon('/images/country_images/switzerland_green.png', {iconSize: new L.Point(23,17)})

  IndiaGreenIcon = new CountryIcon('/images/country_images/india_green.png', {iconSize: new L.Point(123,172)})
  IndiaRedIcon = new CountryIcon('/images/country_images/india_red.png', {iconSize: new L.Point(123,172)})
  ChinaGreenIcon = new CountryIcon('/images/country_images/china_green.png', {iconSize: new L.Point(355, 247)})
  ChinaRedIcon = new CountryIcon('/images/country_images/china_red.png', {iconSize: new L.Point(355, 247)})
  USAGreenIcon = new CountryIcon('/images/country_images/united_states_green.png', {iconSize: new L.Point(583, 449)})
  USARedIcon = new CountryIcon('/images/country_images/united_states_red.png', {iconSize: new L.Point(583, 449)})

  marker_USA = new L.Marker(new L.LatLng(69.2, -167), {icon: usaIcon})
  marker3 = new L.Marker(new L.LatLng(-28,-71), {icon:argentinaIcon})
  marker4 = new L.Marker(new L.LatLng(-1.5,-72), {icon:brazilIcon})
  marker5 = new L.Marker(new L.LatLng(26.8,-115.4), {icon: mexicoIcon})
  marker6 = new L.Marker(new L.LatLng(-24.3,-73.6), {icon:chileIcon})
  marker7 = new L.Marker(new L.LatLng(-6.6,-79.2), {icon:peruIcon})
  marker8 = new L.Marker(new L.LatLng(6,-76.8), {icon:columbiaIcon})
  marker9 = new L.Marker(new L.LatLng(72.5,-139), {icon:canadaIcon})
  # marker10 = new L.Marker(new L.LatLng(47,14), {icon:austriaIcon})
  marker11 = new L.Marker(new L.LatLng(50,5), {icon:belgiumIcon})
  marker12 = new L.Marker(new L.LatLng(46.4,-2.2), {icon:franceIcon})
  marker13 = new L.Marker(new L.LatLng(56,10), {icon:germanyIcon})
  # marker14 = new L.Marker(new L.LatLng(52,5), {icon:netherlandsIcon})
  marker15 = new L.Marker(new L.LatLng(69,7.3), {icon:norwayIcon})
  marker16 = new L.Marker(new L.LatLng(66.7,13.9), {icon:swedenIcon})
  marker17 = new L.Marker(new L.LatLng(46,8), {icon:switzerlandIcon})
  marker18 = new L.Marker(new L.LatLng(52,-1), {icon:englandIcon})
  # marker19 = new L.Marker(new L.LatLng(50,14), {icon:czeckRepublicIcon})
  marker20 = new L.Marker(new L.LatLng(75.8,30), {icon:russiaIcon})
  marker21 = new L.Marker(new L.LatLng(39,21), {icon:greeceIcon})
  marker22 = new L.Marker(new L.LatLng(53,-8), {icon:irelandIcon})
  marker23 = new L.Marker(new L.LatLng(40,4), {icon:spainIcon})
  marker24 = new L.Marker(new L.LatLng(39,-8), {icon:portugalIcon})
  marker25 = new L.Marker(new L.LatLng(31,35), {icon:isrealIcon})
  marker26 = new L.Marker(new L.LatLng(-30,22), {icon:southAfricaIcon})
  marker_China = new L.Marker(new L.LatLng(49,76), {icon:chinaIcon})
  marker28 = new L.Marker(new L.LatLng(-1,97.5), {icon:malaysiaIcon})
  marker29 = new L.Marker(new L.LatLng(49.5,132), {icon:japanIcon})
  # marker30 = new L.Marker(new L.LatLng(23,121), {icon:taiwanIcon})
  marker31 = new L.Marker(new L.LatLng(36,128), {icon:koreaIcon})
  marker32 = new L.Marker(new L.LatLng(-18,115.8), {icon:australiaIcon})
  marker_India = new L.Marker(new L.LatLng(29.3, 70.4), {icon: indiaIcon})

  # marker1 = new L.Marker(new L.LatLng(countries['london']['lat'], countries['london']['lon']))
  # marker2 = new L.Marker(new L.LatLng(countries['usa']['lat'], countries['usa']['lon']))
  # marker3 = new L.Marker(new L.LatLng(countries['argentina']['lat'], countries['argentina']['lon']))
  # marker4 = new L.Marker(new L.LatLng(countries['brazil']['lat'], countries['brazil']['lon']))
  # marker5 = new L.Marker(new L.LatLng(countries['mexico']['lat'], countries['mexico']['lon']))
  # marker6 = new L.Marker(new L.LatLng(countries['chile']['lat'], countries['chile']['lon']))
  # marker7 = new L.Marker(new L.LatLng(countries['peru']['lat'], countries['peru']['lon']))
  # marker8 = new L.Marker(new L.LatLng(countries['columbia']['lat'], countries['columbia']['lon']))
  # marker9 = new L.Marker(new L.LatLng(countries['canada']['lat'], countries['canada']['lon']))
  # marker10 = new L.Marker(new L.LatLng(countries['austria']['lat'], countries['austria']['lon']))
  # marker11 = new L.Marker(new L.LatLng(countries['belgium']['lat'], countries['belgium']['lon']))
  # marker12 = new L.Marker(new L.LatLng(countries['france']['lat'], countries['france']['lon']))
  # marker13 = new L.Marker(new L.LatLng(countries['germany']['lat'], countries['germany']['lon']))
  # marker14 = new L.Marker(new L.LatLng(countries['netherlands']['lat'], countries['netherlands']['lon']))
  # marker15 = new L.Marker(new L.LatLng(countries['norway']['lat'], countries['norway']['lon']))
  # marker16 = new L.Marker(new L.LatLng(countries['sweden']['lat'], countries['sweden']['lon']))
  # marker17 = new L.Marker(new L.LatLng(countries['switzerland']['lat'], countries['switzerland']['lon']))
  # marker18 = new L.Marker(new L.LatLng(countries['england']['lat'], countries['england']['lon']))
  # marker19 = new L.Marker(new L.LatLng(countries['czeck_republic']['lat'], countries['czeck_republic']['lon']))
  # marker20 = new L.Marker(new L.LatLng(countries['russia']['lat'], countries['russia']['lon']))
  # marker21 = new L.Marker(new L.LatLng(countries['greece']['lat'], countries['greece']['lon']))
  # marker22 = new L.Marker(new L.LatLng(countries['ireland']['lat'], countries['ireland']['lon']))
  # marker23 = new L.Marker(new L.LatLng(countries['spain']['lat'], countries['spain']['lon']))
  # marker24 = new L.Marker(new L.LatLng(countries['portugal']['lat'], countries['portugal']['lon']))
  # marker25 = new L.Marker(new L.LatLng(countries['isreal']['lat'], countries['isreal']['lon']))
  # marker26 = new L.Marker(new L.LatLng(countries['south_africa']['lat'], countries['south_africa']['lon']))
  # marker27 = new L.Marker(new L.LatLng(countries['china']['lat'], countries['china']['lon']))
  # marker28 = new L.Marker(new L.LatLng(countries['malaysia']['lat'], countries['malaysia']['lon']))
  # marker29 = new L.Marker(new L.LatLng(countries['japan']['lat'], countries['japan']['lon']))
  # marker30 = new L.Marker(new L.LatLng(countries['taiwan']['lat'], countries['taiwan']['lon']))
  # marker31 = new L.Marker(new L.LatLng(countries['korea']['lat'], countries['korea']['lon']))
  # marker32 = new L.Marker(new L.LatLng(countries['australia']['lat'], countries['australia']['lon']))
  # marker33 = new L.Marker(new L.LatLng(countries['india']['lat'], countries['india']['lon']))

  map.addLayer(marker_USA)
  map.addLayer(marker3)
  map.addLayer(marker4)
  map.addLayer(marker5)
  map.addLayer(marker6)
  map.addLayer(marker7)
  map.addLayer(marker8)
  map.addLayer(marker9)
  # map.addLayer(marker10)
  map.addLayer(marker11)
  map.addLayer(marker12)
  map.addLayer(marker13)
  # map.addLayer(marker14)
  map.addLayer(marker15)
  map.addLayer(marker16)
  map.addLayer(marker17)
  map.addLayer(marker18)
  # map.addLayer(marker19)
  map.addLayer(marker20)
  map.addLayer(marker21)
  map.addLayer(marker22)
  map.addLayer(marker23)
  map.addLayer(marker24)
  map.addLayer(marker25)
  map.addLayer(marker26)
  map.addLayer(marker_China)
  map.addLayer(marker28)
  map.addLayer(marker29)
  # map.addLayer(marker30)
  map.addLayer(marker31)
  map.addLayer(marker32)
  map.addLayer(marker_India)
  
  ######## Updating news feeds content on click of country ##############

  marker_USA.on "click", (e) ->
    marker_USA.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=USA"
      dataType: "json"
      success: (data) ->
        marker_USA.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker3.on "click", (e) ->
    marker3.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Argentina"
      dataType: "json"
      success: (data) ->
        marker3.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker4.on "click", (e) ->
    marker4.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Brazil"
      dataType: "json"
      success: (data) ->
        marker4.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker5.on "click", (e) ->
    marker5.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Mexico"
      dataType: "json"
      success: (data) ->
        marker5.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker6.on "click", (e) ->
    marker6.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Chile"
      dataType: "json"
      success: (data) ->
        marker6.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker7.on "click", (e) ->
    marker7.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Peru"
      dataType: "json"
      success: (data) ->
        marker7.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker8.on "click", (e) ->
    marker8.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Colombia"
      dataType: "json"
      success: (data) ->
        marker8.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  
  marker9.on "click", (e) ->
    marker9.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Canada"
      dataType: "json"
      success: (data) ->
        marker9.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  # marker10.on "click", (e) ->
  #   marker10.unbindPopup()
  #   $.ajax
  #     url: "/map/update_news_feeds_content?country_name=Austria"
  #     dataType: "json"
  #     success: (data) ->
  #       marker10.bindPopup(data.market_data).openPopup()
  #       $('#container').html(data.content_to_replace)

  marker11.on "click", (e) ->
    marker11.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Belgium"
      dataType: "json"
      success: (data) ->
        marker11.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker12.on "click", (e) ->
    marker12.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=France"
      dataType: "json"
      success: (data) ->
        marker12.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker13.on "click", (e) ->
    marker13.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Germany"
      dataType: "json"
      success: (data) ->
        marker13.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  # marker14.on "click", (e) ->
  #   marker14.unbindPopup()
  #   $.ajax
  #     url: "/map/update_news_feeds_content?country_name=Netherlands"
  #     dataType: "json"
  #     success: (data) ->
  #       marker14.bindPopup(data.market_data).openPopup()
  #       $('#container').html(data.content_to_replace)

  marker15.on "click", (e) ->
    marker15.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Norway"
      dataType: "json"
      success: (data) ->
        marker15.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker16.on "click", (e) ->
    marker16.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Sweden"
      dataType: "json"
      success: (data) ->
        marker16.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker17.on "click", (e) ->
    marker17.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Switzerland"
      dataType: "json"
      success: (data) ->
        marker17.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker18.on "click", (e) ->
    marker18.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=England"
      dataType: "json"
      success: (data) ->
        marker18.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  # marker19.on "click", (e) ->
  #   marker19.unbindPopup()
  #   $.ajax
  #     url: "/map/update_news_feeds_content?country_name=Czeck Repubic"
  #     dataType: "json"
  #     success: (data) ->
  #       marker19.bindPopup(data.market_data).openPopup()
  #       $('#container').html(data.content_to_replace)

  marker20.on "click", (e) ->
    marker20.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Russia"
      dataType: "json"
      success: (data) ->
        marker20.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker21.on "click", (e) ->
    marker21.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Greece"
      dataType: "json"
      success: (data) ->
        marker21.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker22.on "click", (e) ->
    marker22.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Ireland"
      dataType: "json"
      success: (data) ->
        marker22.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker23.on "click", (e) ->
    marker23.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Spain"
      dataType: "json"
      success: (data) ->
        marker23.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker24.on "click", (e) ->
    marker24.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Portugal"
      dataType: "json"
      success: (data) ->
        marker24.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)


  marker25.on "click", (e) ->
    marker25.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Israel"
      dataType: "json"
      success: (data) ->
        marker25.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

        
  marker26.on "click", (e) ->
    marker26.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=South Africa"
      dataType: "json"
      success: (data) ->
        marker26.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)


  marker_China.on "click", (e) ->
    marker_China.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=China"
      dataType: "json"
      success: (data) ->
        marker_China.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker28.on "click", (e) ->
    marker28.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Malaysia"
      dataType: "json"
      success: (data) ->
        marker28.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker29.on "click", (e) ->
    marker29.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Japan"
      dataType: "json"
      success: (data) ->
        marker29.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  # marker30.on "click", (e) ->
  #   marker30.unbindPopup()
  #   $.ajax
  #     url: "/map/update_news_feeds_content?country_name=Taiwan"
  #     dataType: "json"
  #     success: (data) ->
  #       marker30.bindPopup(data.market_data).openPopup()
  #       $('#container').html(data.content_to_replace)

  marker31.on "click", (e) ->
    marker31.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Korea"
      dataType: "json"
      success: (data) ->
        marker31.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker32.on "click", (e) ->
    marker32.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Australia"
      dataType: "json"
      success: (data) ->
        marker32.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  marker_India.on "click", (e) ->
    marker_India.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=India"
      dataType: "json"
      success: (data) ->
        marker_India.bindPopup(data.market_data).openPopup()
        $('#container').html(data.content_to_replace)

  color = "green"
  setInterval (->
    $.ajax
      url: "/map/update_icon"
      dataType: "json"
      success: (data) ->
        if data.success == true        
          #eval('marker_USA').bindPopup("dfdsfds").openPopup()
          jQuery.each data.countries_details, (i, j) ->            
            eval('marker_'+j.country_name).setIcon(eval(j.country_name+j.color+'Icon'))            
  ), 10000