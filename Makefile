publish-%:
	fly -t seabird set-pipeline -p seabird-$*-publish -c ./build-and-publish.yml -v repo-name=seabird-$*
	fly -t seabird unpause-pipeline -p seabird-$*-publish

ci-%:
	fly -t seabird set-pipeline -p seabird-$* -c ./seabird-$*.yml
	fly -t seabird unpause-pipeline -p seabird-$*

ci: ci-stock-plugin
publish: publish-core publish-irc-backend publish-discord-backend publish-plugin-bundle publish-adventofcode-plugin publish-stock-plugin publish-url-plugin publish-github-plugin publish-webhook-receiver
