FROM atlassian/confluence:latest

# Download and install the atlassian-agent.jar
RUN apt-get update && apt-get install -y wget && \
    wget -O /opt/atlassian/confluence/atlassian-agent.jar \
    https://github.com/guywiththecrack/jira-crack/raw/refs/heads/master/atlassian-agent.jar && \
    apt-get remove -y wget && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

# Add agent to environment
RUN echo 'export CATALINA_OPTS="-javaagent:/opt/atlassian/confluence/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/confluence/bin/setenv.sh
