# About

A simple dockerized service for using hubot with slack

# How
First build docker image using command `docker build -t slack-hubot-docker .`  
Then start a docker container using `bash start_slack_hubot.sh YOUR_SLACK_HUBOT_TOKEN`

# Scripting
Since `./scripts` is mounted onto the container, feel free to add more customized scripts there.  
For scripts pulled from a registry, you will need to utilize `docker exec` and modify `external-scripts` thereof.

# More
For getting a slack token and why use hubot with slack, look at [the offical document](https://slack.dev/hubot-slack/#running-hubot)

