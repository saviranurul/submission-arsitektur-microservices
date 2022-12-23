# Menggunakan base image node:14-alpine
FROM node:14-alpine

# Menentukan /app sebagai default working docker directory
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menambahkan environment variable NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Melakukan ekspos port 8080
EXPOSE 8080

# Ketika container sudah mulai berjalan, maka secara default akan menjalankan server dengan perintah npm run start
ENTRYPOINT [ "npm", "start" ]