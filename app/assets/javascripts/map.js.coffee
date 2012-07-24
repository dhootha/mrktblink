# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  options = {scrollWheelZoom: false, zoomControl: false, doubleClickZoom: false}
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

  CountryIcon = L.Icon.extend({
    iconUrl: '',
    iconSize: '',
    shadowUrl: ''
  })

  MexicoRedIcon = new CountryIcon('/images/country_images/mexico_red.png', {iconSize: new L.Point(169,110)})
  MexicoGreenIcon = new CountryIcon('/images/country_images/mexico_green.png', {iconSize: new L.Point(169,110)})
  ArgentinaRedIcon = new CountryIcon('/images/country_images/argentina_red.png', {iconSize: new L.Point(114, 253)})
  ArgentinaGreenIcon = new CountryIcon('/images/country_images/argentina_green.png', {iconSize: new L.Point(114, 253)})
  BrazilRedIcon = new CountryIcon('/images/country_images/brazil_red.png', {iconSize: new L.Point(226, 232)})
  BrazilGreenIcon = new CountryIcon('/images/country_images/brazil_green.png', {iconSize: new L.Point(226, 232)})
  ChileRedIcon = new CountryIcon('/images/country_images/chile_red.png', {iconSize: new L.Point(52, 280)})
  ChileGreenIcon = new CountryIcon('/images/country_images/chile_green.png', {iconSize: new L.Point(52, 280)})
  AustraliaRedIcon = new CountryIcon('/images/country_images/australia_red.png', {iconSize: new L.Point(233, 182)})
  AustraliaGreenIcon = new CountryIcon('/images/country_images/australia_green.png', {iconSize: new L.Point(233, 182)})
  BelgiumRedIcon = new CountryIcon('/images/country_images/belgium_red.png', {iconSize: new L.Point(24, 20)})
  BelgiumGreenIcon = new CountryIcon('/images/country_images/belgium_green.png', {iconSize: new L.Point(24, 20)})
  CanadaRedIcon = new CountryIcon('/images/country_images/canada_red.png', {iconSize: new L.Point(508, 377)})
  CanadaGreenIcon = new CountryIcon('/images/country_images/canada_green.png', {iconSize: new L.Point(508, 377)})
  CzeckRepublicRedIcon = new CountryIcon('/images/country_images/czeck_republic_red.png', {iconSize: new L.Point(38,25)})
  CzeckRepublicGreenIcon = new CountryIcon('/images/country_images/czeck_republic_green.png', {iconSize: new L.Point(38,25)})
  ChinaRedIcon = new CountryIcon('/images/country_images/china_red.png', {iconSize: new L.Point(355, 247)})
  ChinaGreenIcon = new CountryIcon('/images/country_images/china_green.png', {iconSize: new L.Point(355, 247)})
  ColumbiaRedIcon = new CountryIcon('/images/country_images/columbia_red.png', {iconSize: new L.Point(66,89)})
  ColumbiaGreenIcon = new CountryIcon('/images/country_images/columbia_green.png', {iconSize: new L.Point(66,89)})
  EnglandRedIcon = new CountryIcon('/images/country_images/england_red.png', {iconSize: new L.Point(47,86)})
  EnglandGreenIcon = new CountryIcon('/images/country_images/england_green.png', {iconSize: new L.Point(47,86)})
  FranceRedIcon = new CountryIcon('/images/country_images/france_red.png', {iconSize: new L.Point(73,75)})
  FranceGreenIcon = new CountryIcon('/images/country_images/france_green.png', {iconSize: new L.Point(73,75)})
  GermanyRedIcon = new CountryIcon('/images/country_images/germany_red.png', {iconSize: new L.Point(52,70)})
  GermanyGreenIcon = new CountryIcon('/images/country_images/germany_green.png', {iconSize: new L.Point(52,70)})
  NetherlandsRedIcon = new CountryIcon('/images/country_images/netherlands_red.png', {iconSize: new L.Point(21,26)})
  NetherlandsGreenIcon = new CountryIcon('/images/country_images/netherlands_green.png', {iconSize: new L.Point(21,26)})
  DenmarkRedIcon = new CountryIcon('/images/country_images/denmark_red.png', {iconSize: new L.Point(17,29)})
  DenmarkGreenIcon = new CountryIcon('/images/country_images/denmark_green.png', {iconSize: new L.Point(17,29)})
  GreeceRedIcon = new CountryIcon('/images/country_images/greece_red.png', {iconSize: new L.Point(40,44)})
  GreeceGreenIcon = new CountryIcon('/images/country_images/greece_green.png', {iconSize: new L.Point(40,44)})
  AustriaRedIcon = new CountryIcon('/images/country_images/austria_red.png', {iconSize: new L.Point(44,26)})
  AustriaGreenIcon = new CountryIcon('/images/country_images/austria_green.png', {iconSize: new L.Point(44,26)})
  IrelandRedIcon = new CountryIcon('/images/country_images/ireland_red.png', {iconSize: new L.Point(25,39)})
  IrelandGreenIcon = new CountryIcon('/images/country_images/ireland_green.png', {iconSize: new L.Point(25,39)})
  IsrealRedIcon = new CountryIcon('/images/country_images/isreal_red.png', {iconSize: new L.Point(18,22)})
  IsrealGreenIcon = new CountryIcon('/images/country_images/isreal_green.png', {iconSize: new L.Point(18,22)})
  ItalyRedIcon = new CountryIcon('/images/country_images/italy_red.png', {iconSize: new L.Point(70,71)})
  ItalyGreenIcon = new CountryIcon('/images/country_images/italy_green.png', {iconSize: new L.Point(70,71)})
  JapanRedIcon = new CountryIcon('/images/country_images/japan_red.png', {iconSize: new L.Point(97,181)})
  JapanGreenIcon = new CountryIcon('/images/country_images/japan_green.png', {iconSize: new L.Point(97,181)})
  MalaysiaRedIcon = new CountryIcon('/images/country_images/malaysia_red.png', {iconSize: new L.Point(120,88)})
  MalaysiaGreenIcon = new CountryIcon('/images/country_images/malaysia_green.png', {iconSize: new L.Point(120,88)})
  NorwayRedIcon = new CountryIcon('/images/country_images/norway_red.png', {iconSize: new L.Point(152,183)})
  NorwayGreenIcon = new CountryIcon('/images/country_images/norway_green.png', {iconSize: new L.Point(152,183)})
  PeruRedIcon = new CountryIcon('/images/country_images/peru_red.png', {iconSize: new L.Point(74,107)})
  PeruGreenIcon = new CountryIcon('/images/country_images/peru_green.png', {iconSize: new L.Point(74,107)})
  PortugalRedIcon = new CountryIcon('/images/country_images/portugal_red.png', {iconSize: new L.Point(18,37)})
  PortugalGreenIcon = new CountryIcon('/images/country_images/portugal_green.png', {iconSize: new L.Point(18,37)})
  RussiaRedIcon = new CountryIcon('/images/country_images/russia_red.png', {iconSize: new L.Point(930,469)})
  RussiaGreenIcon = new CountryIcon('/images/country_images/russia_green.png', {iconSize: new L.Point(930,469)})
  SouthAfricaRedIcon = new CountryIcon('/images/country_images/south_africa_red.png', {iconSize: new L.Point(96,87)})
  SouthAfricaGreenIcon = new CountryIcon('/images/country_images/south_africa_green.png', {iconSize: new L.Point(96,87)})
  KoreaRedIcon = new CountryIcon('/images/country_images/south_korea_red.png', {iconSize: new L.Point(11,16)})
  KoreaGreenIcon = new CountryIcon('/images/country_images/south_korea_green.png', {iconSize: new L.Point(11,16)})
  SpainRedIcon = new CountryIcon('/images/country_images/spain_red.png', {iconSize: new L.Point(71,60)})
  SpainGreenIcon = new CountryIcon('/images/country_images/spain_green.png', {iconSize: new L.Point(71,60)})
  SwedenRedIcon = new CountryIcon('/images/country_images/sweden_red.png', {iconSize: new L.Point(74,174)})
  SwedenGreenIcon = new CountryIcon('/images/country_images/sweden_green.png', {iconSize: new L.Point(74,174)})
  SwitzerlandRedIcon = new CountryIcon('/images/country_images/switzerland_red.png', {iconSize: new L.Point(27,18)})
  SwitzerlandGreenIcon = new CountryIcon('/images/country_images/switzerland_green.png', {iconSize: new L.Point(27,18)})
  TaiwanRedIcon = new CountryIcon('/images/country_images/taiwan_red.png', {iconSize: new L.Point(15,24)})
  TaiwanGreenIcon = new CountryIcon('/images/country_images/taiwan_green.png', {iconSize: new L.Point(15,24)})
  IndiaGreenIcon = new CountryIcon('/images/country_images/india_green.png', {iconSize: new L.Point(123,172)})
  IndiaRedIcon = new CountryIcon('/images/country_images/india_red.png', {iconSize: new L.Point(123,172)})
  ChinaGreenIcon = new CountryIcon('/images/country_images/china_green.png', {iconSize: new L.Point(355, 247)})
  ChinaRedIcon = new CountryIcon('/images/country_images/china_red.png', {iconSize: new L.Point(355, 247)})
  USAGreenIcon = new CountryIcon('/images/country_images/united_states_green.png', {iconSize: new L.Point(331,179)})
  USARedIcon = new CountryIcon('/images/country_images/united_states_red.png', {iconSize: new L.Point(331,179)})
  AlaskaGreenIcon = new CountryIcon('/images/country_images/alaska_green.png', {iconSize: new L.Point(227,226)})
  AlaskaRedIcon = new CountryIcon('/images/country_images/alaska_red.png', {iconSize: new L.Point(227,226)})

  marker_USA = new L.Marker(new L.LatLng(44.4, -122.6), {icon: USARedIcon})
  marker_Alaska = new L.Marker(new L.LatLng(69.2, -167), {icon: AlaskaRedIcon})
  marker_Argentina = new L.Marker(new L.LatLng(-28,-71), {icon:ArgentinaGreenIcon})
  marker_Brazil = new L.Marker(new L.LatLng(-1.5,-72), {icon:BrazilRedIcon})
  marker_Mexico = new L.Marker(new L.LatLng(26.8,-115.4), {icon: MexicoRedIcon})
  marker_Chile = new L.Marker(new L.LatLng(-24.3,-73.6), {icon:ChileRedIcon})
  marker_Peru = new L.Marker(new L.LatLng(-6.6,-79.2), {icon:PeruRedIcon})
  marker_Columbia = new L.Marker(new L.LatLng(6,-76.8), {icon:ColumbiaRedIcon})
  marker_Canada = new L.Marker(new L.LatLng(72.5,-139), {icon:CanadaRedIcon})
  marker_Austria = new L.Marker(new L.LatLng(45,12), {icon:AustriaGreenIcon})
  marker_Belgium = new L.Marker(new L.LatLng(47,4.7), {icon:BelgiumGreenIcon})
  marker_France = new L.Marker(new L.LatLng(46.4,-2.2), {icon:FranceGreenIcon})
  marker_Germany = new L.Marker(new L.LatLng(50.8,8), {icon:GermanyGreenIcon})
  marker_Netherlands = new L.Marker(new L.LatLng(49,5.8), {icon:NetherlandsGreenIcon})
  marker_Norway = new L.Marker(new L.LatLng(69,7), {icon:NorwayGreenIcon})
  marker_Sweden = new L.Marker(new L.LatLng(66.9,13.3), {icon:SwedenGreenIcon})
  marker_Switzerland = new L.Marker(new L.LatLng(43,8.3), {icon:SwitzerlandGreenIcon})
  marker_England = new L.Marker(new L.LatLng(55,-4), {icon:EnglandGreenIcon})
  marker_CzeckRepublic = new L.Marker(new L.LatLng(46.7,14), {icon:CzeckRepublicRedIcon})
  marker_Russia = new L.Marker(new L.LatLng(75.8,29.2), {icon:RussiaRedIcon})
  marker_Greece = new L.Marker(new L.LatLng(37,21.3), {icon:GreeceRedIcon})
  marker_Ireland = new L.Marker(new L.LatLng(51,-8), {icon:IrelandRedIcon})
  marker_Spain = new L.Marker(new L.LatLng(38.7,-6.7), {icon:SpainGreenIcon})
  marker_Portugal = new L.Marker(new L.LatLng(36.6,-7.2), {icon:PortugalRedIcon})
  marker_Isreal = new L.Marker(new L.LatLng(26,37), {icon:IsrealRedIcon})
  marker_SouthAfrica = new L.Marker(new L.LatLng(-28.3,19), {icon:SouthAfricaRedIcon})
  marker_China = new L.Marker(new L.LatLng(49,75), {icon:ChinaRedIcon})
  marker_Malaysia = new L.Marker(new L.LatLng(-1,97.5), {icon:MalaysiaRedIcon})
  marker_Japan = new L.Marker(new L.LatLng(40.5,131), {icon:JapanGreenIcon})
  marker_Taiwan = new L.Marker(new L.LatLng(20,122), {icon:TaiwanGreenIcon})
  marker_Korea = new L.Marker(new L.LatLng(30.1,129), {icon:KoreaGreenIcon})
  marker_Australia = new L.Marker(new L.LatLng(-18,115.8), {icon:AustraliaRedIcon})
  marker_India = new L.Marker(new L.LatLng(29.3, 70.4), {icon: IndiaGreenIcon})
  marker_Denmark = new L.Marker(new L.LatLng(53.7, 10), {icon: DenmarkGreenIcon})
  marker_Italy = new L.Marker(new L.LatLng(42.3, 9), {icon: ItalyRedIcon})

  map.addLayer(marker_USA)
  map.addLayer(marker_Alaska)
  map.addLayer(marker_Argentina)
  map.addLayer(marker_Brazil)
  map.addLayer(marker_Mexico)
  map.addLayer(marker_Chile)
  map.addLayer(marker_Peru)
  map.addLayer(marker_Columbia)
  map.addLayer(marker_Canada)
  map.addLayer(marker_Austria)
  map.addLayer(marker_Belgium)
  map.addLayer(marker_France)
  map.addLayer(marker_Germany)
  map.addLayer(marker_Netherlands)
  map.addLayer(marker_Norway)
  map.addLayer(marker_Sweden)
  map.addLayer(marker_Switzerland)
  map.addLayer(marker_England)
  map.addLayer(marker_CzeckRepublic)
  map.addLayer(marker_Russia)
  map.addLayer(marker_Greece)
  map.addLayer(marker_Ireland)
  map.addLayer(marker_Spain)
  map.addLayer(marker_Portugal)
  map.addLayer(marker_Isreal)
  map.addLayer(marker_SouthAfrica)
  map.addLayer(marker_China)
  map.addLayer(marker_Malaysia)
  map.addLayer(marker_Japan)
  map.addLayer(marker_Taiwan)
  map.addLayer(marker_Korea)
  map.addLayer(marker_Australia)
  map.addLayer(marker_India)
  map.addLayer(marker_Denmark)
  map.addLayer(marker_Italy)
  
  ######## Updating news feeds content on click of country ##############

  marker_USA.on "click", (e) ->
    marker_USA.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=USA"
      dataType: "json"
      success: (data) ->
        # marker_USA.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Alaska.on "click", (e) ->
    marker_Alaska.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=USA"
      dataType: "json"
      success: (data) ->
        # marker_USA.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Argentina.on "click", (e) ->
    marker_Argentina.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Argentina"
      dataType: "json"
      success: (data) ->
        # marker3.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Brazil.on "click", (e) ->
    marker_Brazil.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Brazil"
      dataType: "json"
      success: (data) ->
        # marker4.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Mexico.on "click", (e) ->
    marker_Mexico.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Mexico"
      dataType: "json"
      success: (data) ->
        # marker5.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Chile.on "click", (e) ->
    marker_Chile.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Chile"
      dataType: "json"
      success: (data) ->
        # marker6.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Peru.on "click", (e) ->
    marker_Peru.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Peru"
      dataType: "json"
      success: (data) ->
        # marker7.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Columbia.on "click", (e) ->
    marker_Columbia.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Columbia"
      dataType: "json"
      success: (data) ->
        # marker8.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  
  marker_Canada.on "click", (e) ->
    marker_Canada.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Canada"
      dataType: "json"
      success: (data) ->
        # marker9.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Austria.on "click", (e) ->
    marker_Austria.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Austria"
      dataType: "json"
      success: (data) ->
        # marker10.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Belgium.on "click", (e) ->
    marker_Belgium.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Belgium"
      dataType: "json"
      success: (data) ->
        # marker11.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_France.on "click", (e) ->
    marker_France.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=France"
      dataType: "json"
      success: (data) ->
        # marker12.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Germany.on "click", (e) ->
    marker_Germany.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Germany"
      dataType: "json"
      success: (data) ->
        # marker13.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Netherlands.on "click", (e) ->
    marker_Netherlands.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Netherlands"
      dataType: "json"
      success: (data) ->
        # marker14.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Norway.on "click", (e) ->
    marker_Norway.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Norway"
      dataType: "json"
      success: (data) ->
        # marker15.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Sweden.on "click", (e) ->
    marker_Sweden.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Sweden"
      dataType: "json"
      success: (data) ->
        # marker16.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Switzerland.on "click", (e) ->
    marker_Switzerland.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Switzerland"
      dataType: "json"
      success: (data) ->
        # marker17.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_England.on "click", (e) ->
    marker_England.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=England"
      dataType: "json"
      success: (data) ->
        # marker18.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_CzeckRepublic.on "click", (e) ->
    marker_CzeckRepublic.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=CzeckRepubic"
      dataType: "json"
      success: (data) ->
        # marker19.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Russia.on "click", (e) ->
    marker_Russia.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Russia"
      dataType: "json"
      success: (data) ->
        # marker20.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Greece.on "click", (e) ->
    marker_Greece.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Greece"
      dataType: "json"
      success: (data) ->
        # marker21.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Ireland.on "click", (e) ->
    marker_Ireland.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Ireland"
      dataType: "json"
      success: (data) ->
        # marker22.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Spain.on "click", (e) ->
    marker_Spain.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Spain"
      dataType: "json"
      success: (data) ->
        # marker23.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Portugal.on "click", (e) ->
    marker_Portugal.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Portugal"
      dataType: "json"
      success: (data) ->
        # marker24.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Isreal.on "click", (e) ->
    marker_Isreal.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Israel"
      dataType: "json"
      success: (data) ->
        # marker25.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_SouthAfrica.on "click", (e) ->
    marker_SouthAfrica.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=SouthAfrica"
      dataType: "json"
      success: (data) ->
        # marker26.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_China.on "click", (e) ->
    marker_China.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=China"
      dataType: "json"
      success: (data) ->
        # marker_China.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Malaysia.on "click", (e) ->
    marker_Malaysia.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Malaysia"
      dataType: "json"
      success: (data) ->
        # marker28.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Japan.on "click", (e) ->
    marker_Japan.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Japan"
      dataType: "json"
      success: (data) ->
        # marker29.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Taiwan.on "click", (e) ->
    marker_Taiwan.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Taiwan"
      dataType: "json"
      success: (data) ->
        marker30.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Korea.on "click", (e) ->
    marker_Korea.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Korea"
      dataType: "json"
      success: (data) ->
        marker31.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_Australia.on "click", (e) ->
    marker_Australia.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=Australia"
      dataType: "json"
      success: (data) ->
        market_info_overlay(data.market_data)
        $('#container').html(data.content_to_replace)

  marker_India.on "click", (e) ->
    marker_India.unbindPopup()
    $.ajax
      url: "/map/update_news_feeds_content?country_name=India"
      dataType: "json"
      success: (data) ->
        # marker_India.bindPopup(data.market_data).openPopup()
        market_info_overlay(data.market_data)
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

  $('#info_overlay').click =>
    $('#info_overlay').fadeOut('fast')

  market_info_overlay = (data) =>
    # market = ''
    # market + data.market_name for market_name in data
    alert(data[0])
    info_string = '<h1>Market Info for ' + data[0].market_name + '</h1>' + 
      '<h2>Previous Close: ' + data[0].previous_close + '</h2>' +
      '<h2>Current: ' + data[0].close + '</h2>' +
      '<h2><img src="/images/up_arrow.png" /> + </h1>'
    $('#info_overlay').find('.info').html(info_string)
    $('#info_overlay').fadeIn('fast')
