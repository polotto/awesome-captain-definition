docker run -d \
        --restart=always \
        --name wekan \
        -e "MONGO_URL=mongodb://localhost/wekan" \
        -e "ROOT_URL=http://localhost/" \
        -e "PORT=3000" \
        -e "WITH_API=true" \
        -e "BROWSER_POLICY_ENABLED=true" \
        -e "TRUSTED_URL=''"\
        -p 80:3000 \
        mquandalle/wekan