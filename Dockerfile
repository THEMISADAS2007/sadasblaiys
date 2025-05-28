# Copy only necessary files first
COPY package.json package-lock.json ./

# Install TypeScript to support prepare script
RUN npm install typescript --save-dev

# Install dependencies
RUN npm install

# Install global packages
RUN npm install -g qrcode-terminal pm2

# Copy the rest of the code
COPY . .
