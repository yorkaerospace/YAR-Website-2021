lastcommit := `git log -1 --pretty='%s'`

build-site:
    rm -rf deploy
    git clone git@github.com:yorkaerospace/YAR-Temp-Site.git deploy
    npm run build
    cp deploy/CNAME dist/CNAME
    cd deploy && git rm -r *
    cp -r dist/* deploy/
    cd deploy && git add --all && git commit -m "{{lastcommit}}"
    echo "Built and committed the site to '{{lastcommit}}'\nMake sure you test it before pushing!\n"

test-site: build-site
    http-server deploy

push-site:
    cd deploy && git push
    rm -rf deploy