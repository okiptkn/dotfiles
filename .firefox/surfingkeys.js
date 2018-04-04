// an example of pop up message
mapkey('<Ctrl-y>', 'Show me the money', function() {
    Front.showPopup('ur moms gay (Escape to close).');
});

// ---- Maps ----//
// Tab Navigation
map("K", "E")
map("J", "R")

// page nav ex
map('gt', 'T');

// History
map("H", "S")
map("L", "D")

// close tab
map("d", "x")
map("D", "X")

// ---- Cleanup ----//
// Unmap several defaults
const unmaps = [
  'E', 'R', 'S', 'x', 'sb', 'sw', 'sd', 'ow', 'ob'
]

unmaps.forEach((u) => {
  unmap(u)
})

// Search aliases
addSearchAliasX('p', 'duckHTML', 'https://duckduckgo.com/html/?q=', 's', 'https://duckduckgo.com/ac/?q=', function(response) {
    var res = JSON.parse(response.text);
    return res.map(function(r){
        return r.phrase;
    });
});

mapkey('op', '#8Open Search with duckduckgoHTML', function() {
    Front.openOmnibar({type: "SearchEngine", extra: "p"});
});

mapkey('od', '#8Open Search with duckduckgo', function() {
    Front.openOmnibar({type: "SearchEngine", extra: "d"});
});

mapkey('oh', '#8Open Search with github', function() {
    Front.openOmnibar({type: "SearchEngine", extra: "h"});
});

mapkey('og', '#8Open Search with google', function() {
    Front.openOmnibar({type: "SearchEngine", extra: "g"});
});

settings.defaultSearchEngine = 'd';

// Function map key for spesific sites
function ytFullscreen() {
  $(".ytp-fullscreen-button.ytp-button").click()
}

const siteleader = "x"
const ri = { repeatIgnore: true }

function mapsitekey(domainRegex, key, desc, f, o) {
  const opts = o || {}
  mapkey(`${siteleader}${key}`, desc, f, Object.assign({}, opts, { domain: domainRegex }))
}

function mapsitekeys(d, maps) {
  const domain = d.replace(".", "\\.")
  const domainRegex = new RegExp(`^http(s)?://(([a-zA-Z0-9-_]+\\.)*)(${domain})(/.*)?`)
  maps.forEach((map) => {
    mapsitekey(domainRegex, map[0], map[1], map[2])
  })
}

mapsitekeys("youtube.com", [
  ['F', 'Toggle fullscreen', ytFullscreen],
])

// set theme
settings.theme = `
.sk_theme {
    background: #000;
    color: #fff;
}
.sk_theme tbody {
    color: #fff;
}
.sk_theme input {
    color: #d9dce0;
}
.sk_theme .url {
    color: #2173c5;
}
.sk_theme .annotation {
    color: #38f;
}
.sk_theme .omnibar_highlight {
    color: #fbd60a;
}
.sk_theme ul>li:nth-child(odd) {
    background: #1e211d;
}
.sk_theme ul>li.focused {
    background: #4ec10d;
}`;

// blacklist
settings.blacklistPattern = /.*mail.google.com.*|.*inbox.google.com.*/i;
