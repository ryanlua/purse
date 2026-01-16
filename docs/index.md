# Purse

Purse is a fork of the [default Roblox backpack] decoupled from the CoreGui, allowing developers access to APIs that were previously unavailable and allowing for code modifications.

* Source code modification
* Developer APIs for controlling the inventory
* Not reliant on CoreGui permissions

![Screenshot of Purse with the inventory open](assets/screenshot.png)

What Purse is not is being a major improvement over the CoreGui backpack but a copy of it so that developers can iterate on it themselves. They are no additional features beyond what the CoreGui backpack provides.

  [default Roblox backpack]: https://github.com/Roblox/Core-Scripts/blob/master/CoreScriptsRoot/Modules/BackpackScript.lua

## Demo

You can play the [Purse Demo] on Roblox to try out Purse before using it. The place is uncopylocked so you can access an editable copy of the experience

  [Purse Demo]: https://www.roblox.com/games/106146309450120

## Notes

Because we can't access the topbar without CoreGui, we use [TopbarPlus]. This is one of the major differences in terms of functionality. TopbarPlus may not be as familiar to use on consoles and VR.

  [TopbarPlus]: https://devforum.roblox.com/t/topbarplus/1017485
