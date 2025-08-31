-- Create separate databases for Jira and Confluence
CREATE DATABASE jira;
CREATE DATABASE confluence;

-- Grant permissions
GRANT ALL PRIVILEGES ON DATABASE jira TO atlassian;
GRANT ALL PRIVILEGES ON DATABASE confluence TO atlassian;
