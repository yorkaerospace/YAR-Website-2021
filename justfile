lastcommit := `git log -1 --pretty='%s'`

build-site:
    rm -rf deploy
    git clone git@github.com:yorkaerospace/YAR-Temp-Site.git deploy
    cd deploy && git rm -r *
    npm run build
    cp -r dist/* deploy/
    cd deploy && git add --all && git commit -m "{{lastcommit}}"
    echo "Built and committed the site to '{{lastcommit}}'\nMake sure you test it before pushing!\n"

test-site: build-site
    http-server deploy

push-site:
    cd deploy && git push
    rm -rf deploy