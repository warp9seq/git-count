# git-count

Track Git clone counts starting from April 2026. Tools created before that date won’t have any recorded stats prior to this collection period.

|Account | Tool | Clones |
|------|--------|--------|
|warp9seq| minimod | [![minimod](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/minimod.json)](https://github.com/warp9seq/minimod) |
|        | openfish | [![openfish](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/openfish.json)](https://github.com/warp9seq/openfish) |
|Psy-Fer| kuva | [![kuva](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/kuva.json)](https://github.com/Psy-Fer/kuva) |
|| buttery-eel | [![buttery-eel](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/buttery-eel.json)](https://github.com/Psy-Fer/buttery-eel) |
|| blue-crab | [![blue-crab](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/blue-crab.json)](https://github.com/Psy-Fer/blue-crab) |
|| bedpull | [![bedpull](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/bedpull.json)](https://github.com/Psy-Fer/bedpull) |
|| poa-consensus | [![poa-consensus](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/poa-consensus.json)](https://github.com/Psy-Fer/poa-consensus) |
|hasindu2008| f5c | [![f5c](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/f5c.json)](https://github.com/hasindu2008/f5c/) |
|| slow5lib | [![slow5lib](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/slow5lib.json)](https://github.com/hasindu2008/slow5lib) |
|| slow5tools | [![slow5tools](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/slow5tools.json)](https://github.com/hasindu2008/slow5tools) |
|| sigtk | [![sigtk](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/sigtk.json)](https://github.com/hasindu2008/sigtk/) |
|| squigulator | [![squigulator](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/squigulator.json)](https://github.com/hasindu2008/squigulator) |
|| cornetto | [![cornetto](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/cornetto.json)](https://github.com/hasindu2008/cornetto) |
|bonsonW| slow5curl | [![slow5curl](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/slow5curl.json)](https://github.com/BonsonW/slow5curl) |
|| slorado | [![slorado](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/warp9seq/git-count/refs/heads/main/sum/slorado.json)](https://github.com/BonsonW/slorado) |


## Adding a new tool

1. For a given account generate a readonly [personal access token](https://github.com/settings/personal-access-tokens). Select "Only Select repositories". Administration access "Read-only"
   <img width="532" height="496" alt="image" src="https://github.com/user-attachments/assets/da105a86-2603-4c06-ac18-caa44a240479" />
2. Then add that repo secret to [actions](https://github.com/warp9seq/git-count/settings/secrets/actions)
3. Add to .github/workflows
4. Update LIST in getcounts.sh
5. Manually trigger and see if all good and nothing is broken
