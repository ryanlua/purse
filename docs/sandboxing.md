[Script capabilities] are used to sandbox Purse and tools to ensure safety and prevent malicious code.

This is optional and disabled by default, but it can be enabled using the [`Sandboxed`][Sandboxed] property.

!!! warning

    By enabling script capabilities, all tools will be sandboxed. Make sure the [`Capabilities`][Capabilities] required by your tools are set on Purse or they will error.

  [Script capabilities]: https://create.roblox.com/docs/scripting/capabilities
  [Capabilities]: https://create.roblox.com/docs/scripting/capabilities#capabilities
  [Sandboxed]: https://create.roblox.com/docs/scripting/capabilities#sandboxed-container

Purse uses the following capabilities:

* **RunClientScript** - Run Purse on the client
* **RunServerScript** - Equip tools on the server with server authority
* **AccessOutsideWrite** - Access instances outside the container
* **AssetRead** - Check for latest version
* **AssetManagement** - Preload icon images
    * This capability does not allow read, create, or update operations on assets
* **AvatarAppearance** - Equip and unequip tools
* **AvatarBehavior** - Equip and unequip tools
* **Basic** - Run Purse
* **CreateInstances** - Create GUI instances
* **Input** - Binding for equipping slots and toggling inventory
* **Players** - Access player backpack
* **RemoteEvent** - Request tools from the server with server authority
* **UI** - Access player GUI
