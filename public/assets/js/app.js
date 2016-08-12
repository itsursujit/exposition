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
initializeMap();
    function getDataList(selMarker) {
        $.each(selMarker, function(index, marker) {
            var parameter = {
                id: marker.id
            };
            if (marker.address == '' || typeof marker.address == 'undefined') {
                jQuery.ajax({
                    url: 'getDesc.php',
                    data: parameter,
                    dataType: 'json',
                    success: function(data) {
                        console.log(data);
                    }
                });
            }
        });
        AutoCenter();
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
        google.maps.event.addListener(map, 'dragend', function(map) {
            console.log('Drag End');
        });
        google.maps.event.addListener(map, 'dragstart', function(map) {
            searchStoresBounds(map.getBounds().toUrlValue());
        });

        google.maps.event.addListener(map, 'bounds_changed', function() {
            searchStoresBounds(map.getBounds().toUrlValue());
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

        var url = '/locate/expo';
        var parameter = {
            bounds: bounds
        };
        $.each(markers, function(index, marker) {
            marker.setMap(null);
            //marker.setIcon('http://maps.google.com/mapfiles/ms/icons/red-dot.png');

        });
        selMarker = [];
        jQuery.ajax({
            url: url,
            data: parameter,
            dataType: 'json',
            success: showStores
        });
    }

    function showStores(data, status, xhr) {
        if (data['status'] != 'OK')
            return;
        var id;

        markers = [];
        markersById = [];
        for (i = 0; i < data['data'].length; i++) {
            marker = new google.maps.Marker({
                position: new google.maps.LatLng(data['data'][i]['lat'], data['data'][i]['lng']),
                map: map,
                icon: 'pin-2.png',
                lat: data['data'][i]['lat'],
                lng: data['data'][i]['lng'],
                id: data['data'][i]['id'],
                distance: data['data'][i]['distance'],
                status: data['data'][i]['status']/*,
                zIndex: google.maps.Marker.MAX_ZINDEX + 1*/
            });

            markers[i] = marker;
            markersById[data['data'][i]['id']] = marker;
            markerContent[data['data'][i]['id']] = data['data'][i]['address'];

            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                    if(!map.getBounds().contains(marker.getPosition()))
                    {
                        map.setCenter(marker.getPosition());
                    }

                    if (typeof marker.store_name == 'undefined' || typeof marker.store_pic == 'undefined') {
                        jQuery.ajax({
                            url: 'getDesc.php',
                            data: parameter,
                            dataType: 'json',
                            success: function(data) {
                                console.log(data);
                            }
                        });
                    } else {
                        var infobox = new SmartInfoWindow({
                            position: marker.getPosition(),
                            map: map,
                            content: content,
                            height: height,
                            width: width
                        });
                        //infowindow.setContent(marker.address+'<br><button type="button" data-dismiss="modal"  class="select-store" data-value="'+marker.id+'">Ship to this address</button>');
                    }
                }
            })(marker, i));
            google.maps.event.addListener(marker, 'mouseover', (function(marker, i) {
                return function() {
                }
            })(marker, i));
            google.maps.event.addListener(marker, 'mouseout', (function(marker, i) {
                return function() {
                    mouse=1;
                    setInterval(checkMouse,2000);
                    $.each(selMarker, function(index, marker) {
                    });
                }
            })(marker, i));
        }
        getDataList(selMarker);
    }

    function AutoCenter() {
        if (selMarker.length > 0) {
            var bounds = new google.maps.LatLngBounds();
            $.each(selMarker, function(index, marker) {
                bounds.extend(marker.position);
            });
            map.fitBounds(bounds);
        }

    }