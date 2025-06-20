# dots

Configs for my linux systems managed with GNU Stow.

![Neovim](/nvim.png)

## Notes

### Enable conservation mode

Change the value in `/sys/bus/platform/drivers/ideapad_acpi/VPC2004\:00/conservation_mode` from 0 to 1.

### Hide titlebar of maximized windows

Update `~/.config/kwinrc` to include:

```
[Windows]
BorderlessMaximizedWindows=true
```
