# Container Commands

## Start Container
docker run --rm -it -v /Users/pdreeves/Code:/opt/code pdreeves/stats
docker run --rm -it -v /Users/pdreeves/Code:/opt/code stats

## Start container point to ThinkStats2 for notebook 
docker run -i -t -p 8888:8888  -v /Users/pdreeves/Code:/opt/code stats /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && /opt/conda/bin/jupyter notebook --allow-root --notebook-dir=/opt/code/ThinkStats2 --ip='*' --port=8888 --no-browser"

## Build image
docker image build . --file Dockerfile --tag stats

## Delete image
docker image rm stats