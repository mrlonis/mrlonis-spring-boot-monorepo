#!/bin/sh
npm install -g newman
./gradlew clean build
./gradlew :api-genshin-impact:bootRun --args='--spring.profiles.active=local-h2' &
echo $! >genshin-impact.pid
sleep 5
newman run ./api-genshin-impact/newman/api-genshin-impact.postman_collection.json -e ./api-genshin-impact/newman/api-genshin-impact-local.postman_environment.json
if [ -f genshin-impact.pid ]; then
    kill $(cat genshin-impact.pid) || echo "Process already terminated"
    rm genshin-impact.pid
fi
./gradlew :api-honkai-star-rail:bootRun --args='--spring.profiles.active=local-h2' &
echo $! >honkai-star-rail.pid
sleep 5
newman run ./api-honkai-star-rail/newman/api-honkai-star-rail.postman_collection.json -e ./api-honkai-star-rail/newman/api-honkai-star-rail-local.postman_environment.json
if [ -f honkai-star-rail.pid ]; then
    kill $(cat honkai-star-rail.pid) || echo "Process already terminated"
    rm honkai-star-rail.pid
fi
