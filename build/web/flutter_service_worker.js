'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "af2f3dc208d3826a87613e5dded72d37",
"/": "af2f3dc208d3826a87613e5dded72d37",
"main.dart.js": "df924b14659d2e52969b628d7abe5dff",
"assets/LICENSE": "0000d255865246c9b55862d96ffd3089",
"assets/images/close_nav.png": "cc0b7ea75df3a83d452ebb94dc9293a2",
"assets/AssetManifest.json": "c14c67f0a16046fc693f803b070ff9f0",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
