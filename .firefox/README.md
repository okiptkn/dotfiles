## Summary

### userChrome.css
manages firefox appearances, it uses [Nocturnal](https://userstyles.org/styles/105352/nocturnal-firefox-theme-read-description) theme as its base. Place it on your ~/.mozilla/firefox/[yourprofile]/chrome . Some of these customizations are including :
- removes icon url and uses local base64 encryption icon instead, put img folder on ~/.mozilla/firefox/[yourprofile] in case button icon not showing up properly
- tabs are disabled by default in favor of `Tree Style Tab` add-ons

### [surfingkeys.js]()
custom key mapping for `Surfingkeys` add-ons, mostly vim based    
#### some custom mapped key
* see basic tutorial [**here**](https://github.com/brookhong/Surfingkeys)
* see also **default** mapping in the add-ons preference `ctrl+shift+a` , note that these customed keys below takes priority
- **navigations**

| keys  | function           |  | keys | function                              |
|:------|:-------------------|:-|:-----|:--------------------------------------|
| `j`   | scroll page down   |  | `J`  | select next tab [DOWN]                |
| `k`   | scroll page up     |  | `K`  | select previous tab [UP]              |
| `l`   | scroll right       |  | `L`  | go to next history of current tab     |
| `h`   | scroll left        |  | `H`  | go to previous history of current tab |
| `d`   | close tab          |  | `D`  | restore previously closed tab         |

- **others**

| keys | function                                       |
|:-----|:-----------------------------------------------|
| `od` | open omnibar search with duckduckgo (default)  |
| `oh` | open omnibar search with github                |
| `op` | open omnibar search with duckduckgoHTML        |
| `xf` | fullscreen toggle for youtube                  |

#### some default keymap example

| keys | function                     |  | keys | function                        |
|:-----|:-----------------------------|:-|:-----|:--------------------------------|
| `i`  | insert/place cursor          |  | `go` | open url in current tab         |
| `on` | open new tab                 |  | `oi` | open new incognito window       |
| `f`  | display link hints           |  | `gf` | display hints & open in new tab |
| `yy` | yank/copy current page url   |  | `yg` | screenshot current page         |
| `t`  | open omnibar url search      |  | `T`  | open omnibar tab search         |
| `b`  | open omnibar bookmark search |  | `cs` | change scroll target            |

### [treestyletab.js]()
config for `Tree Style Tab` add-ons
- see basic tutorial/code snippets [**here**](https://github.com/piroor/treestyletab/wiki/Code-snippets-for-custom-style-rules#for-version-2x)
- `F1` to toggle tabs visibility
- use it along side `Multiple Tab Handler` add-ons to enable tabs grouping

### Currently used add-ons
- Surfingkeys
- Tree Style Tab
- Multiple Tab Handler
- NoScript
- uBlock Origin
- Stylus

