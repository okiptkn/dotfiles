# abg
a simple AutoBlurbackGround script, currently work in progress

### USAGE
You can call this script from your `.xinitrc` file by putting `abg &` just before `exec` line. Also modify and copy `.hsetbg` example file above to your home directory to set a default/fallback image background in case the script got interrupted. 

Use `-h` or `-help` flag to print help/usage
* example usage : 
run `abg` with specified [-w] wallpaper and [-i] interval
```
abg -w /path/yourwal.png -i 0.5
```
* from terminal use `nohup` command to send `abg` into the background
```
nohup abg &
```
* or with specified flag
```
nohup abg -w /path/yourwal.png -i 0.5 &
```
### LICENSE
this script is licensed under DLSv6.66 License - see [LICENSE](LICENSE) for details
