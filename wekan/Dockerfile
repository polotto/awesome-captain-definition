FROM mquandalle/wekan

#---------------------------------------------------------------
# == ROOT_URL SETTING ==
# Change ROOT_URL to your real Wekan URL, for example:
#   http://example.com
#   http://example.com/wekan
#   http://192.168.1.100
#---------------------------------------------------------------
ENV ROOT_URL http://localhost
#---------------------------------------------------------------
# == PORT SETTING ==
# Not needed on Docker, but if you had installed from source,
#   you could also have setup Wekan Node.js port at localhost
#   with setting: PORT=3001
#   and have Nginx proxy to port 3001, see Wekan wiki.
# wekan is a node app then It can run in a port < 3000, the port need be >=3000
#---------------------------------------------------------------
ENV PORT 3000
#---------------------------------------------------------------
# == MONGO URL AND OPLOG SETTINGS ==
# https://github.com/wekan/wekan-mongodb/issues/2#issuecomment-378343587
# We've fixed our CPU usage problem today with an environment
# change around Wekan. I wasn't aware during implementation
# that if you're using more than 1 instance of Wekan
# (or any MeteorJS based tool) you're supposed to set
# MONGO_OPLOG_URL as an environment variable.
# Without setting it, Meteor will perform a pull-and-diff
# update of it's dataset. With it, Meteor will update from
# the OPLOG. See here
#   https://blog.meteor.com/tuning-meteor-mongo-livedata-for-scalability-13fe9deb8908
# After setting
# MONGO_OPLOG_URL=mongodb://<username>:<password>@<mongoDbURL>/local?authSource=admin&replicaSet=rsWekan
# the CPU usage for all Wekan instances dropped to an average
# of less than 10% with only occasional spikes to high usage
# (I guess when someone is doing a lot of work)
#---------------------------------------------------------------
ENV MONGO_URL mongodb://user:password@localhost/wekan
#---------------------------------------------------------------
# - MONGO_OPLOG_URL=mongodb://<username>:<password>@<mongoDbURL>/local?authSource=admin&replicaSet=rsWekan
#---------------------------------------------------------------
# == EMAIL SETTINGS ==
# Email settings are required in both MAIL_URL and Admin Panel,
#   see https://github.com/wekan/wekan/wiki/Troubleshooting-Mail
#   For SSL in email, change smtp:// to smtps://
# NOTE: Special characters need to be url-encoded in MAIL_URL.
#---------------------------------------------------------------
ENV MAIL_URL smtp://user:password@server:25
ENV MAIL_FROM Wekan Team <support@wekan.com>
#---------------------------------------------------------------
# == WEKAN API ==
# Wekan Export Board works when WITH_API='true'.
# If you disable Wekan API, Export Board does not work.
ENV WITH_API true
#---------------------------------------------------------------
## Optional: Integration with Matomo https://matomo.org that is installed to your server
## The address of the server where Matomo is hosted:
# - MATOMO_ADDRESS=https://example.com/matomo
## The value of the site ID given in Matomo server for Wekan
# - MATOMO_SITE_ID=123456789
## The option do not track which enables users to not be tracked by matomo"
# - MATOMO_DO_NOT_TRACK=false
## The option that allows matomo to retrieve the username:
# - MATOMO_WITH_USERNAME=true
#---------------------------------------------------------------
# Enable browser policy and allow one trusted URL that can have iframe that has Wekan embedded inside.
# Setting this to false is not recommended, it also disables all other browser policy protections
# and allows all iframing etc. See wekan/server/policy.js
ENV BROWSER_POLICY_ENABLED true
# When browser policy is enabled, HTML code at this Trusted URL can have iframe that embeds Wekan inside.
ENV TRUSTED_URL ''
#---------------------------------------------------------------

# Expose SMTP, HTML and MongoDB ports
EXPOSE 25 3000 27017