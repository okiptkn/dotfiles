# abg
a simple AutoBlurbackGround, currently work in progress

### USAGE
You can call this script from your `.xinitrc` file, put `abg &` just before `exec` line. Also modify and copy `.hsetbg` file above to your home directory to set your default/fallback background in case script got interrupted. Use `-h` or `-help` flag to print help/usage
* example usage : 
run `abg` with specified [-w]wallpaper and [-i]interval
```
abg -w /path/yourwal.png -i 0.5
```
from terminal use `nohup` command to send `abg` into the background
```
nohup abg &
```
or with specified flag
```
nohup abg -w /path/yourwal.png -i 0.5 &
```
### LICENSE
this script is licensed under DLSv66.6 License
