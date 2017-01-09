# open-create-projects

With this script you will be able to open/create projects directly from your terminal at a high speed !

Opening existing projects
![](http://recordit.co/LDskdQ3q3t.gif)

Creating new projects
![](http://recordit.co/DHHZmdb0oB.gif)

## Configuration

1. Clone the repository inside your plugins directory in your ZSH_CUSTOM path, e.g. `$HOME/.ohmyzsh-custom/plugins/`

2. [Set your language project path and your language identifier inside the script](https://github.com/MarcosSegovia/open-create-projects/blob/master/open-create-projects.plugin.zsh#L1-L9)

3. Create an alias that matches the script following the language identifier, e.g.
`alias cdvo="open_create_projects php"`

4. Be sure you have created a command-line launcher with your jetbrains IDE. `Tools` -> `Create Command-line Launcher` -> set to default (e.g. /usr/local/bin/phpstorm)

Special credits to [Marc Cornellà](https://github.com/mcornella)
