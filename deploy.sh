BASE_DIR=`dirname $0`
cd $BASE_DIR
jekyll build
rsync -v --stats --progress --exclude=WEB-INF\
       	--exclude=META-INF\
       	--exclude deploy.sh\
       	--exclude Gemfile*\
       	-au ${BASE_DIR}/_site/ root@srv1.hubalek.net:/var/www/peceme-chleba.hubalek.net

