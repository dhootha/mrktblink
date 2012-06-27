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

  marker1.bindPopup('"Timestamp" : {"min" :1338534000,"max" :1338564000 } , "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ] ,"ranges" : {"close" : {"min" :426.9600,"max" :439.6000 },"high" : {"min" :427.0500,"max" :439.9700 },"low" : {"min" :426.8500,"max" :439.2600 },"open" : {"min" :426.9900,"max" :439.4300 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker2.bindPopup('"Timestamp" : {"min" :1338534000,"max" :1338564000 } , "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ] ,"ranges" : {"close" : {"min" :426.9600,"max" :439.6000 },"high" : {"min" :427.0500,"max" :439.9700 },"low" : {"min" :426.8500,"max" :439.2600 },"open" : {"min" :426.9900,"max" :439.4300 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker3.bindPopup('"Timestamp" : {"min" :1338559200,"max" :1338580800 }
   ,
    "labels" : [1338559200,1338562800,1338566400,1338570000,1338573600,1338577200,1338580800 ]
     ,
      "ranges" : {"close" : {"min" :2202.6201,"max" :2251.4700 },"high" : {"min" :2202.6201,"max" :2251.4700 },"low" : {"min" :2202.6201,"max" :2251.4700 },"open" : {"min" :2202.6201,"max" :2251.4700 },"volume" : {"min" :0,"max" :0 } }
       ,').openPopup()
  marker4.bindPopup('"Timestamp" : {"min" :1338559200,"max" :1338584400 }
   ,
    "labels" : [1338559200,1338562800,1338566400,1338570000,1338573600,1338577200,1338580800,1338584400 ]
     ,
      "ranges" : {"close" : {"min" :53383.2500,"max" :54034.2188 },"high" : {"min" :53383.2500,"max" :54034.2188 },"low" : {"min" :53383.2500,"max" :54034.2188 },"open" : {"min" :53383.2500,"max" :54034.2188 },"volume" : {"min" :0,"max" :0 } }
       ,').openPopup()
  marker5.bindPopup('"Timestamp" : {"min" :1338557400,"max" :1338580800 }
   ,
    "labels" : [1338559200,1338562800,1338566400,1338570000,1338573600,1338577200,1338580800 ]
     ,
      "ranges" : {"close" : {"min" :37140.5781,"max" :37596.3594 },"high" : {"min" :37170.2695,"max" :37708.8398 },"low" : {"min" :37139.1914,"max" :37585.6719 },"open" : {"min" :37142.5586,"max" :37708.8398 },"volume" : {"min" :24600,"max" :18391100 } }').openPopup()
  marker6.bindPopup('"Timestamp" : {"min" :1338550200,"max" :1338575400 }
   ,
    "labels" : [1338552000,1338555600,1338559200,1338562800,1338566400,1338570000,1338573600 ]
     ,
      "ranges" : {"close" : {"min" :4275.4233,"max" :4318.1602 },"high" : {"min" :4275.4233,"max" :4318.1602 },"low" : {"min" :4273.1665,"max" :4318.1602 },"open" : {"min" :4273.1665,"max" :4318.1602 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker7.bindPopup('"Timestamp" : {"min" :1338557400,"max" :1338580800 }
   ,
    "labels" : [1338559200,1338562800,1338566400,1338570000,1338573600,1338577200,1338580800 ]
     ,
      "ranges" : {"close" : {"min" :4814.2598,"max" :4814.2598 },"high" : {"min" :4814.2598,"max" :4814.2598 },"low" : {"min" :4814.2598,"max" :4814.2598 },"open" : {"min" :4814.2598,"max" :4814.2598 },"volume" : {"min" :0,"max" :26784900 } }').openPopup()
  marker8.bindPopup('"Timestamp" : {"min" :1338557400,"max" :1338580800 }
   ,
    "labels" : [1338559200,1338562800,1338566400,1338570000,1338573600,1338577200,1338580800 ]
     ,
      "ranges" : {"close" : {"min" :1326.9500,"max" :1326.9500 },"high" : {"min" :1326.9500,"max" :1326.9500 },"low" : {"min" :1326.9500,"max" :1326.9500 },"open" : {"min" :1326.9500,"max" :1326.9500 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker9.bindPopup('"Timestamp" : {"min" :1338557400,"max" :1338580800 }
   ,
    "labels" : [1338559200,1338562800,1338566400,1338570000,1338573600,1338577200,1338580800 ]
     ,
      "ranges" : {"close" : {"min" :11345.1602,"max" :11411.5996 },"high" : {"min" :11345.1602,"max" :11411.5996 },"low" : {"min" :11345.1602,"max" :11411.5996 },"open" : {"min" :11345.1602,"max" :11411.5996 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker10.bindPopup('"Timestamp" : {"min" :1338535800,"max" :1338564600 }
   ,
    "labels" : [1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
     ,
      "ranges" : {"close" : {"min" :1859.6300,"max" :1892.1801 },"high" : {"min" :1859.6300,"max" :1892.1801 },"low" : {"min" :1859.0800,"max" :1891.4100 },"open" : {"min" :1859.6000,"max" :1891.8101 },"volume" : {"min" :0,"max" :200 } }').openPopup()
  marker11.bindPopup('"Timestamp" : {"min" :1338534000,"max" :1338565200 }
   ,
    "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
     ,
      "ranges" : {"close" : {"min" :2076.8999,"max" :2086.2000 },"high" : {"min" :2076.8999,"max" :2086.2000 },"low" : {"min" :2076.8999,"max" :2086.2000 },"open" : {"min" :2076.8999,"max" :2086.2000 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker12.bindPopup('"Timestamp" : {"min" :1338534000,"max" :1338564600 }
   ,
    "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
     ,
      "ranges" : {"close" : {"min" :2922.5601,"max" :3026.6499 },"high" : {"min" :2922.5601,"max" :3026.6499 },"low" : {"min" :2922.2600,"max" :3026.6499 },"open" : {"min" :2922.2600,"max" :3026.6499 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker13.bindPopup('"Timestamp" : {"min" :1338534000,"max" :1338564600 }
   ,
    "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
     ,
      "ranges" : {"close" : {"min" :6012.4399,"max" :6258.1401 },"high" : {"min" :6014.4702,"max" :6259.7598 },"low" : {"min" :6008.9600,"max" :6257.4102 },"open" : {"min" :6013.0400,"max" :6259.7598 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker14.bindPopup(' "Timestamp" : {"min" :1337065200,"max" :1337096100 }
   ,
    "labels" : [1337065200,1337068800,1337072400,1337076000,1337079600,1337083200,1337086800,1337090400,1337094000 ]
     ,
      "ranges" : {"close" : {"min" :298.1000,"max" :301.0500 },"high" : {"min" :298.2500,"max" :301.2500 },"low" : {"min" :297.9500,"max" :301.0000 },"open" : {"min" :298.0500,"max" :301.2500 },"volume" : {"min" :0,"max" :2800 } }').openPopup()
  marker15.bindPopup('"Timestamp" : {"min" :1338534000,"max" :1338564000 }
   ,
    "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
     ,
      "ranges" : {"close" : {"min" :426.9600,"max" :439.6000 },"high" : {"min" :427.0500,"max" :439.9700 },"low" : {"min" :426.8500,"max" :439.2600 },"open" : {"min" :426.9900,"max" :439.4300 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker16.bindPopup(' "Timestamp" : {"min" :1338557400,"max" :1338580800 }
   ,
      "labels" : [1338559200,1338562800,1338566400,1338570000,1338573600,1338577200,1338580800 ]
       ,
          "ranges" : {"close" : {"min" :297.8754,"max" :308.2366 },"high" : {"min" :297.8754,"max" :308.2366 },"low" : {"min" :297.8754,"max" :308.2351 },"open" : {"min" :297.8754,"max" :308.2351 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker17.bindPopup(' "Timestamp" : {"min" :1338535800,"max" :1338564600 }
   ,
      "labels" : [1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
       ,
          "ranges" : {"close" : {"min" :5754.0200,"max" :5852.0298 },"high" : {"min" :5754.0200,"max" :5853.2100 },"low" : {"min" :5754.0200,"max" :5851.6699 },"open" : {"min" :5754.0200,"max" :5852.6401 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker18.bindPopup(' "Timestamp" : {"min" :1338534000,"max" :1338564600 }
   ,
      "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
       ,
          "ranges" : {"close" : {"min" :5230.9600,"max" :5354.0200 },"high" : {"min" :5231.9800,"max" :5354.4502 },"low" : {"min" :5229.8101,"max" :5353.6401 },"open" : {"min" :5231.0400,"max" :5353.9702 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker19.bindPopup(' "Timestamp" : {"min" :1338535800,"max" :1338559200 }
   ,
      "labels" : [1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200 ]
       ,
          "ranges" : {"close" : {"min" :859.4000,"max" :865.0000 },"high" : {"min" :859.5000,"max" :865.0000 },"low" : {"min" :859.4000,"max" :865.0000 },"open" : {"min" :859.5000,"max" :865.0000 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker20.bindPopup('"Timestamp" : {"min" :1338530400,"max" :1338562800 }
   ,
      "labels" : [1338530400,1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
       ,
          "ranges" : {"close" : {"min" :1278.7600,"max" :1320.3400 },"high" : {"min" :1279.1000,"max" :1320.4800 },"low" : {"min" :1278.5800,"max" :1319.6100 },"open" : {"min" :1278.8101,"max" :1320.0800 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker21.bindPopup(' "Timestamp" : {"min" :1338532200,"max" :1338559380 }
   ,
      "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200 ]
       ,
          "ranges" : {"close" : {"min" :498.2200,"max" :525.9300 },"high" : {"min" :498.2200,"max" :525.9300 },"low" : {"min" :497.7400,"max" :525.9300 },"open" : {"min" :497.7400,"max" :525.9300 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker22.bindPopup(' "Timestamp" : {"min" :1338534000,"max" :1338564600 }
   ,
      "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
       ,
          "ranges" : {"close" : {"min" :3000.8101,"max" :3093.8701 },"high" : {"min" :3000.8101,"max" :3093.8701 },"low" : {"min" :3000.8101,"max" :3093.8701 },"open" : {"min" :3000.8101,"max" :3093.8701 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker23.bindPopup(' "Timestamp" : {"min" :1338534000,"max" :1338564600 }
   ,
      "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
       ,
          "ranges" : {"close" : {"min" :5996.5000,"max" :6149.8999 },"high" : {"min" :5996.8999,"max" :6152.6001 },"low" : {"min" :5995.0000,"max" :6147.1001 },"open" : {"min" :5995.0000,"max" :6150.7002 },"volume" : {"min" :63200,"max" :12126900 } }').openPopup()
  marker24.bindPopup(' "Timestamp" : {"min" :1338534000,"max" :1338564600 }
   ,
      "labels" : [1338534000,1338537600,1338541200,1338544800,1338548400,1338552000,1338555600,1338559200,1338562800 ]
       ,
          "ranges" : {"close" : {"min" :4423.2300,"max" :4515.9702 },"high" : {"min" :4423.2300,"max" :4515.9702 },"low" : {"min" :4423.1802,"max" :4515.8101 },"open" : {"min" :4423.1802,"max" :4515.8101 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker25.bindPopup(' "Timestamp" : {"min" :1338446700,"max" :1338471900 }
   ,
      "labels" : [1338449400,1338453000,1338456600,1338460200,1338463800,1338467400,1338471000 ]
       ,
          "ranges" : {"close" : {"min" :967.8300,"max" :981.2800 },"high" : {"min" :968.0100,"max" :981.2800 },"low" : {"min" :967.8300,"max" :981.2800 },"open" : {"min" :967.9800,"max" :981.2800 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker26.bindPopup(' "Timestamp" : {"min" :1338557400,"max" :1338580800 }
   ,
      "labels" : [1338559200,1338562800,1338566400,1338570000,1338573600,1338577200,1338580800 ]
       ,
          "ranges" : {"close" : {"min" :20551.7598,"max" :20551.7598 },"high" : {"min" :20551.7598,"max" :20551.7598 },"low" : {"min" :20551.7598,"max" :20551.7598 },"open" : {"min" :20551.7598,"max" :20551.7598 },"volume" : {"min" :0,"max" :219363200 } }').openPopup()
  marker27.bindPopup(' "Timestamp" : {"min" :1338514200,"max" :1338534000 }
   ,
      "labels" : [1338516000,1338519600,1338523200,1338526800,1338530400,1338534000 ]
       ,
          "ranges" : {"close" : {"min" :2365.9006,"max" :2387.7070 },"high" : {"min" :2366.3481,"max" :2387.9995 },"low" : {"min" :2365.4417,"max" :2386.9534 },"open" : {"min" :2365.4417,"max" :2387.5156 },"volume" : {"min" :0,"max" :1171200 } }').openPopup()
  marker28.bindPopup(' "Timestamp" : {"min" :1338514200,"max" :1338537600 }
   ,
      "labels" : [1338516000,1338519600,1338523200,1338526800,1338530400,1338534000,1338537600 ]
       ,
          "ranges" : {"close" : {"min" :18487.6602,"max" :18724.1797 },"high" : {"min" :18500.4102,"max" :18726.4395 },"low" : {"min" :18487.6602,"max" :18723.7793 },"open" : {"min" :18487.6602,"max" :18724.1797 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker29.bindPopup(' "Timestamp" : {"min" :1338512400,"max" :1338541200 }
   ,
      "labels" : [1338512400,1338516000,1338519600,1338523200,1338526800,1338530400,1338534000,1338537600,1338541200 ]
       ,
          "ranges" : {"close" : {"min" :1571.0500,"max" :1576.6700 },"high" : {"min" :1572.1400,"max" :1576.6700 },"low" : {"min" :1571.0500,"max" :1576.6700 },"open" : {"min" :1571.2300,"max" :1576.6700 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker30.bindPopup(' "Timestamp" : {"min" :1338508800,"max" :1338531300 }
   ,
      "labels" : [1338508800,1338512400,1338516000,1338519600,1338523200,1338526800,1338530400 ]
       ,
          "ranges" : {"close" : {"min" :8422.6504,"max" :8487.4404 },"high" : {"min" :8422.9102,"max" :8542.7305 },"low" : {"min" :8422.5000,"max" :8486.7305 },"open" : {"min" :8422.5000,"max" :8542.7305 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker31.bindPopup(' "Timestamp" : {"min" :1338512400,"max" :1338528600 }
   ,
      "labels" : [1338512400,1338516000,1338519600,1338523200,1338526800 ]
       ,
          "ranges" : {"close" : {"min" :7111.3701,"max" :7218.5698 },"high" : {"min" :7112.2202,"max" :7218.7500 },"low" : {"min" :7111.3701,"max" :7217.4600 },"open" : {"min" :7111.9600,"max" :7218.5298 },"volume" : {"min" :0,"max" :0 } }').openPopup()
  marker32.bindPopup(' "Timestamp" : {"min" :1338508800,"max" :1338530400 }
   ,
      "labels" : [1338508800,1338512400,1338516000,1338519600,1338523200,1338526800,1338530400 ]
       ,
          "ranges" : {"close" : {"min" :1822.1801,"max" :1843.4700 },"high" : {"min" :1822.7400,"max" :1843.4700 },"low" : {"min" :1821.9800,"max" :1843.4700 },"open" : {"min" :1822.4700,"max" :1843.4700 },"volume" : {"min" :0,"max" :28800 } }').openPopup()

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

