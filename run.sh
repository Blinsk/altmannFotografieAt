docker run --rm -it \
  -v "$PWD":/home/jekylluser/site \
  -w /home/jekylluser/site \
  -p 4000:4000 \
  jekyll-site

