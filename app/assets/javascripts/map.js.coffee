# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  options = {scrollWheelZoom: false}
  map = new L.Map('map-background', options)

  cloudmadeUrl = 'http://{s}.tile.cloudmade.com/8ee2a50541944fb9bcedded5165f09d9/31643/256/{z}/{x}/{y}.png'
  attribution = 'Map data &copy; 2011 OpenStreetMap contributors, Imagery &copy; 2011 CloudMade'
  cloudmade = new L.TileLayer(cloudmadeUrl, {maxZoom: 18, attribution: attribution})
  map.setView(new L.LatLng(25, 10), 3).addLayer(cloudmade)

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
  marker18  = new L.Marker(new L.LatLng(countries['england']['lat'], countries['england']['lon']))
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

  marker2.bindPopup(news_feeds['USA']).openPopup()
  marker3.bindPopup(news_feeds['Argentina']).openPopup()
  marker4.bindPopup(news_feeds['Brazil']).openPopup()
  marker5.bindPopup(news_feeds['Mexico']).openPopup()
  marker6.bindPopup(news_feeds['Chile']).openPopup()
  marker7.bindPopup(news_feeds['Peru']).openPopup()
  marker8.bindPopup(news_feeds['Colombia']).openPopup()
  marker9.bindPopup(news_feeds['Canada']).openPopup()
  marker10.bindPopup(news_feeds['Austria']).openPopup()
  marker11.bindPopup(news_feeds['Belgium']).openPopup()
  marker12.bindPopup(news_feeds['France']).openPopup()
  marker13.bindPopup(news_feeds['Germany']).openPopup()
  marker14.bindPopup(news_feeds['Netherlands']).openPopup()
  marker15.bindPopup(news_feeds['Norway']).openPopup()
  marker16.bindPopup(news_feeds['Sweden']).openPopup()
  marker17.bindPopup(news_feeds['Switzerland']).openPopup()
  marker19.bindPopup(news_feeds['Czeck Repubic']).openPopup()
  marker20.bindPopup(news_feeds['Russia']).openPopup()
  marker21.bindPopup(news_feeds['Greece']).openPopup()
  marker22.bindPopup(news_feeds['Ireland']).openPopup()
  marker23.bindPopup(news_feeds['Spain']).openPopup()
  marker24.bindPopup(news_feeds['Portugal']).openPopup()
  marker25.bindPopup(news_feeds['Isreal']).openPopup()
  marker26.bindPopup(news_feeds['South Africa']).openPopup()
  marker27.bindPopup(news_feeds['China']).openPopup()
  marker28.bindPopup(news_feeds['Malaysia']).openPopup()
  marker29.bindPopup(news_feeds['Japan']).openPopup()
  marker30.bindPopup(news_feeds['Taiwan']).openPopup()
  marker31.bindPopup(news_feeds['Korea']).openPopup()
  marker32.bindPopup(news_feeds['Australia']).openPopup()


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

