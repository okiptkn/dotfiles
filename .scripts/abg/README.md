# abg
a simple AutoBlurbackGround script, currently work in progress

### Dependency
- `hsetroot`

### USAGE
You can call this script from your `.xinitrc` file by putting `abg &` just before `exec` line. Also modify and copy `.hsetbg` example file above to your home directory to set a default/fallback image background in case the script got interrupted. 

Use `-h` or `-help` flag to print help/usage
```
okiptkn ❯ abg -help
[USAGE] : abg [FLAG] [ARGS]
[FLAG]  : -h, or -help, show this help messages
          -i [ARG] set time interval, default value is 1
          -w [ARG] select wallpaper background
          -b [ARG] pass blur level, value 0 means that
                    default value 4  will be used instead
          -g [ARG] pass gamma level, default value is 0
          -v, print abg info

```
* example usage : 
run `abg` with specified [-w] wallpaper and [-i] interval
```
abg -w /path/yourwal.png -i 0.5
```
* from terminal use `nohup` command to send `abg` into the background
```
nohup abg &
```
* or with a specified flag
```
nohup abg -w /path/yourwal.png -i 0.5 &
```

### PREVIEW
* `abg` with blur=4
![alt text](img/blur4.png "blur4")

* `abg` with gamma=4
![alt text](img/gamma4.png "gamma4")

#### extras
- put this on your neofetch config to let `neofetch` use `.hsetbg` to fetch image
```
image_source="$(awk -F\' '/hsetroot/ {printf $(NF-1)}' "${HOME}/.hsetbg")"
```
### LICENSE
this script is licensed under DLSv6.66 License - see [LICENSE](LICENSE) for details
