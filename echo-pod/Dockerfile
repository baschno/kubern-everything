FROM nginx:alpine

COPY ./html /usr/share/nginx/html

COPY pod_name.sh /usr/local/bin/pod_name.sh

RUN chmod +x /usr/local/bin/pod_name.sh

ENTRYPOINT [ "/usr/local/bin/pod_name.sh" ]

EXPOSE 80

CMD ["nginx", "-g", "daemon_off;"]