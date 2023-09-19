git clone https://github.com/norg-ai-llm/chatbot-V1.1.git
cd chatbot-V1.1
echo Comment out vercel in package.json
exit
sudo npm install pm2@latest -g
npm install uuid@latest
npm install --save sharp
npm install --save pm2

pm2 start app
pm2 ls
pm2 show 0

npm install
npm run build
npm start
