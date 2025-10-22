<!DOCTYPE html>
<html>
<head>
    <title>Chat Sederhana</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Ruang Chat</h1>
    <ul id="messages"></ul>
    <form id="form" action="">
        <input id="input" placeholder="Ketik pesan..." autocomplete="off" />
        <button>Kirim</button>
    </form>
    <script src="/socket.io/socket.io.js"></script>
    <script>
        // Kode JavaScript untuk menghubungkan ke server
        const socket = io();
        const form = document.getElementById('form');
        const input = document.getElementById('input');
        const messages = document.getElementById('messages');

        // Ketika form dikirim (tombol Kirim ditekan)
        form.addEventListener('submit', (e) => {
            e.preventDefault(); // Mencegah halaman refresh
            if (input.value) {
                socket.emit('chat message', input.value); // Kirim pesan ke server
                input.value = ''; // Kosongkan kolom input
            }
        });

        // Dengarkan pesan yang datang dari server
        socket.on('chat message', (msg) => {
            const item = document.createElement('li');
            item.textContent = msg;
            messages.appendChild(item);
            window.scrollTo(0, document.body.scrollHeight); // Auto scroll ke bawah
        });
    </script>
</body>
</html>
      body { font-family: Arial, sans-serif; margin: 0; padding-bottom: 3rem; }
h1 { text-align: center; color: #333; }
#form { background: #333; padding: 10px; position: fixed; bottom: 0; left: 0; right: 0; display: flex; height: 3rem; box-sizing: border-box; }
#input { border: none; padding: 0 1rem; flex-grow: 1; border-radius: 2rem; margin: 0.25rem; }
#input:focus { outline: none; }
button { background: #007bff; color: white; border: none; padding: 0 1rem; margin: 0.25rem; border-radius: 2rem; cursor: pointer; }
button:focus { outline: none; }
#messages { list-style-type: none; margin: 0; padding: 0; }
#messages li { padding: 0.5rem 1rem; }
#messages li:nth-child(odd) { background: #efefef; }
  // Mengimpor library yang dibutuhkan
const express = require('express');
const http = require('http');
const { Server } = require("socket.io");

// Membuat aplikasi Express dan server HTTP
const app = express();
const server = http.createServer(app);
const io = new Server(server);

// Menyajikan file statis (index.html dan style.css) dari folder yang sama
app.use(express.static(__dirname));

// Logika ketika seorang pengguna terhubung ke server
io.on('connection', (socket) => {
    console.log('Seorang pengguna terhubung');

    // Mendengarkan event 'chat message' dari klien
    socket.on('chat message', (msg) => {
        console.log('Pesan diterima: ' + msg);
        // Mengirim (membroadcast) pesan ke SEMUA pengguna yang terhubung
        io.emit('chat message', msg);
    });

    // Logika ketika pengguna terputus
    socket.on('disconnect', () => {
        console.log('Pengguna terputus');
    });
});

// Menjalankan server pada port yang disediakan (untuk Vercel) atau port 3000 (untuk lokal)
const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
    console.log(`Server siap dan berjalan di port ${PORT}`);
});
