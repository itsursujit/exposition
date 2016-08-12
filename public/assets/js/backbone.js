var Map = Backbone.Model.extend({
    initialize: function(attrs){
        var self= this;
        var map = null;
        var mapOption = {
            zoom: 4,
            center: {
                lat: 24.260547,
                lng: 11.714687
            },
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById('map'), mapOption);
        google.maps.event.addListener(map, 'dragend', function() {
            //self.searchStoreBounds(map, attrs);
        });
        google.maps.event.addListener(map, 'idle', function() {
            if(attrs.firstLoad == 0) {
                self.searchStoreBounds(map, attrs);
            }
        });
        google.maps.event.addListener(map, 'dragstart', function() {
            //this.searchStoresBounds(map.getBounds().toUrlValue());
        });

        google.maps.event.addListener(map, 'bounds_changed', function() {
            //searchStoresBounds(map.getBounds().toUrlValue());
        });
    },
    searchStoreBounds: function(map, attrs) {
        console.log(attrs);
        var url = '/locate/expos';
        var parameter = {
            bounds: map.getBounds().toUrlValue(),
            center: map.getCenter().toUrlValue()
        };
        jQuery.ajax({
            url: url,
            data: parameter,
            dataType: 'json',
            success: showStores
        });
        function getDataList(markers){
            if(attrs.firstLoad == 0){
                attrs.firstLoad = 1;
                AutoCenter(markers);
            }
        }

        function AutoCenter(markers) {
            if (markers.length > 0) {
                var bounds = new google.maps.LatLngBounds();
                $.each(markers, function(index, marker) {
                    bounds.extend(marker.position);
                });
                map.fitBounds(bounds);
            }

        }
        function showStores(data, status, xhr) {
            var id;
            var markers = [];
            var markersById = [];
            for (i = 0; i < data['data'].length; i++) {
                attrs.loadedExpo.push(data['data'][i]['expo_id']);
                marker = new google.maps.Marker({
                    position: new google.maps.LatLng(data['data'][i]['lat'], data['data'][i]['lng']),
                    map: map,
                    icon: '/assets/img/marker.png',
                    lat: data['data'][i]['lat'],
                    lng: data['data'][i]['lng'],
                    id: data['data'][i]['expo_id'],
                    distance: data['data'][i]['distance'],
                    title: data['data'][i]['title']
                    /*,
                     zIndex: google.maps.Marker.MAX_ZINDEX + 1*/
                });
                markers[i] = marker;
                markersById[data['data'][i]['expo_id']] = marker;

                var infowindow = new google.maps.InfoWindow({
                    content: '<h4>' + data['data'][i]['title'] + '</h4><p>Location: '+data['data'][i]['city'] + ', ' + data['data'][i]['state'] +'</p>'
                });
                google.maps.event.addListener(marker, 'click', (function(marker, i) {
                    return function() {
                        if(!map.getBounds().contains(marker.getPosition()))
                        {
                            map.setCenter(marker.getPosition());
                        }

                        infowindow.open(map, marker);
                        var parameter = {
                            id: marker.id,
                            bounds : map.getBounds().toUrlValue()
                        };
                    }
                })(marker, i));
                google.maps.event.addListener(marker, 'mouseover', (function(marker, i) {
                    return function() {

                    }
                })(marker, i));
                google.maps.event.addListener(marker, 'mouseout', (function(marker, i) {
                    return function() {

                    }
                })(marker, i));
            }
            console.log(attrs.loadedExpo);
            getDataList(markers);
        }
    }
});