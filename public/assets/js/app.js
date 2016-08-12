var map = null;
var geocoder = null;
var markers = [];
var markersById = [];
var infoWindow = null;
var address;
//var infowindow = new google.maps.InfoWindow({disableAutoPan: true,maxWidth:200});
var marker, i;
var page=0;
var pageno=1;
var inter=10;
var selMarker;
var pages;
var input;
var zoomLeve1=1;
var autocomplete;
var localAddr;
var map_id;
var curLocation='';
var selLocation;
/*var markers = new Array();*/
var markerContent=[];
var addresses={};
var firstLoad = 0;
initializeMap();
    function getDataList(selMarker) {
        /*$.each(selMarker, function(index, marker) {
            var parameter = {
                id: marker.id,
                bounds : map.getBounds().toUrlValue()
            };
            if (marker.address == '' || typeof marker.address == 'undefined') {
                jQuery.ajax({
                    url: '/locate/expo',
                    data: parameter,
                    dataType: 'json',
                    success: function(data) {
                        console.log(data);
                    }
                });
            }
        });
        if(firstLoad == 0){
            firstLoad = 1;
            AutoCenter();
        }*/
        if(firstLoad == 0){
            firstLoad = 1;
            AutoCenter();
        }

    }

    function initializeMap() {
        map_id = document.getElementById('map');
        var mapOptions = {
            zoom: 3,
            center: {
                lat: 24.260547,
                lng: 11.714687
            },
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById('map'), mapOptions);
        google.maps.event.addListener(map, 'dragend', function() {
            searchStoresBounds(map.getBounds().toUrlValue());
        });
        google.maps.event.addListener(map, 'idle', function() {
            searchStoresBounds(map.getBounds().toUrlValue());
        });
        google.maps.event.addListener(map, 'dragstart', function() {
            //searchStoresBounds(map.getBounds().toUrlValue());
        });

        google.maps.event.addListener(map, 'bounds_changed', function() {
            //searchStoresBounds(map.getBounds().toUrlValue());
        });

        /*geocoder = new google.maps.Geocoder();
        geocoder.geocode({
            'address': 'Pokhara'
        }, function(results, status) {
            if (status === google.maps.GeocoderStatus.OK) {
                var latlng = results[0].geometry.location;
                map.setCenter(latlng);
                map.setZoom(13);
                //searchStoresBounds(map.getBounds().toUrlValue());


            } else {
                //alert('Geocode was failed: ' + status);
            }
        });*/
        //searchStoresBounds(map.getBounds().toUrlValue());
    }

    function searchAddress(address) {
        geocoder.geocode({
            'address': address
        }, function(results, status) {
            if (status === google.maps.GeocoderStatus.OK) {
                var latlng = results[0].geometry.location;
                map.setCenter(latlng);
                map.setZoom(13);
                console.log(address);
                console.log(map.getBounds().toUrlValue());
                searchStoresBounds(map.getBounds().toUrlValue());

            } else {
                //alert('Geocode was failed: ' + status);
            }
        });
    }

    function searchStoresBounds() {
        if (!map.getBounds())
            return;
        var bounds = map.getBounds().toUrlValue();

        var url = '/locate/expos';
        var parameter = {
            bounds: bounds
        };
        jQuery.ajax({
            url: url,
            data: parameter,
            dataType: 'json',
            success: showStores
        });
    }

    function showStores(data, status, xhr) {
        var id;
        markers = [];
        markersById = [];
        for (i = 0; i < data['data'].length; i++) {
            marker = new google.maps.Marker({
                position: new google.maps.LatLng(data['data'][i]['lat'], data['data'][i]['lng']),
                map: map,
                icon: '/assets/img/marker.png',
                lat: data['data'][i]['lat'],
                lng: data['data'][i]['lng'],
                id: data['data'][i]['expo_id'],
                distance: data['data'][i]['distance'],
                title: data['data'][i]['title'],
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
                    /*if (marker.address == '' || typeof marker.address == 'undefined') {
                        jQuery.ajax({
                            url: '/locate/expo',
                            data: parameter,
                            dataType: 'json',
                            success: function(data) {

                            }
                        });
                    }*/
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
        getDataList(markers);
    }

    function AutoCenter() {
        if (markers.length > 0) {
            var bounds = new google.maps.LatLngBounds();
            $.each(markers, function(index, marker) {
                bounds.extend(marker.position);
            });
            map.fitBounds(bounds);
        }

    }