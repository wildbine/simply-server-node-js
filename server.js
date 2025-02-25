const http = require('http');

const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'text/html' });
  
    res.end(`
      <!DOCTYPE html>
      <html lang="ru">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Приветствие</title>
      </head>
      <body>
        <h1>Привет >:( </h1>
        <p>Cервер на Node.js.</p>
      </body>
      </html>
    `);
  });
  
  const PORT = 3000;
  
  server.listen(PORT, () => {
    console.log(`Сервер запущен на http://localhost:${PORT}`);
  });