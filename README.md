# dotfiles-erlend

Mine personlige aliaser og småskript for utviklings-Mac-er.

Målet er å holde det **så enkelt som mulig**: én fil med aliaser, ett installerskript. Ingen rammeverk, ingen symlinks, ingen magi.

## Hva ligger her

- [`aliases.sh`](aliases.sh) – alle aliasene mine. Rediger denne for å legge til nye.
- [`install.sh`](install.sh) – legger til én `source`-linje i `~/.zshrc` som peker på `aliases.sh`.

## Installasjon

```bash
cd ~/dev   # eller et annet sted du vil ha repoet
git clone https://github.com/eodeg/dotfiles-erlend.git
cd dotfiles-erlend
./install.sh
source ~/.zshrc
```

Etter dette er aliasene tilgjengelige i alle nye terminalvinduer.

## Oppdatere

```bash
cd ~/dev/dotfiles-erlend
git pull
```

Siden `~/.zshrc` bare peker på `aliases.sh` i dette repoet, får du alle nye aliaser automatisk neste gang du åpner en terminal.

## Legge til et nytt alias

1. Rediger [`aliases.sh`](aliases.sh) og legg til linjen.
2. Commit og push.
3. `source ~/.zshrc` (eller åpne nytt terminalvindu) for å få det inn i gjeldende skall.

## Aliaser som finnes nå

| Alias | Kommando | Beskrivelse |
|-------|----------|-------------|
| `gbuild` | `./gradlew build` | Bygg Gradle-prosjekt |
| `glint`  | `./gradlew ktlintFormat`  | Kjør Gradle ktlint-formattering |
| `brewup` | `brew update && brew upgrade && brew cleanup` | Oppdater og rydd Homebrew |

## Avinstallere

Fjern blokken mellom `# >>> dotfiles-erlend >>>` og `# <<< dotfiles-erlend <<<` i `~/.zshrc`.
