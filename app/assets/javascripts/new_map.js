
        var map = new L.Map('map');

        var cloudmadeUrl = 'http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/997/256/{z}/{x}/{y}.png',
            cloudmadeAttribution = 'Map data &copy; 2011 OpenStreetMap contributors, Imagery &copy; 2011 CloudMade',
            cloudmade = new L.TileLayer(cloudmadeUrl, {maxZoom: 18, attribution: cloudmadeAttribution});

        map.setView(new L.LatLng(-33.957942,123.398438), 2).addLayer(cloudmade);


        var markerLocation = new L.LatLng(51.5, -0.09),
            marker = new L.Marker(markerLocation);

        map.addLayer(marker);
        marker.bindPopup("<b>Hello world!</b><br />I am a popup.").openPopup();




        var circleLocation = new L.LatLng(51.508, -0.11),
            circleOptions = {color: '#f03', opacity: 0.7},
            circle = new L.Circle(circleLocation, 500, circleOptions);

        circle.bindPopup("I am a circle.");
        map.addLayer(circle);

        var c1 = new L.LatLng(51.509, -0.08),
            c2 = new L.LatLng(51.503, -0.06),
            c3 = new L.LatLng(51.51, -0.047),
            polygonPoints = [c1, c2, c3],
            polygon = new L.Polygon(polygonPoints);            

        polygon.bindPopup("I am a polygon.");
        map.addLayer(polygon);
        


        var p1 = new L.LatLng(-33.957942,123.398438),
            p2 = new L.LatLng(-33.957942,127.617188),
            p3 = new L.LatLng(-32.487524,130.78125),
            p4 = new L.LatLng(-32.487524,132.890625),
            p5 = new L.LatLng(-33.66584,134.296875),
            p6 = new L.LatLng(-35.116315,135.703125),
            p7 = new L.LatLng(-34.828235,137.109375),
            p8 = new L.LatLng(-36.823358,139.570313),
            p9 = new L.LatLng(-38.493155,141.328125),
            p10 = new L.LatLng(-39.041374,143.789063),
            p11 = new L.LatLng(-38.493155,145.195313),
            p12 = new L.LatLng(-39.585371,146.953125),
            p13 = new L.LatLng(-39.041374,148.359375),
            p14 = new L.LatLng(-37.940733,149.765625),
            p15 = new L.LatLng(-34.539143,151.523438),
            p16 = new L.LatLng(-31.59351,152.929688),
            p17 = new L.LatLng(-27.932299,153.984375),
            p18 = new L.LatLng(-21.223846,149.414063),
            p19 = new L.LatLng(-19.244774,146.601563),
            p20 = new L.LatLng(-16.568812,145.898438),
            p21 = new L.LatLng(-14.876841,145.195313),
            p22 = new L.LatLng(-12.485924,143.789063),
            p23 = new L.LatLng(-11.109416,142.734375),
            p24 = new L.LatLng(-17.241548,140.273438),
            p25 = new L.LatLng(-15.21635,136.054688),
            p26 = new L.LatLng(-13.171493,137.109375),
            p27 = new L.LatLng(-12.485924,131.484375),
            p28 = new L.LatLng(-14.876841,128.671875),
            p29 = new L.LatLng(-15.21635,125.859375),
            p30 = new L.LatLng(-16.231554,123.75),
            p31 = new L.LatLng(-17.241548,122.695313),
            p32 = new L.LatLng(-19.907253,120.9375),
            p33 = new L.LatLng(-21.877813,114.257813),
            p34 = new L.LatLng(-26.368249,113.554688),
            p35 = new L.LatLng(-29.474036,114.960938),
            p36 = new L.LatLng(-33.66584,116.015625),
            p37 = new L.LatLng(-34.539143,117.070313),
            p38 = new L.LatLng(-34.249045,119.53125),
            p39 = new L.LatLng(-34.249045,122.34375),

        polygonPoints = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38, p39],
        polygon = new L.Polygon(polygonPoints);
        polygon.bindPopup(australia_market_data);
        map.addLayer(polygon);      
        map.on('click', onMapClick);

        var popup = new L.Popup();

        function onMapClick(e) {
            var latlngStr = '(' + e.latlng.lat.toFixed(3) + ', ' + e.latlng.lng.toFixed(3) + ')';

            popup.setLatLng(e.latlng);
            popup.setContent("You clicked the map at " + latlngStr);
            map.openPopup(popup);
        }
