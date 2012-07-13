# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  options = {scrollWheelZoom: false}
  map = new L.Map('map-background', options)

  cloudmadeUrl = 'http://{s}.tile.cloudmade.com/8ee2a50541944fb9bcedded5165f09d9/31643/256/{z}/{x}/{y}.png'
  attribution = 'Map data &copy; 2011 OpenStreetMap contributors, Imagery &copy; 2011 CloudMade'
  cloudmade = new L.TileLayer(cloudmadeUrl, {maxZoom: 18, attribution: attribution})
  map.setView(new L.LatLng(39.0, -98.5), 2).addLayer(cloudmade)

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

  marker1 = new L.Marker(new L.LatLng(countries['london']['lat'], countries['london']['lon']))
  marker2 = new L.Marker(new L.LatLng(countries['usa']['lat'], countries['usa']['lon']))
  marker3 = new L.Marker(new L.LatLng(countries['argentina']['lat'], countries['argentina']['lon']))
  marker4 = new L.Marker(new L.LatLng(countries['brazil']['lat'], countries['brazil']['lon']))
  marker5 = new L.Marker(new L.LatLng(countries['mexico']['lat'], countries['mexico']['lon']))
  marker6 = new L.Marker(new L.LatLng(countries['chile']['lat'], countries['chile']['lon']))
  marker7 = new L.Marker(new L.LatLng(countries['peru']['lat'], countries['peru']['lon']))
  marker8 = new L.Marker(new L.LatLng(countries['columbia']['lat'], countries['columbia']['lon']))
  marker9 = new L.Marker(new L.LatLng(countries['canada']['lat'], countries['canada']['lon']))
  marker10 = new L.Marker(new L.LatLng(countries['austria']['lat'], countries['austria']['lon']))
  marker11 = new L.Marker(new L.LatLng(countries['belgium']['lat'], countries['belgium']['lon']))
  marker12 = new L.Marker(new L.LatLng(countries['france']['lat'], countries['france']['lon']))
  marker13 = new L.Marker(new L.LatLng(countries['germany']['lat'], countries['germany']['lon']))
  marker14 = new L.Marker(new L.LatLng(countries['netherlands']['lat'], countries['netherlands']['lon']))
  marker15 = new L.Marker(new L.LatLng(countries['norway']['lat'], countries['norway']['lon']))
  marker16 = new L.Marker(new L.LatLng(countries['sweden']['lat'], countries['sweden']['lon']))
  marker17 = new L.Marker(new L.LatLng(countries['switzerland']['lat'], countries['switzerland']['lon']))
  marker18 = new L.Marker(new L.LatLng(countries['england']['lat'], countries['england']['lon']))
  marker19 = new L.Marker(new L.LatLng(countries['czeck_republic']['lat'], countries['czeck_republic']['lon']))
  marker20 = new L.Marker(new L.LatLng(countries['russia']['lat'], countries['russia']['lon']))
  marker21 = new L.Marker(new L.LatLng(countries['greece']['lat'], countries['greece']['lon']))
  marker22 = new L.Marker(new L.LatLng(countries['ireland']['lat'], countries['ireland']['lon']))
  marker23 = new L.Marker(new L.LatLng(countries['spain']['lat'], countries['spain']['lon']))
  marker24 = new L.Marker(new L.LatLng(countries['portugal']['lat'], countries['portugal']['lon']))
  marker25 = new L.Marker(new L.LatLng(countries['isreal']['lat'], countries['isreal']['lon']))
  marker26 = new L.Marker(new L.LatLng(countries['south_africa']['lat'], countries['south_africa']['lon']))
  marker27 = new L.Marker(new L.LatLng(countries['china']['lat'], countries['china']['lon']))
  marker28 = new L.Marker(new L.LatLng(countries['malaysia']['lat'], countries['malaysia']['lon']))
  marker29 = new L.Marker(new L.LatLng(countries['japan']['lat'], countries['japan']['lon']))
  marker30 = new L.Marker(new L.LatLng(countries['taiwan']['lat'], countries['taiwan']['lon']))
  marker31 = new L.Marker(new L.LatLng(countries['korea']['lat'], countries['korea']['lon']))
  marker32 = new L.Marker(new L.LatLng(countries['australia']['lat'], countries['australia']['lon']))
  marker33 = new L.Marker(new L.LatLng(countries['india']['lat'], countries['india']['lon']))

  domelem = document.createElement("a")
  domelem.href = "#point_555_444"
  domelem.innerHTML = "Click me"
  domelem.onclick = ->
    alert @href

  map.addLayer(marker1)
  map.addLayer(marker2)
  map.addLayer(marker3)
  map.addLayer(marker4)
  map.addLayer(marker5)
  map.addLayer(marker6)
  map.addLayer(marker7)
  map.addLayer(marker8)
  map.addLayer(marker9)
  map.addLayer(marker10)
  map.addLayer(marker11)
  map.addLayer(marker12)
  map.addLayer(marker13)
  map.addLayer(marker14)
  map.addLayer(marker15)
  map.addLayer(marker16)
  map.addLayer(marker17)
  map.addLayer(marker18)
  map.addLayer(marker19)
  map.addLayer(marker20)
  map.addLayer(marker21)
  map.addLayer(marker22)
  map.addLayer(marker23)
  map.addLayer(marker24)
  map.addLayer(marker25)
  map.addLayer(marker26)
  map.addLayer(marker27)
  map.addLayer(marker28)
  map.addLayer(marker29)
  map.addLayer(marker30)
  map.addLayer(marker31)
  map.addLayer(marker32)
  map.addLayer(marker33)
  
  
  ######## Updating news feeds content on click of country ##############

  marker2.on "click", (e) ->
    marker2.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=USA"
      dataType: "json"
      success: (data) ->
        marker2.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker3.on "click", (e) ->
    marker3.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Argentina"
      dataType: "json"
      success: (data) ->
        marker3.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker4.on "click", (e) ->
    marker4.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Brazil"
      dataType: "json"
      success: (data) ->
        marker4.bindPopup(data.market_data).openPopup()  
        $('#news_feeds_content').html(data.content_to_replace)

  marker5.on "click", (e) ->
    marker5.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Mexico"
      dataType: "json"
      success: (data) ->
        marker5.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker6.on "click", (e) ->
    marker6.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Chile"
      dataType: "json"
      success: (data) ->
        marker6.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker7.on "click", (e) ->
    marker7.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Peru"
      dataType: "json"
      success: (data) ->
        marker7.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker8.on "click", (e) ->
    marker8.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Colombia"
      dataType: "json"
      success: (data) ->
        marker8.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  
  marker9.on "click", (e) ->
    marker9.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Canada"
      dataType: "json"
      success: (data) ->
        marker9.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker10.on "click", (e) ->
    marker10.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Austria"
      dataType: "json"
      success: (data) ->
        marker10.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker11.on "click", (e) ->
    marker11.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Belgium"
      dataType: "json"
      success: (data) ->
        marker11.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker12.on "click", (e) ->
    marker12.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=France"
      dataType: "json"
      success: (data) ->
        marker12.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker13.on "click", (e) ->
    marker13.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Germany"
      dataType: "json"
      success: (data) ->
        marker13.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker14.on "click", (e) ->
    marker14.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Netherlands"
      dataType: "json"
      success: (data) ->
        marker14.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker15.on "click", (e) ->
    marker15.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Norway"
      dataType: "json"
      success: (data) ->
        marker15.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker16.on "click", (e) ->
    marker16.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Sweden"
      dataType: "json"
      success: (data) ->
        marker16.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker17.on "click", (e) ->
    marker17.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Switzerland"
      dataType: "json"
      success: (data) ->
        marker17.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker19.on "click", (e) ->
    marker19.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Czeck Repubic"
      dataType: "json"
      success: (data) ->
        marker19.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker20.on "click", (e) ->
    marker20.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Russia"
      dataType: "json"
      success: (data) ->
        marker20.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker21.on "click", (e) ->
    marker21.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Greece"
      dataType: "json"
      success: (data) ->
        marker21.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker22.on "click", (e) ->
    marker22.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Ireland"
      dataType: "json"
      success: (data) ->
        marker22.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker23.on "click", (e) ->
    marker23.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Spain"
      dataType: "json"
      success: (data) ->
        marker23.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker24.on "click", (e) ->
    marker24.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Portugal"
      dataType: "json"
      success: (data) ->
        marker24.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)


  marker25.on "click", (e) ->
    marker25.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Israel"
      dataType: "json"
      success: (data) ->
        marker25.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

        
  marker26.on "click", (e) ->
    marker26.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=South Africa"
      dataType: "json"
      success: (data) ->
        marker26.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)


  marker27.on "click", (e) ->
    marker27.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=China"
      dataType: "json"
      success: (data) ->
        marker27.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker28.on "click", (e) ->
    marker28.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Malaysia"
      dataType: "json"
      success: (data) ->
        marker28.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker29.on "click", (e) ->
    marker29.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Japan"
      dataType: "json"
      success: (data) ->
        marker29.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker30.on "click", (e) ->
    marker30.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Taiwan"
      dataType: "json"
      success: (data) ->
        marker30.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker31.on "click", (e) ->
    marker31.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Korea"
      dataType: "json"
      success: (data) ->
        marker31.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker32.on "click", (e) ->
    marker32.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Australia"
      dataType: "json"
      success: (data) ->
        marker32.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)

  marker33.on "click", (e) ->
    marker33.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=India"
      dataType: "json"
      success: (data) ->
        marker33.bindPopup(data.market_data).openPopup()
        $('#news_feeds_content').html(data.content_to_replace)      
                                            
################################################################       






  # circleLocation = new L.LatLng(51.508, -0.11)
  # circle = new L.Circle(circleLocation, 500, circleOptions)
  # circle.bindPopup("I am a circle.")
  # map.addLayer(circle)

  p1 = new L.LatLng(51.509, -0.08)
  p2 = new L.LatLng(51.503, -0.06)
  p3 = new L.LatLng(51.51, -0.047)
  polygonPoints = [p1, p2, p3]
  circleOptions = {color: '#f03', opacity: 1}
  polygon = new L.Polygon(polygonPoints, circleOptions)
  polygon.bindPopup("I am a polygon.")
  map.addLayer(polygon)
  map.on('click', onMapClick)

  popup = new L.Popup()

  onMapClick(e) ->
    latlngStr = '(' + e.latlng.lat.toFixed(3) + ', ' + e.latlng.lng.toFixed(3) + ')'
    popup.setLatLng(e.latlng)
    popup.setContent("You clicked the map at " + latlngStr)
    map.openPopup(popup)

