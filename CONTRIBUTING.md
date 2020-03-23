# Contributing to TTB: Reborn

## Folder Format
- Blocks: `block/<block>/`
- Items: `item/<item>/`
- Entities: `entity/<entity>/`
- World Gen: `world/`
- Debug: `debug/`

## File Format
All function files should be headed by at least a 'called by' statement, for readability. For larger and more advanced files, this format should be followed:
```mcfunction
#function description
#@s - selector
#called by <function|function tag|advancement>
```

## Naming and Tagging Formatting
- NBT and entity tags should be prefixed with `ttb`
    - `stick{ttb:{my_fancy_stick:1b}}`
    - `@a[tag=ttb_epic_players]`
- Similarly, all files should be in the `ttb` namespace, such that they can be called by, for example, `ttb:function` or `ttb:advancement`
- Any 'technical' entity (meaning the name will never be seen by the player, such as machines) should have its `CustomName` set as its major tag. For example: `ttb_tempest_crafter`
- All visible text (names, lore, actionbar, advancements) should use translation keys
    - `{"translate":"block.ttb.tempest_crafter"}`
    - `{"translate":"item.ttb.amethyst"}`
- Any custom entity (e.g. custom crafters, mobs & area effect clouds) should have the `ttb_entity` tag

## Custom Item Loot Table Format
TTB adopts the format of using loot tables to register custom items. This means that they can be called upon from one source, registered at `ttb:items/<item>`.  
To clarify, `ttb:blocks/<block>` holds custom block loot tables, called by their `remove` or `drop` function. These, most often, call upon [loot table items](#Other-loot-tables).
### Accessing loot table items
You can access a loot table item through:

#### /loot
```mcfunction
loot spawn ~ ~ ~ loot ttb:items/<item>
loot give <entity> loot ttb:items/<item>
loot replace ... <slot> loot ttb:items/<item>
```

#### Other loot tables
```json
{
    "type": "minecraft:loot_table",
    "name": "ttb:items/<item>"
}
```

## Updating a Feature on the Repo
If you've spotted a bug in TTB or have a performance improvement you wish to make, [create a fork of the GitHub repository](https://help.github.com/en/github/getting-started-with-github/fork-a-repo), along with a new branch, and make your changes. Once you have edited the files you want, create a merge request and leave a detailed note on why you have made your changes.
