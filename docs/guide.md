Through source code modifications, you can change Purse's behavior and appearance. Here are a few examples of what you can do with Purse.

## Changing Equip Color

You can change the slot's equip color, currently blue, by modifying the `SLOT_EQUIP_COLOR` constant in its source.

The following code sample changes the equip color to red.

``` lua linenums="68" hl_lines="2"
--8<-- "src/init.luau:68:68"
local SLOT_EQUIP_COLOR = Color3.new(233 / 255, 90 / 255, 90 / 255) -- (1)!
--8<-- "src/init.luau:70:73"
```

1.  Changed from blue `#!lua Color3.new(90 / 255, 142 / 255, 233 / 255)` to red `#!lua Color3.new(233 / 255, 90 / 255, 90 / 255)`

![Screenshot of the hotbar with a slot equipped with a red selection outline](assets/red-slot-equip-color.png)
/// caption
Hotbar with a red equip outline
///

## Increasing Hotbar Slots and Inventory Rows

Purse shows a set number of hotbar slots and inventory rows based on the device.

![Screenshot of the hotbar and inventory with full size](assets/hotbar-inventory-full.png)
/// caption
Computer, console, and VR have 10 hotbar slots and 4 inventory rows
///

![Screenshot of the hotbar and inventory with mini size](assets/hotbar-inventory-mini.png)
/// caption
Phone and tablet devices have 3 hotbar slots and 2 inventory rows
///

You can increase the number of hotbar slots and inventory rows shown by changing the constants in the source code.

!!! note

    Formerly, VR devices used different constants for hotbar slots and inventory rows, but now they use the same values as computer and console devices.

    `HOTBAR_SLOTS_VR` and `INVENTORY_ROWS_VR` are no longer used but are still included in the code. VR devices now use `INVENTORY_ROWS_FULL` and `HOTBAR_SLOTS_FULL`.

``` lua linenums="86"
--8<-- "src/init.luau:86:96"
```

Constants suffixed with `_FULL` are for computer, console, and VR devices while constants suffixed with `_MINI` are for phone and tablet devices.

The following code sample changes phone and tablet devices to have 5 hotbar slots.

``` lua linenums="86" hl_lines="3"
--8<-- "src/init.luau:86:87"
local HOTBAR_SLOTS_MINI = 5 -- (1)!
--8<-- "src/init.luau:89:90"
```

1.  Changed from `#!lua 3` hotbar slots to `#!lua 5` hotbar slots

![Screenshot of the hotbar and inventory with modified mini size](assets/hotbar-inventory-sample.png)
/// caption
Increased hotbar slots on phone and tablet devices
///

## Removing Topbar Icon

The topbar icon is decoupled from Purse's functionality, so you can remove it by disabling the [`TopbarIcon`][TopbarIcon] script. In addition, a [`ContextAction`][ContextAction] script is included to bind opening and closing the inventory to a keycode (set to backquote <kbd>`</kbd> by default).

![Screenshot of topbar icon enabled](assets/topbar-icon-enabled.svg){ width="852" }
/// caption
Topbar icon enabled
///

![Screenshot of topbar icon disabled](assets/topbar-icon-disabled.svg){ width="852" }
/// caption
Topbar icon disabled
///

Your explorer window should look similar to the following when you disable the `TopbarIcon` script and enable the `ContextAction` script.

![Explorer window showing TopbarIcon disabled and ContextAction enabled under Purse](assets/disable-topbar.png)

!!! warning

    If you do not enable the `ContextAction` script, players will not be able to open the backpack since the topbar icon, which handles binding, is disabled.

  [TopbarIcon]: https://github.com/ryanlua/purse/blob/main/src/TopbarIcon.client.luau
  [ContextAction]: https://github.com/ryanlua/purse/blob/main/src/ContextAction.client.luau

## Changing Inventory Key

The default key to open the inventory is the backquote <kbd>\`</kbd> key, but you can change this by modifying the `bindToggleKey` argument in the [`TopbarIcon`][TopbarIcon] script.

The following code sample changes the inventory toggle key to the <kbd>I</kbd> key.

``` lua title="TopbarIcon" linenums="6" hl_lines="21"
--8<-- "src/TopbarIcon.client.luau:6:25"
icon:bindToggleKey(Enum.KeyCode.I) -- (1)!
--8<-- "src/TopbarIcon.client.luau:27:28"
```

1.  Changed from backquote <kbd>\`</kbd> key `#!lua Enum.KeyCode.Backquote` to <kbd>I</kbd> key `#!lua Enum.KeyCode.I`

![Screenshot of the hotbar with a slot equipped with a red selection outline](assets/inventory-key-caption.svg){ width="552" }
/// caption
Topbar icon with inventory toggle key changed to <kbd>I</kbd>
///

You can also bind the inventory toggle when using the [`ContextAction`][ContextAction] script. The following code sample binds the inventory toggle to the <kbd>I</kbd> key.

``` lua title="ContextAction" linenums="16" hl_lines="1"
ContextActionService:BindAction(ACTION_NAME, handleAction, false, Enum.KeyCode.I) -- (1)!
```

1.  Changed from backquote <kbd>\`</kbd> key `#!lua Enum.KeyCode.Backquote` to <kbd>I</kbd> key `#!lua Enum.KeyCode.I`

If you do not want any key to be bound to toggling the inventory, delete the line that binds the inventory toggle in whichever `TopbarIcon` or `ContextAction` script you use.

## Enabling Server Authority

If your experience uses [server authority], enable the [`ServerAuthority`][ServerAuthority] script under Purse so tools are equipped on the server. Scripts cannot read [`Workspace.AuthorityMode`][AuthorityMode], so Purse uses this script being enabled instead.

!!! warning

    Only enable the `ServerAuthority` script if `Workspace.AuthorityMode` is set to `Server`.

  [server authority]: https://create.roblox.com/docs/projects/server-authority
  [ServerAuthority]: https://github.com/ryanlua/purse/blob/main/src/ServerAuthority.server.luau
  [AuthorityMode]: https://create.roblox.com/docs/reference/engine/classes/Workspace#AuthorityMode
