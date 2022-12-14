FROM public.ecr.aws/lambda/nodejs:16
COPY package*.json ./

RUN npm install

COPY app.js .
CMD ["app.handler"]
