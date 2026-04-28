# Personlige aliaser og funksjoner
# Lastes fra ~/.zshrc via install.sh

# Gradle
alias gbuild='./gradlew build'
alias glint='./gradlew ktlintFormat'
alias grun='./gradlew bootRun'
alias gtest='./gradlew bootTestRun'

# Frontend
alias fbuild='npm run build'
alias flint='npm run lint:fix'
alias frun='npm run start'
alias ftoken='npm run generate:funkyToken'

# Historikk
alias histories='fc -l 0 | grep'
alias history='fc -l 100'

# Kubernetes
alias k=kubectl

# Homebrew – oppdater, oppgrader, rydd
alias brewup='brew update && brew upgrade && brew cleanup'
