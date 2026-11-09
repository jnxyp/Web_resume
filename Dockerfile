FROM nginx:1.30.6-alpine@sha256:47928bf67eb62a1863cb08d9ecb52d3e704304ba614eaee17884204677702951

RUN rm /usr/share/nginx/html/index.html /usr/share/nginx/html/50x.html

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY resume.html resume_cn.html resume.css resume.pdf /usr/share/nginx/html/
