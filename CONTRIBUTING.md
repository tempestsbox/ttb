# Contributing to TTB: Reborn

## Folder Format
- Blocks: `block/<block>/`
- Items: `item/<item>/`
- Entities: `entity/<entity>/`
- World Gen: `world/`

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
- Any 'technical' entity (meaning the name will never be seen by the player, such as machines) should have its `CustomName` set as its major tag. For example: `ttb_tempests_crafter`
- All visible text (names, lore, actionbar, advancements) should use translation keys
    - `{"translate":"block.ttb.tempests_crafter"}`
    - `{"translate":"item.ttb.amethyst"}`
- Any custom entity (e.g. custom crafters, mobs & area effect clouds) should have the `ttb_entity` tag

## Updating a feature on the repo
If you've spotted a bug in TTB or have a performance improvement you wish to make, [create a fork of the GitLab repository](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html#creating-a-fork), along with a new branch, and make your changes. Once you have edited the files you want, create a merge request and leave a detailed note on why you have made your changes.
