'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "6651075efc890d92bc6af54cf2db385b",
"assets/assets/images/01.png": "0ebe3eb917ba9c57d69db0c2348bccdd",
"assets/assets/images/02.png": "15976aa24152900d89b47a4bdbc07c9e",
"assets/assets/images/03.png": "eb67329fc737b4689f457f34a79e1f5a",
"assets/assets/images/04.png": "f922c4f3cee4eed329545bdb83a3947e",
"assets/assets/images/05.png": "3188c9d62517bd55985391e985a459aa",
"assets/assets/images/06.png": "eee3216b61c33975da2fa399a5c9c4b7",
"assets/assets/images/07.png": "52ec559ca19d1b465745b4afc2c5882c",
"assets/assets/images/08.png": "20784d38e73cfc1114a0d263e0774212",
"assets/assets/images/09.png": "f2da7a295b459d0ee00cd79b7737380c",
"assets/assets/images/10.png": "f0d9a89d2ffd97429c231760c80ae22c",
"assets/assets/images/11.png": "265264cebda7f2566a2d38ecb1a91b6c",
"assets/assets/images/12.png": "8780c55de7500b77f50a5331a35240be",
"assets/assets/images/13.png": "e6867fb400880b0af69dd8bd853e0b58",
"assets/assets/images/14.png": "398a4c0a119fbfa1e2e5a2a1b1be70f5",
"assets/assets/images/15.png": "cfd7ada2ec7eb45b3935bfb59a880fa3",
"assets/assets/images/16.png": "8d6c0a5a138d1bdddb3478d8b22718b1",
"assets/assets/images/17.png": "4ac37243a8bdb7bd79ba508485952199",
"assets/assets/images/18.png": "957d4865da69473cae74b3d42ec473ab",
"assets/assets/images/19.png": "dd0f0b584d79d903e7ca796a48f9fa50",
"assets/assets/images/20.png": "108e988424f8b842c57888fb282e5231",
"assets/assets/images/21.png": "a8d3466fbb9b9bf2b8a7a22d029e26c2",
"assets/assets/images/22.png": "5976f76338314dbcde4df5e1cd8ad5ac",
"assets/assets/images/23.png": "c14429f26c47ac5013e21f4317b3ab03",
"assets/assets/images/24.png": "b3cd187cb1dee727b8093bac08ff49cd",
"assets/assets/images/25.png": "9e8e93c3ca7a143fc879998594d7ad69",
"assets/assets/images/26.png": "24f90532f8880ab6f236c0ddd2889b84",
"assets/assets/images/27.png": "b6e0d524ba2dddef7bc1beebb67d2817",
"assets/assets/images/28.png": "de7e041d7297182d5f5662065524e954",
"assets/assets/images/29.png": "0217bf937fb332752b851dc9e58abaae",
"assets/assets/images/30.png": "f637f210d792b161b5589fab5a1b58f9",
"assets/assets/images/31.png": "b8d1f818a10a3090b3edcfa5362851fe",
"assets/assets/images/32.png": "e63bd1941dc9461fbc6c945b5ff224f0",
"assets/assets/images/33.png": "822b744ab75bbc9bbbe11a30db98a035",
"assets/assets/images/34.png": "86a832518328214d7bff47368bc7ff1a",
"assets/assets/images/35.png": "5aafb3846bf01d11de31fd1df8d2956b",
"assets/assets/images/36.png": "f592dccd1cadf0a0659fccc298cda46b",
"assets/assets/images/37.png": "a932df2abeb63d8ddfc1ec733d21dedc",
"assets/assets/images/38.png": "9f9310c1fe25772e63a079d62a807a4b",
"assets/assets/images/39.png": "c70c9e27ad61d4f58e06a8072833260b",
"assets/assets/images/bakery.png": "66f45e0663570b357c9ea52fc2a88b17",
"assets/assets/images/bg.png": "761f2056045234068503003a7fcf5464",
"assets/assets/images/bg01.png": "0fb1a8e45ed9e7aa1b9cd42354f368c6",
"assets/assets/images/bg02.png": "31842eac6b2dac7b29bed1405a09b1cc",
"assets/assets/images/bg03.png": "8a136b152ef02747de9658fbbdd84760",
"assets/assets/images/bg04.png": "05c85410fcab63c86497f79814c982e1",
"assets/assets/images/bgprofile.png": "823b6fc6739fc314d4fc3565a123d7d3",
"assets/assets/images/drink.png": "a3de1572706dd328b26c1cc70ec73466",
"assets/assets/images/drop_down_icon.png": "0bd470607f099299c8d4e894800a6149",
"assets/assets/images/dthai.png": "27232afce671a499a830dfd5d5c77f9b",
"assets/assets/images/icecerm.png": "730e33004a52a1e892795059488b76ce",
"assets/assets/images/me.jpg": "eab5fe59cfe6c54ade7fba24800cff26",
"assets/assets/images/s01.png": "03555e02a82869629fcaefa7e31d02d0",
"assets/assets/images/s02.png": "3a69e447aa7cad4c5211d7d4396dd677",
"assets/assets/images/s03.png": "54551798e5894e4db8f60f5d3dfb5f10",
"assets/assets/images/s04.png": "59527776ab8e4e03d0beb72e0120c9e9",
"assets/assets/images/s05.png": "b99a6976c3bdf2c74a1e93a0a7626ae6",
"assets/assets/images/s06.png": "30bde897542e858db5b9eb3404d997e4",
"assets/assets/images/s07.png": "233a23eba8e98f0ac868c498c8bd41b5",
"assets/assets/images/s08.png": "adc50d23ccf5eeb58296ada3c1f28f07",
"assets/assets/images/s09.png": "d4778489478b3feb3ce75fcd686fdbb7",
"assets/assets/images/s10.png": "342fc9252a1a27dd89f106f2c498a6ce",
"assets/assets/images/s11.png": "3bfade317413df2cba8ed1d68691800b",
"assets/assets/images/s12.png": "73f2f02a4832065897d985ba7fa4edb9",
"assets/assets/images/s13.png": "7dbea1a10637091d3a51c2b279dc3a90",
"assets/assets/images/s14.png": "13f124f1df3d1f569c93327914bac454",
"assets/assets/images/s15.png": "a9b2a6e428c9ff2ecfa3d50b6c1006bd",
"assets/assets/images/s16.png": "8c5cd57bc3b0ffa1492428fb0f157ac8",
"assets/assets/images/s17.png": "4c8b37f8ba6c9f98943732bb7cc864e2",
"assets/assets/images/s18.png": "a374bf07fceb45a892ed6e7837ee78e9",
"assets/assets/images/s19.png": "acfd69849f7687ba34a8139d3621cb8a",
"assets/assets/images/s20.png": "1af4cdc8349d1abdec13412b53e757f3",
"assets/assets/images/s21.png": "fe4c2635efb9e3be136840c6a84d5a3f",
"assets/assets/images/s22.png": "021f4b70b627e0f98d9bf34aca012873",
"assets/assets/images/s23.png": "8255eab1c6c522205768ba8d1a906768",
"assets/assets/images/s24.png": "7fa2e48fbb938de96f67bd007f6f8ab3",
"assets/assets/images/s25.png": "bc6933e77086bbd44ad3a80ececcd9db",
"assets/assets/images/s26.png": "2c47620ff447507edbbc173f052d1873",
"assets/assets/images/s27.png": "50cfe8bea047e7d946b12a0b743bd18c",
"assets/assets/images/s28.png": "bbf6f98500bed0972460adedf03e9031",
"assets/assets/images/s29.png": "80b751fb3da41b002a698c441fb57553",
"assets/assets/images/s30.png": "947dcfc4d4304c2a715c43a059875deb",
"assets/assets/images/s31.png": "930b9bc1f2b38da52ac29a4c104bfd9f",
"assets/assets/images/s32.png": "11fa5bc93b39e2b1047044c6b3d61926",
"assets/assets/images/s33.png": "68564a874d3ff4fb0d04dd4e86c7477b",
"assets/assets/images/s34.png": "c6eafa35bf0b89575b1d93a02b27056d",
"assets/assets/images/s35.png": "54a65eb453374a676451014172f8b2d6",
"assets/assets/images/s36.png": "3dea0e0221336c506afcff58d22e302a",
"assets/assets/images/s37.png": "66ee69fc2764c7696be4709704d285e6",
"assets/assets/images/s38.png": "3421b3f55f89c2cc148c5a2bb237a3f3",
"assets/assets/images/s39.png": "aa4efe3417db1e8fc5151b0a30a335c2",
"assets/assets/images/thaidessert.jpg": "5f3d9b0e8326baaa692f003a5159ac18",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "b2b00cd0352bebcdaf1e1afc100fa677",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9dd85e4167e4c9d28d03caee668993f4",
"/": "9dd85e4167e4c9d28d03caee668993f4",
"main.dart.js": "0c9a754510b2679c466f6701c44d7bb5",
"manifest.json": "8ba93dd37cd63fe2985790414a87a279",
"version.json": "74ae8eda6026d5866ff411304baa1a3c"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
