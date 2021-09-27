from libqtile import bar, layout, widget
from libqtile.config import Group, Key, Screen
from libqtile.lazy import lazy

### keybindings ###
mod = "mod4"
keys = [
    Key([mod], "h", lazy.layout.left()),
    Key([mod], "l", lazy.layout.right()),
    Key([mod], "j", lazy.layout.down()),
    Key([mod], "k", lazy.layout.up()),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left()),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right()),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up()),
    Key([mod, "control"], "h", lazy.layout.grow_left()),
    Key([mod, "control"], "l", lazy.layout.grow_right()),
    Key([mod, "control"], "j", lazy.layout.grow_down()),
    Key([mod, "control"], "k", lazy.layout.grow_up()),

    Key([mod], "Tab", lazy.next_layout()),
    Key([mod], "w", lazy.window.kill()),
    Key([mod], "n", lazy.layout.normalize()),

    Key([mod], "Return", lazy.spawn("alacritty")),
    Key([mod], "b", lazy.spawn("firefox")),
    Key([mod], "c", lazy.spawn("codium")),
    Key([mod], "r", lazy.spawncmd()),

    Key([mod, "control"], "e", lazy.spawn("dm-tool lock")),
    Key([mod, "control"], "r", lazy.restart()),
    Key([mod, "control"], "q", lazy.shutdown()),
]

### color definitions (nord theme) ###
nord = [
    "#2e3440",
    "#3b4252",
    "#434c5e",
    "#4c566a",
    "#d8dee9",
    "#e5e9f0",
    "#eceff4",
    "#8fbcbb",
    "#88c0d0",
    "#81a1c1",
    "#5e81ac",
    "#bf616a",
    "#d08770",
    "#ebcb8b",
    "#a3be8c",
    "#b48ead",
]

### groups ###
groups = [Group(i) for i in "asdfg"]
for i in groups:
    keys.extend([
        Key([mod], i.name, lazy.group[i.name].toscreen()),
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True)),
    ])

### layouts ###
layouts = [
    layout.Columns(border_focus=nord[1], border_width=4),
    layout.Max(),
]

### bar ###
widget_defaults = dict(
    font='Source Code Pro',
    fontsize=25,
    padding=15,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(),
                widget.Prompt(),
                widget.Clock(format='%A, %B %-d'),
                widget.Clock(format='%-I:%M'),
            ],
            24,
        ),
    ),
]

### misc options ###
dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# don't change, exists for compatability with java apps
wmname = "LG3D"