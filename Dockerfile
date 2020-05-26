FROM buildkite/puppeteer
RUN apt install chromium
COPY . /web_to_pdf/
WORKDIR /web_to_pdf
RUN npm install --production
RUN pwd
RUN ls
RUN ls /web_to_pdf/node_modules/puppeteer/.local-chromium/linux-756035


ENTRYPOINT ["node", "/web_to_pdf/dist/index.js"]
