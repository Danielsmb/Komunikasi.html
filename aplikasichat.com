<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WD BESAR & GABUNG GAMBAR</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="icon" href="data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>💸</text></svg>">
<style>
/* Variabel warna global */
:root {
--gold-primary: #D4AF37;
--gold-dark: #B8860B;
--gold-light: #FFD700;
--gold-accent: #C5B358;
--platinum: #e5e4e2;
--bg-dark: #121212;
--bg-card: #1e1e1e;
--text-light: #f5f5f5;
--text-gray: #aaaaaa;
--border-dark: #333333;
--border-radius: 10px;
--shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
--transition: all 0.3s ease;
--success-color: #28a745;
--primary-green: #1e7a4c;
--primary-light: #3a9e7d;
--secondary-green: #3a9e7d;
--accent-yellow: #ffca28;
}

* {
box-sizing: border-box;
margin: 0;
padding: 0;
font-family: 'Poppins', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
background-color: var(--bg-dark);
color: var(--text-light);
min-height: 100vh;
padding: 20px;
line-height: 1.6;
background-image:
radial-gradient(circle at 5% 10%, rgba(212, 175, 55, 0.05) 0%, transparent 20%),
radial-gradient(circle at 95% 90%, rgba(197, 179, 88, 0.05) 0%, transparent 20%);
}

.app-container {
max-width: 1200px;
margin: 0 auto;
position: relative;
}

/* Header Utama */
.main-header {
text-align: center;
margin-bottom: 30px;
padding: 30px;
background: linear-gradient(135deg, #1e1e1e, #2a2a2a);
border-radius: var(--border-radius);
box-shadow: var(--shadow);
position: relative;
overflow: hidden;
border: 1px solid var(--border-dark);
}

.main-header::before {
content: '';
position: absolute;
top: 0;
left: 0;
right: 0;
height: 4px;
background: linear-gradient(90deg, var(--gold-primary), var(--gold-accent));
}

.app-logo {
display: flex;
align-items: center;
justify-content: center;
gap: 12px;
margin-bottom: 15px;
}

.app-logo-icon {
width: 60px;
height: 60px;
background: linear-gradient(135deg, var(--gold-primary), var(--gold-dark));
border-radius: 50%;
display: flex;
align-items: center;
justify-content: center;
color: var(--text-light);
font-size: 28px;
border: 1px solid var(--gold-accent);
animation: pulse 2s infinite;
}

.app-title {
font-size: 32px;
font-weight: 700;
color: var(--text-light);
margin-bottom: 5px;
text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

.app-title span {
background: linear-gradient(90deg, var(--gold-light), var(--gold-primary));
-webkit-background-clip: text;
-webkit-text-fill-color: transparent;
}

.app-subtitle {
color: var(--text-gray);
font-size: 16px;
margin-top: 10px;
max-width: 800px;
margin-left: auto;
margin-right: auto;
line-height: 1.6;
}

/* Tab Navigasi */
.tabs-container {
display: flex;
gap: 10px;
margin-bottom: 25px;
flex-wrap: wrap;
}

.tab-btn {
flex: 1;
min-width: 200px;
padding: 15px 20px;
background: linear-gradient(135deg, #252525, #2a2a2a);
border: 1px solid var(--border-dark);
border-radius: var(--border-radius);
color: var(--text-gray);
font-weight: 600;
font-size: 16px;
cursor: pointer;
transition: var(--transition);
display: flex;
align-items: center;
justify-content: center;
gap: 10px;
}

.tab-btn:hover {
background: linear-gradient(135deg, #2e2e2e, #222222);
color: var(--text-light);
}

.tab-btn.active {
background: linear-gradient(135deg, var(--gold-primary), var(--gold-dark));
color: #000;
border-color: var(--gold-accent);
}

.tab-btn i {
font-size: 20px;
}

/* Tab Content */
.tab-content {
display: none;
animation: fadeIn 0.5s ease;
}

.tab-content.active {
display: block;
}

/* Gaya untuk konten Analisis WD */
.input-section {
background: linear-gradient(135deg, #1e1e1e, #2a2a2a);
padding: 20px;
border-radius: var(--border-radius);
margin-bottom: 25px;
box-shadow: var(--shadow);
transition: var(--transition);
border: 1px solid var(--border-dark);
}

.section-title {
display: flex;
align-items: center;
gap: 10px;
margin-bottom: 15px;
color: var(--gold-primary);
font-size: 18px;
font-weight: 600;
}

.section-title i {
font-size: 18px;
color: var(--gold-light);
}

.data-input {
width: 100%;
min-height: 120px;
padding: 15px;
border: 1px solid var(--border-dark);
border-radius: var(--border-radius);
font-family: 'Poppins', sans-serif;
font-size: 14px;
resize: vertical;
background: #252525;
color: var(--text-light);
transition: var(--transition);
line-height: 1.5;
}

.data-input:focus {
outline: none;
border-color: var(--gold-primary);
}

.input-hint {
font-size: 13px;
color: var(--text-gray);
margin-top: 10px;
display: flex;
align-items: center;
gap: 8px;
}

.input-hint i {
color: var(--gold-accent);
font-size: 14px;
}

/* Filter Controls */
.filter-controls {
display: flex;
flex-wrap: wrap;
gap: 15px;
align-items: center;
margin-top: 15px;
padding-top: 15px;
border-top: 1px solid var(--border-dark);
}

.filter-group {
display: flex;
flex-direction: column;
gap: 5px;
}

.filter-label {
font-size: 14px;
color: var(--text-light);
font-weight: 500;
}

.filter-input {
background: #252525;
border: 1px solid var(--border-dark);
color: var(--text-light);
border-radius: 8px;
padding: 10px 15px;
font-family: 'Poppins', sans-serif;
font-size: 14px;
width: 170px;
transition: var(--transition);
}

.filter-input:focus {
outline: none;
border-color: var(--gold-primary);
}

/* Buttons */
.action-buttons {
display: flex;
gap: 12px;
margin-top: 15px;
}

.btn {
padding: 10px 20px;
border: none;
border-radius: var(--border-radius);
font-weight: 600;
cursor: pointer;
transition: var(--transition);
display: inline-flex;
align-items: center;
gap: 8px;
font-size: 14px;
}

.btn-secondary {
background: linear-gradient(135deg, #2a2a2a, #1e1e1e);
color: var(--gold-light);
border: 1px solid var(--border-dark);
}

.btn-secondary:hover {
background: linear-gradient(135deg, #2e2e2e, #222222);
transform: translateY(-2px);
}

.btn-primary {
background: linear-gradient(135deg, var(--gold-primary), var(--gold-dark));
color: #000;
}

.btn-primary:hover {
background: linear-gradient(135deg, var(--gold-light), var(--gold-accent));
transform: translateY(-2px);
}

/* Results */
.results-section {
display: none;
background: linear-gradient(135deg, #1e1e1e, #2a2a2a);
padding: 20px;
border-radius: var(--border-radius);
margin-top: 25px;
animation: fadeIn 0.5s ease;
position: relative;
border: 1px solid var(--border-dark);
box-shadow: var(--shadow);
}

@keyframes fadeIn {
from { opacity: 0; transform: translateY(10px); }
to { opacity: 1; transform: translateY(0); }
}

.summary-container {
display: grid;
grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
gap: 15px;
margin-bottom: 20px;
}

.summary-card {
background: linear-gradient(135deg, #252525, #2a2a2a);
padding: 15px;
border-radius: var(--border-radius);
display: flex;
align-items: center;
gap: 12px;
border-left: 3px solid var(--gold-primary);
transition: var(--transition);
border: 1px solid var(--border-dark);
}

.summary-icon {
width: 40px;
height: 40px;
background: rgba(212, 175, 55, 0.1);
border-radius: 8px;
display: flex;
align-items: center;
justify-content: center;
color: var(--gold-primary);
font-size: 16px;
border: 1px solid rgba(212, 175, 55, 0.3);
}

.summary-content {
display: flex;
flex-direction: column;
}

.summary-label {
font-size: 13px;
color: var(--text-gray);
margin-bottom: 3px;
}

.summary-value {
font-size: 18px;
font-weight: 700;
color: var(--gold-light);
}

/* Table */
.results-table {
width: 100%;
border-collapse: separate;
border-spacing: 0;
margin-top: 15px;
font-size: 14px;
border-radius: var(--border-radius);
overflow: hidden;
background: #252525;
border: 1px solid var(--border-dark);
}

.results-table th {
background: linear-gradient(135deg, var(--gold-primary), var(--gold-dark));
color: var(--text-light);
padding: 12px;
text-align: left;
font-weight: 600;
border-bottom: 1px solid rgba(255, 255, 255, 0.1);
font-size: 14px;
}

.results-table td {
padding: 12px;
border-bottom: 1px solid var(--border-dark);
vertical-align: middle;
background: #252525;
color: var(--text-light);
}

.results-table tr:last-child td {
border-bottom: none;
}

.results-table tr:nth-child(even) {
background-color: rgba(33, 33, 33, 0.5);
}

.results-table tr:hover td {
background-color: rgba(212, 175, 55, 0.05);
}

/* Table Cell Styles */
.timestamp-cell {
color: var(--text-gray);
font-size: 13px;
white-space: nowrap;
}

.user-id-cell {
font-weight: 500;
color: var(--text-light);
}

.masked-id-cell {
font-weight: 500;
color: var(--gold-light);
}

.amount-cell {
font-weight: 700;
color: var(--gold-primary);
font-size: 15px;
}

/* Action Buttons */
.action-cell {
display: flex;
gap: 8px;
}

.action-btn {
width: 32px;
height: 32px;
border-radius: 8px;
display: flex;
align-items: center;
justify-content: center;
background: rgba(212, 175, 55, 0.1);
color: var(--gold-primary);
cursor: pointer;
transition: var(--transition);
border: 1px solid rgba(212, 175, 55, 0.2);
}

.action-btn:hover {
background: var(--gold-primary);
color: var(--bg-dark);
}

/* Congratulations Section */
.congrats-container {
display: none;
background: linear-gradient(135deg, #1e1e1e, #2a2a2a);
padding: 25px;
border-radius: var(--border-radius);
margin-top: 25px;
position: relative;
border: 1px solid var(--border-dark);
box-shadow: var(--shadow);
animation: fadeIn 0.5s ease;
}

.congrats-header {
text-align: center;
margin-bottom: 20px;
padding-bottom: 15px;
border-bottom: 1px solid var(--border-dark);
}

.congrats-title {
font-size: 22px;
font-weight: 700;
color: var(--gold-primary);
margin-bottom: 10px;
}

.congrats-subtitle {
color: var(--text-gray);
font-size: 15px;
}

.congrats-message {
background: rgba(40, 167, 69, 0.1);
border: 1px solid rgba(40, 167, 69, 0.3);
border-radius: var(--border-radius);
padding: 20px;
margin: 15px 0;
font-size: 16px;
line-height: 1.7;
color: var(--text-light);
position: relative;
}

.congrats-message::before {
content: '"';
position: absolute;
top: 10px;
left: 15px;
font-size: 60px;
color: rgba(40, 167, 69, 0.2);
font-family: serif;
line-height: 1;
}

.congrats-footer {
font-size: 14px;
color: var(--text-gray);
margin-top: 15px;
font-style: italic;
}

.highlight {
color: var(--gold-primary);
font-weight: 600;
}

.congrats-actions {
display: flex;
justify-content: center;
gap: 12px;
margin-top: 20px;
}

.game-selector {
margin: 15px 0;
background: rgba(212, 175, 55, 0.1);
padding: 15px;
border-radius: var(--border-radius);
border: 1px solid var(--border-dark);
}

.game-selector label {
display: block;
margin-bottom: 8px;
color: var(--gold-light);
font-weight: 500;
}

.game-input {
width: 100%;
padding: 12px;
border-radius: 8px;
background: #252525;
border: 1px solid var(--border-dark);
color: var(--text-light);
font-family: 'Poppins', sans-serif;
font-size: 15px;
}

.game-input:focus {
outline: none;
border-color: var(--gold-primary);
}

.game-selector-row {
display: flex;
gap: 15px;
margin-bottom: 15px;
}

.game-selector-col {
flex: 1;
}

.provider-input {
width: 100%;
padding: 12px;
border-radius: 8px;
background: #252525;
border: 1px solid var(--border-dark);
color: var(--text-light);
font-family: 'Poppins', sans-serif;
font-size: 15px;
}

.provider-input:focus {
outline: none;
border-color: var(--gold-primary);
}

/* Gaya untuk konten Penggabung Gambar */
.panel {
background: linear-gradient(135deg, #1e1e1e, #2a2a2a);
backdrop-filter: blur(10px);
border-radius: 15px;
padding: 25px;
box-shadow: var(--shadow);
border: 1px solid var(--border-dark);
margin-bottom: 25px;
}

.panel-title {
font-size: 1.5rem;
margin-bottom: 20px;
padding-bottom: 10px;
border-bottom: 2px solid var(--primary-light);
display: flex;
align-items: center;
gap: 10px;
color: var(--secondary-green);
font-weight: 600;
}

.panel-title i {
color: var(--accent-yellow);
}

.url-input-section {
margin-bottom: 25px;
}

.url-input-header {
display: flex;
justify-content: space-between;
align-items: center;
margin-bottom: 15px;
}

.url-input-header h3 {
color: #e0ffe0;
font-weight: 600;
display: flex;
align-items: center;
gap: 10px;
}

.supported-services {
display: flex;
gap: 10px;
flex-wrap: wrap;
margin-top: 10px;
}

.service-badge {
background: rgba(30, 122, 76, 0.2);
border: 1px solid var(--primary-light);
border-radius: 20px;
padding: 5px 12px;
font-size: 0.85rem;
display: flex;
align-items: center;
gap: 5px;
color: #c0ffd0;
font-weight: 500;
}

.url-input-group {
display: flex;
margin-bottom: 15px;
}

.url-input-group input {
flex: 1;
padding: 14px 20px;
border: none;
border-radius: 10px 0 0 10px;
background: rgba(20, 36, 26, 0.7);
color: var(--text-light);
font-size: 1rem;
border: 1px solid var(--border-dark);
font-weight: 500;
}

.url-input-group input::placeholder {
color: rgba(200, 255, 220, 0.6);
}

.url-input-group input:focus {
outline: none;
border-color: var(--primary-light);
box-shadow: 0 0 0 2px rgba(58, 158, 125, 0.3);
}

.url-input-group button {
padding: 14px 25px;
background: var(--primary-green);
color: white;
border: none;
border-radius: 0 10px 10px 0;
cursor: pointer;
font-weight: bold;
transition: all 0.3s;
display: flex;
align-items: center;
gap: 8px;
border: 1px solid var(--border-dark);
border-left: none;
font-weight: 600;
}

.url-input-group button:hover {
background: var(--primary-light);
}

/* Upload Section - NEW */
.upload-section {
margin-bottom: 25px;
padding: 15px;
background: rgba(30, 46, 40, 0.3);
border-radius: 10px;
border: 1px dashed var(--border-dark);
}

.upload-header {
display: flex;
align-items: center;
gap: 10px;
margin-bottom: 15px;
color: #e0ffe0;
}

.upload-btn-wrapper {
position: relative;
overflow: hidden;
display: inline-block;
width: 100%;
}

.upload-btn {
padding: 10px 15px;
background: var(--primary-green);
color: white;
border: none;
border-radius: 8px;
cursor: pointer;
transition: all 0.3s;
display: flex;
align-items: center;
gap: 8px;
font-weight: 500;
width: 100%;
justify-content: center;
}

.upload-btn:hover {
background: var(--primary-light);
}

.upload-btn-wrapper input[type=file] {
position: absolute;
left: 0;
top: 0;
opacity: 0;
width: 100%;
height: 100%;
cursor: pointer;
}

.upload-hint {
font-size: 12px;
color: rgba(200, 255, 220, 0.7);
margin-top: 8px;
text-align: center;
}

.settings {
margin: 25px 0;
}

.setting-group {
margin-bottom: 20px;
}

.setting-group label {
display: block;
margin-bottom: 8px;
font-weight: 500;
color: #e0ffe0;
}

.setting-group select, .setting-group input {
width: 100%;
padding: 12px 15px;
border-radius: 8px;
background: rgba(20, 36, 26, 0.7);
color: var(--text-light);
border: 1px solid var(--border-dark);
font-weight: 500;
}

.setting-group select:focus, .setting-group input:focus {
outline: none;
border-color: var(--primary-light);
box-shadow: 0 0 0 2px rgba(58, 158, 125, 0.3);
}

.quality-control {
display: flex;
align-items: center;
gap: 15px;
margin-top: 10px;
}

.quality-value {
min-width: 40px;
text-align: center;
font-weight: bold;
color: var(--accent-yellow);
}

.action-buttons {
display: flex;
gap: 15px;
margin-top: 20px;
}

.action-btn-large {
flex: 1;
padding: 16px;
border: none;
border-radius: 10px;
font-size: 1.1rem;
font-weight: bold;
cursor: pointer;
transition: all 0.3s;
display: flex;
align-items: center;
justify-content: center;
gap: 10px;
font-weight: 600;
}

.merge-btn {
background: var(--primary-green);
color: white;
}

.merge-btn:hover {
background: var(--primary-light);
transform: translateY(-3px);
box-shadow: 0 5px 15px rgba(0, 0, 0, 0.4);
}

.reset-btn {
background: #ef5350;
color: white;
}

.reset-btn:hover {
background: #e53935;
transform: translateY(-3px);
box-shadow: 0 5px 15px rgba(0, 0, 0, 0.4);
}

.preview-container {
margin-top: 20px;
position: relative;
}

.counter {
margin-bottom: 15px;
font-size: 1.1rem;
background: rgba(30, 46, 40, 0.7);
padding: 10px 15px;
border-radius: 30px;
display: inline-flex;
align-items: center;
gap: 8px;
color: #c0ffd0;
font-weight: 500;
}

.image-previews {
display: grid;
grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
gap: 15px;
min-height: 150px;
}

.preview-item {
position: relative;
border-radius: 10px;
overflow: hidden;
box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
transition: all 0.3s;
aspect-ratio: 1/1;
border: 2px solid var(--border-dark);
}

.preview-item:hover {
transform: translateY(-5px);
box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
border-color: var(--primary-light);
}

.preview-item img {
width: 100%;
height: 100%;
object-fit: cover;
display: block;
}

.preview-item .remove-btn {
position: absolute;
top: 8px;
right: 8px;
background: rgba(239, 83, 80, 0.8);
color: white;
border: none;
border-radius: 50%;
width: 28px;
height: 28px;
cursor: pointer;
font-weight: bold;
display: flex;
align-items: center;
justify-content: center;
box-shadow: 0 2px 8px rgba(0, 0, 0, 0.4);
}

.result-container {
text-align: center;
margin-top: 30px;
min-height: 300px;
display: flex;
flex-direction: column;
align-items: center;
justify-content: center;
padding: 20px;
background: rgba(30, 46, 40, 0.7);
border-radius: 10px;
border: 2px dashed var(--border-dark);
}

#resultImage {
max-width: 100%;
max-height: 400px;
border-radius: 10px;
box-shadow: 0 8px 25px rgba(0, 0, 0, 0.5);
display: none;
border: 2px solid var(--border-dark);
cursor: pointer;
transition: transform 0.3s;
}

#resultImage:hover {
transform: scale(1.02);
box-shadow: 0 12px 30px rgba(0, 0, 0, 0.6);
}

.placeholder {
color: rgba(200, 255, 220, 0.7);
font-style: italic;
padding: 40px;
text-align: center;
font-weight: 500;
line-height: 1.8;
}

.link-container {
margin-top: 25px;
width: 100%;
background: rgba(30, 46, 40, 0.7);
border-radius: 10px;
padding: 20px;
display: none;
animation: fadeIn 0.5s ease;
}

.link-container h4 {
margin-bottom: 15px;
font-size: 1.2rem;
display: flex;
align-items: center;
gap: 10px;
color: var(--secondary-green);
font-weight: 600;
}

.image-link {
display: flex;
gap: 10px;
}

.image-link input {
flex: 1;
padding: 12px 15px;
border-radius: 8px;
border: none;
background: rgba(20, 36, 26, 0.7);
color: var(--text-light);
font-size: 0.95rem;
border: 1px solid var(--border-dark);
font-weight: 500;
}

.image-link button {
padding: 12px 20px;
background: var(--primary-green);
color: white;
border: none;
border-radius: 8px;
cursor: pointer;
transition: background 0.3s;
display: flex;
align-items: center;
gap: 8px;
border: 1px solid var(--border-dark);
font-weight: 600;
}

.image-link button:hover {
background: var(--primary-light);
}

.download-btn {
margin-top: 20px;
padding: 16px 30px;
background: linear-gradient(to right, var(--primary-green), var(--secondary-green));
color: white;
border: none;
border-radius: 10px;
font-size: 1.1rem;
font-weight: bold;
cursor: pointer;
transition: all 0.3s;
display: flex;
align-items: center;
gap: 10px;
display: none;
border: 1px solid var(--border-dark);
font-weight: 600;
}

.download-btn:hover {
transform: translateY(-3px);
box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
}

/* Fullscreen Editor Styles */
.fullscreen-editor {
display: none;
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background: #1a1a1a;
z-index: 3000;
overflow: hidden;
}

.fullscreen-editor.active {
display: flex;
flex-direction: column;
}

.editor-toolbar-fullscreen {
background: linear-gradient(135deg, #1e1e1e, #2a2a2a);
padding: 15px 20px;
display: flex;
flex-wrap: wrap;
gap: 15px;
align-items: center;
border-bottom: 1px solid var(--border-dark);
box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
z-index: 3001;
}

.tool-group {
display: flex;
gap: 10px;
align-items: center;
padding: 0 10px;
border-right: 1px solid var(--border-dark);
}

.tool-group:last-child {
border-right: none;
}

.tool-btn {
width: 40px;
height: 40px;
border-radius: 8px;
display: flex;
align-items: center;
justify-content: center;
background: rgba(30, 46, 40, 0.7);
color: var(--text-light);
cursor: pointer;
transition: var(--transition);
border: 1px solid var(--border-dark);
font-size: 16px;
}

.tool-btn:hover {
background: rgba(58, 158, 125, 0.3);
border-color: var(--primary-light);
}

.tool-btn.active {
background: var(--primary-green);
color: white;
border-color: var(--primary-light);
}

.tool-separator {
width: 1px;
height: 30px;
background: var(--border-dark);
}

.color-picker-wrapper {
position: relative;
display: flex;
align-items: center;
gap: 10px;
}

.color-picker {
width: 40px;
height: 40px;
border-radius: 8px;
border: 1px solid var(--border-dark);
cursor: pointer;
}

.slider-control {
display: flex;
align-items: center;
gap: 10px;
}

.slider-label {
font-size: 14px;
color: var(--text-light);
min-width: 80px;
}

.slider {
width: 120px;
height: 6px;
border-radius: 3px;
background: var(--border-dark);
outline: none;
-webkit-appearance: none;
}

.slider::-webkit-slider-thumb {
-webkit-appearance: none;
appearance: none;
width: 18px;
height: 18px;
border-radius: 50%;
background: var(--primary-green);
cursor: pointer;
}

.slider::-moz-range-thumb {
width: 18px;
height: 18px;
border-radius: 50%;
background: var(--primary-green);
cursor: pointer;
}

.slider-value {
min-width: 40px;
text-align: center;
font-size: 14px;
color: var(--text-light);
}

/* Brush size controls with +/- buttons */
.brush-size-control {
display: flex;
align-items: center;
gap: 8px;
}

.brush-size-btn {
width: 30px;
height: 30px;
border-radius: 6px;
display: flex;
align-items: center;
justify-content: center;
background: rgba(30, 46, 40, 0.7);
color: var(--text-light);
cursor: pointer;
transition: var(--transition);
border: 1px solid var(--border-dark);
font-size: 14px;
font-weight: bold;
}

.brush-size-btn:hover {
background: rgba(58, 158, 125, 0.3);
border-color: var(--primary-light);
}

.brush-size-slider {
width: 80px;
}

.brush-size-value {
min-width: 35px;
text-align: center;
font-size: 14px;
color: var(--text-light);
font-weight: 500;
}

.editor-canvas-container-fullscreen {
flex: 1;
display: flex;
justify-content: center;
align-items: center;
position: relative;
overflow: hidden;
background: #2a2a2a;
background-image:
linear-gradient(45deg, #333 25%, transparent 25%),
linear-gradient(-45deg, #333 25%, transparent 25%),
linear-gradient(45deg, transparent 75%, #333 75%),
linear-gradient(-45deg, transparent 75%, #333 75%);
background-size: 20px 20px;
background-position: 0 0, 0 10px, 10px -10px, -10px 0px;
}

#editorCanvas {
border: 2px solid var(--border-dark);
border-radius: 8px;
cursor: crosshair;
display: block;
box-shadow: 0 10px 40px rgba(0, 0, 0, 0.5);
background: white;
transform-origin: center center;
}

.editor-actions-fullscreen {
background: linear-gradient(135deg, #1e1e1e, #2a2a2a);
padding: 15px 20px;
display: flex;
gap: 15px;
justify-content: center;
border-top: 1px solid var(--border-dark);
box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.3);
}

.editor-info {
position: absolute;
top: 20px;
right: 20px;
background: rgba(0, 0, 0, 0.7);
color: white;
padding: 10px 15px;
border-radius: 8px;
font-size: 14px;
z-index: 3002;
display: flex;
gap: 20px;
}

.info-item {
display: flex;
align-items: center;
gap: 8px;
}

/* Keyboard Shortcuts Info */
.shortcuts-info {
position: absolute;
bottom: 20px;
left: 20px;
background: rgba(0, 0, 0, 0.7);
color: white;
padding: 10px 15px;
border-radius: 8px;
font-size: 12px;
z-index: 3002;
max-width: 250px;
}

.shortcuts-title {
font-weight: bold;
margin-bottom: 5px;
color: var(--gold-primary);
}

.shortcut-item {
display: flex;
justify-content: space-between;
margin-bottom: 3px;
}

.shortcut-key {
background: rgba(255, 255, 255, 0.2);
padding: 2px 5px;
border-radius: 3px;
font-family: monospace;
}

/* Custom Cursor */
.custom-cursor {
position: fixed;
pointer-events: none;
z-index: 9999;
border: 2px solid #000;
border-radius: 50%;
opacity: 0.5;
transition: width 0.1s, height 0.1s;
}

/* Toast */
.toast {
position: fixed;
bottom: 20px;
left: 50%;
transform: translateX(-50%);
background: linear-gradient(135deg, #1e1e1e, #2a2a2a);
color: var(--text-light);
padding: 12px 20px;
border-radius: var(--border-radius);
z-index: 1000;
opacity: 0;
transition: opacity 0.3s, transform 0.3s;
display: flex;
align-items: center;
gap: 10px;
font-weight: 500;
max-width: 90%;
pointer-events: none;
border: 1px solid var(--border-dark);
box-shadow: var(--shadow);
}

.toast.show {
opacity: 1;
transform: translateX(-50%) translateY(0);
pointer-events: auto;
}

.toast.hide {
opacity: 0;
transform: translateX(-50%) translateY(10px);
}

.toast-icon {
font-size: 18px;
color: var(--text-light);
}

.toast.success {
border-left: 4px solid #32CD32;
}

.toast.error {
border-left: 4px solid #FF4500;
}

.toast.info {
border-left: 4px solid var(--gold-primary);
}

/* Footer */
.app-footer {
text-align: center;
margin-top: 30px;
color: var(--text-gray);
font-size: 13px;
padding: 15px;
}

/* Loader */
.loader {
display: none;
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background: rgba(18, 18, 18, 0.9);
z-index: 9999;
display: flex;
flex-direction: column;
align-items: center;
justify-content: center;
gap: 15px;
}

.loader-content {
text-align: center;
}

.loader-spinner {
width: 50px;
height: 50px;
border: 4px solid rgba(212, 175, 55, 0.1);
border-radius: 50%;
border-top-color: var(--gold-primary);
animation: spin 1s ease-in-out infinite;
margin: 0 auto;
}

.loader-text {
margin-top: 10px;
color: var(--gold-primary);
font-size: 14px;
font-weight: 500;
}

@keyframes spin {
to { transform: rotate(360deg); }
}

@keyframes pulse {
0% { transform: scale(1); }
50% { transform: scale(1.05); }
100% { transform: scale(1); }
}

/* Lightbox Styles */
.lightbox {
display: none;
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: rgba(0, 0, 0, 0.95);
z-index: 2000;
overflow: auto;
text-align: center;
}

.lightbox-content {
margin: 5% auto;
max-width: 90%;
max-height: 85%;
display: block;
box-shadow: 0 0 40px rgba(0, 0, 0, 0.8);
border: 2px solid rgba(255, 255, 255, 0.1);
}

.close-btn {
position: absolute;
top: 20px;
right: 30px;
color: #f1f1f1;
font-size: 40px;
font-weight: bold;
transition: 0.3s;
cursor: pointer;
z-index: 2001;
}

.close-btn:hover {
color: #bbb;
text-decoration: none;
}

/* Text Input Modal */
.text-input-modal {
display: none;
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: rgba(0, 0, 0, 0.8);
z-index: 2000;
justify-content: center;
align-items: center;
}

.text-input-container {
background: linear-gradient(135deg, #1e1e1e, #2a2a2a);
border-radius: var(--border-radius);
padding: 25px;
width: 90%;
max-width: 500px;
border: 1px solid var(--border-dark);
box-shadow: var(--shadow);
}

.text-input-header {
display: flex;
justify-content: space-between;
align-items: center;
margin-bottom: 20px;
}

.text-input-title {
color: var(--text-light);
font-size: 18px;
font-weight: 600;
}

.text-input-close {
background: none;
border: none;
color: var(--text-gray);
font-size: 20px;
cursor: pointer;
}

.text-input-field {
width: 100%;
padding: 12px 15px;
border-radius: 8px;
background: rgba(20, 36, 26, 0.7);
color: var(--text-light);
border: 1px solid var(--border-dark);
font-family: 'Poppins', sans-serif;
font-size: 16px;
margin-bottom: 15px;
}

.text-input-field:focus {
outline: none;
border-color: var(--primary-light);
}

.text-input-options {
display: flex;
gap: 15px;
margin-bottom: 20px;
}

.text-input-option {
flex: 1;
}

.text-input-label {
display: block;
margin-bottom: 8px;
color: var(--text-light);
font-size: 14px;
}

.text-input-select {
width: 100%;
padding: 10px;
border-radius: 8px;
background: rgba(20, 36, 26, 0.7);
color: var(--text-light);
border: 1px solid var(--border-dark);
}

.text-input-actions {
display: flex;
gap: 15px;
justify-content: flex-end;
}

/* Responsive */
@media (max-width: 992px) {
.app-container {
padding: 15px;
}

.tabs-container {
flex-direction: column;
}

.tab-btn {
min-width: 100%;
}
}

@media (max-width: 768px) {
.main-header {
padding: 20px;
}

.app-title {
font-size: 26px;
}

.input-section, .results-section, .panel {
padding: 15px;
}

.filter-controls {
flex-direction: column;
align-items: flex-start;
}

.summary-container {
grid-template-columns: 1fr;
}

.results-table {
display: block;
overflow-x: auto;
}

.congrats-message {
font-size: 14px;
padding: 15px;
}

.game-selector-row {
flex-direction: column;
gap: 10px;
}

.url-input-group {
flex-direction: column;
}

.url-input-group input {
border-radius: 10px;
margin-bottom: 10px;
}

.url-input-group button {
border-radius: 10px;
width: 100%;
}

.action-buttons {
flex-direction: column;
}

.action-btn-large {
width: 100%;
}

.editor-toolbar-fullscreen {
justify-content: center;
}

.tool-group {
padding: 0 5px;
}

.slider {
width: 80px;
}
}

@media (max-width: 480px) {
.app-title {
font-size: 22px;
}

.app-subtitle {
font-size: 14px;
}

.btn {
width: 100%;
justify-content: center;
}

.congrats-actions {
flex-direction: column;
}

.image-previews {
grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
}

.tool-btn {
width: 35px;
height: 35px;
font-size: 14px;
}

.color-picker {
width: 35px;
height: 35px;
}

.slider-label {
min-width: 60px;
font-size: 12px;
}

.slider {
width: 60px;
}

.editor-info {
flex-direction: column;
gap: 10px;
font-size: 12px;
}
}
</style>
</head>
<body>
<div class="app-container">
<!-- Header Utama -->
<header class="main-header">
<div class="app-logo">
<div class="app-logo-icon">
<i class="fas fa-coins"></i>
</div>
<div>
<h1 class="app-title">WD BESAR & GABUNG GAMBAR</span></h1>
<p class="app-subtitle">Dua alat profesional dalam satu aplikasi: Analisis kemenangan besar dan penggabung gambar canggih</p>
</div>
</div>
</header>

<!-- Tab Navigasi -->
<div class="tabs-container">
<button class="tab-btn active" data-tab="wd-app">
<i class="fas fa-coins"></i> Analisis WD Besar
</button>
<button class="tab-btn" data-tab="image-app">
<i class="fas fa-image"></i> Penggabung Gambar
</button>
</div>

<!-- Tab: Analisis WD -->
<div id="wd-app" class="tab-content active">
<!-- Input Section -->
<section class="input-section">
<h3 class="section-title">
<i class="fas fa-database"></i>
INPUT DATA TRANSAKSI
</h3>

<textarea class="data-input" id="cyberData" placeholder="Tempel data transaksi di sini... [Timestamp] [Type] [UserID] [Amount]"></textarea>
<p class="input-hint">
<i class="fas fa-info-circle"></i> Data akan otomatis dianalisis saat ditempel. Format: [Timestamp] [Type] [UserID] [Amount]
</p>

<!-- Filter Controls -->
<div class="filter-controls">
<div class="filter-group">
<label class="filter-label">Minimal WD</label>
<input type="text" class="filter-input" id="cyberMinAmount" value="30.000.000" placeholder="Masukkan jumlah minimal">
</div>
</div>

<div class="action-buttons">
<button class="btn btn-secondary" onclick="clearCyberData()">
<i class="fas fa-sync-alt"></i>
RESET DATA
</button>
</div>
</section>

<!-- Results -->
<div id="cyberResults" class="results-section">
<div class="summary-container" id="cyberSummary">
<div class="summary-card">
<div class="summary-icon">
<i class="fas fa-list-ol"></i>
</div>
<div class="summary-content">
<div class="summary-label">TOTAL WD</div>
<div class="summary-value"><span id="cyberCount">0</span></div>
</div>
</div>

<div class="summary-card">
<div class="summary-icon">
<i class="fas fa-coins"></i>
</div>
<div class="summary-content">
<div class="summary-label">TOTAL JUMLAH</div>
<div class="summary-value"><span id="cyberTotal">Rp 0</span></div>
</div>
</div>

<div class="summary-card">
<div class="summary-icon">
<i class="fas fa-arrow-up"></i>
</div>
<div class="summary-content">
<div class="summary-label">WD TERBESAR</div>
<div class="summary-value"><span id="cyberMax">Rp 0</span></div>
</div>
</div>

<div class="summary-card">
<div class="summary-icon">
<i class="fas fa-filter"></i>
</div>
<div class="summary-content">
<div class="summary-label">FILTER MINIMAL</div>
<div class="summary-value"><span id="cyberFilter">Rp 30.000.000</span></div>
</div>
</div>
</div>

<table class="results-table" id="cyberTable">
<thead>
<tr>
<th>TIMESTAMP</th>
<th>USER ID</th>
<th>MASKED ID</th>
<th>AMOUNT</th>
<th>AKSI</th>
</tr>
</thead>
<tbody id="cyberResultsBody">
<!-- Results will be inserted here -->
</tbody>
</table>
</div>

<!-- Congratulations Section -->
<div id="cyberCongrats" class="congrats-container">
<div class="congrats-header">
<h3 class="congrats-title">
<i class="fas fa-trophy"></i> UCAPAN SELAMAT
</h3>
<p class="congrats-subtitle">Pesan untuk member yang mendapatkan kemenangan besar</p>
</div>

<!-- Game Selector -->
<div class="game-selector">
<div class="game-selector-row">
<div class="game-selector-col">
<label for="providerInput">Provider:</label>
<input type="text" class="provider-input" id="providerInput" placeholder="Masukkan provider" autocomplete="off">
</div>

<div class="game-selector-col">
<label for="gameName">Permainan:</label>
<input type="text" class="game-input" id="gameName" placeholder="Masukkan nama permainan" autocomplete="off">
</div>
</div>
</div>

<div class="congrats-message" id="congratsMessage">
Selamat kepada User ID : <span class="highlight" id="congratsUserId">ga*****2</span> telah berhasil mendapat kemenangan besar pada permainan <span class="highlight" id="providerNameText"></span> "<span class="highlight" id="gameNameText"></span>" sebesar <span class="highlight" id="congratsAmount">Rp.110,000,000</span>,-<br><br>

Di Linetogel Kepercayaan dan kepuasan member adalah PRIORITAS utama kami. Sudah terbukti dan terpercaya, semua kemenangan member 100% Dibayarkan tanpa alasan apapun. Tak perlu ragu, ribuan member sudah merasakan sendiri sensasi menang besar dan langsung cair tanpa drama. Gabung sekarang di Linetogel dan rasakan pengalaman bermain yang aman, seru, dan tentunya menguntungkan.
</div>

<p class="congrats-footer">
<i class="fas fa-info-circle"></i> Pesan ini dapat disalin dan dibagikan melalui media sosial atau grup komunitas
</p>

<div class="congrats-actions">
<button class="btn btn-secondary" onclick="document.getElementById('cyberCongrats').style.display = 'none'">
<i class="fas fa-times"></i>
TUTUP
</button>
<button class="btn btn-primary" onclick="copyCongratsMessage()">
<i class="fas fa-copy"></i>
SALIN PESAN
</button>
</div>
</div>
</div>

<!-- Tab: Penggabung Gambar -->
<div id="image-app" class="tab-content">
<div class="panel">
<h2 class="panel-title">
<i class="fas fa-cogs"></i> Input & Pengaturan
</h2>

<div class="url-input-section">
<div class="url-input-header">
<h3><i class="fas fa-link"></i> Masukkan URL Gambar</h3>
</div>

<div class="url-input-group">
<input type="text" id="imageUrl" placeholder="https://prnt.sc/... atau https://sleekshot.app/...">
<button id="addUrlBtn">
<i class="fas fa-plus"></i> Tambah
</button>
</div>

<div class="supported-services">
<span class="service-badge">
<i class="fas fa-check-circle"></i> prnt.sc
</span>
<span class="service-badge">
<i class="fas fa-check-circle"></i> sleekshot.app
</span>
<span class="service-badge">
<i class="fas fa-check-circle"></i> imghostr.com
</span>
<span class="service-badge">
<i class="fas fa-check-circle"></i> imgur.com
</span>
<span class="service-badge">
<i class="fas fa-check-circle"></i> gambar langsung
</span>
</div>
</div>

<!-- Upload Section - NEW -->
<div class="upload-section">
<div class="upload-header">
<i class="fas fa-upload"></i>
<h3>Unggah Gambar</h3>
</div>

<div class="upload-btn-wrapper">
<button class="upload-btn">
<i class="fas fa-cloud-upload-alt"></i> Pilih File Gambar
</button>
<input type="file" id="fileUpload" accept="image/*" multiple>
</div>

<p class="upload-hint">
<i class="fas fa-info-circle"></i> Maksimal 10 gambar (URL + Unggahan)
</p>
</div>

<div class="settings">
<h2 class="panel-title">
<i class="fas fa-sliders-h"></i> Pengaturan Gabungan
</h2>

<div class="setting-group">
<label for="layout">Tata Letak Gambar:</label>
<select id="layout">
<option value="horizontal">Horizontal (Sejajar)</option>
<option value="vertical">Vertikal (Bertumpuk)</option>
<option value="grid2">Grid 2 Kolom</option>
<option value="grid3">Grid 3 Kolom</option>
</select>
</div>

<div class="setting-group">
<label for="spacing">Jarak Antar Gambar:</label>
<select id="spacing">
<option value="0" selected>0px</option>
<option value="5">5px</option>
<option value="10">10px</option>
<option value="15">15px</option>
<option value="20">20px</option>
</select>
</div>

<div class="setting-group">
<label for="background">Latar Belakang:</label>
<select id="background">
<option value="transparent">Transparan</option>
<option value="white" selected>Putih</option>
<option value="black">Hitam</option>
</select>
</div>

<div class="setting-group">
<label>Kualitas Gambar:</label>
<div class="quality-control">
<input type="range" id="quality" min="50" max="100" value="100">
<span class="quality-value" id="qualityValue">90%</span>
</div>
</div>
</div>

<div class="action-buttons">
<button id="mergeBtn" class="action-btn-large merge-btn">
<i class="fas fa-object-group"></i> Gabungkan Gambar
</button>
<button id="resetBtn" class="action-btn-large reset-btn">
<i class="fas fa-trash-alt"></i> Reset
</button>
</div>
</div>

<div class="panel">
<h2 class="panel-title">
<i class="fas fa-images"></i> Preview & Hasil
</h2>

<div class="preview-container">
<div class="counter">
<i class="fas fa-layer-group"></i> Gambar Terpilih: <span id="imageCount">0</span>/10
</div>

<div class="image-previews" id="previewContainer">
<!-- Preview gambar akan muncul di sini -->
</div>
</div>

<div class="loader" id="loader" style="display: none;">
<div class="loader-content">
<div class="loader-spinner"></div>
<div class="loader-text">MEMPROSES GAMBAR...</div>
</div>
</div>

<div class="result-container" id="resultContainer">
<p class="placeholder">Hasil gabungan gambar akan muncul di sini<br>Klik pada gambar untuk memperbesar</p>
<img id="resultImage" alt="Hasil gabungan gambar">

<div class="link-container" id="linkContainer">
<h4><i class="fas fa-link"></i> Link Gambar Hasil Gabungan:</h4>
<div class="image-link">
<input type="text" id="imageLink" readonly>
<button id="copyLinkBtn">
<i class="fas fa-copy"></i> Salin
</button>
</div>
</div>

<button id="downloadBtn" class="download-btn">
<i class="fas fa-download"></i> Unduh Gambar
</button>

<button id="editBtn" class="download-btn" style="display:none; background: linear-gradient(to right, #4a00e0, #8e2de2);">
<i class="fas fa-edit"></i> Edit Gambar
</button>
</div>
</div>
</div>

<footer class="app-footer">
<p></p>
</footer>
</div>

<!-- Fullscreen Editor -->
<div class="fullscreen-editor" id="fullscreenEditor">
<div class="editor-toolbar-fullscreen">
<div class="tool-group">
<button class="tool-btn active" id="brushTool" title="Kuas">
<i class="fas fa-paint-brush"></i>
</button>
<button class="tool-btn" id="eraserTool" title="Penghapus">
<i class="fas fa-eraser"></i>
</button>
<button class="tool-btn" id="textTool" title="Teks">
<i class="fas fa-font"></i>
</button>
<button class="tool-btn" id="rectangleTool" title="Persegi">
<i class="far fa-square"></i>
</button>
<button class="tool-btn" id="circleTool" title="Lingkaran">
<i class="far fa-circle"></i>
</button>
<button class="tool-btn" id="lineTool" title="Garis">
<i class="fas fa-minus"></i>
</button>
</div>

<div class="tool-group">
<div class="color-picker-wrapper">
<label for="colorPicker" style="color: var(--text-light);">Warna:</label>
<input type="color" id="colorPicker" class="color-picker" value="#000000">
</div>
</div>

<div class="tool-group">
<div class="slider-control">
<span class="slider-label">Ukuran:</span>
<div class="brush-size-control">
<button class="brush-size-btn" id="brushSizeMinus" title="Kurangi ukuran">
<i class="fas fa-minus"></i>
</button>
<input type="range" id="brushSize" class="slider brush-size-slider" min="1" max="50" value="5">
<button class="brush-size-btn" id="brushSizePlus" title="Tambah ukuran">
<i class="fas fa-plus"></i>
</button>
</div>
<span class="slider-value brush-size-value" id="brushSizeValue">5</span>
</div>
</div>

<div class="tool-group">
<div class="slider-control">
<span class="slider-label">Opacity:</span>
<input type="range" id="brushOpacity" class="slider" min="0" max="100" value="100">
<span class="slider-value" id="brushOpacityValue">100%</span>
</div>
</div>

<div class="tool-group">
<button class="tool-btn" id="undoBtn" title="Undo">
<i class="fas fa-undo"></i>
</button>
<button class="tool-btn" id="redoBtn" title="Redo">
<i class="fas fa-redo"></i>
</button>
</div>
</div>

<div class="editor-canvas-container-fullscreen" id="canvasContainer">
<div class="editor-info">
<div class="info-item">
<i class="fas fa-mouse-pointer"></i>
<span id="cursorPos">X: 0, Y: 0</span>
</div>
<div class="info-item">
<i class="fas fa-expand"></i>
<span id="canvasSize">0 x 0</span>
</div>
<div class="info-item">
<i class="fas fa-search-plus"></i>
<span id="zoomLevel">100%</span>
</div>
</div>
<canvas id="editorCanvas"></canvas>

<!-- Keyboard Shortcuts Info -->
<div class="shortcuts-info">
<div class="shortcuts-title">Shortcut Keyboard:</div>
<div class="shortcut-item">
<span>Zoom In/Out:</span>
<span class="shortcut-key">Ctrl + Scroll</span>
</div>
<div class="shortcut-item">
<span>Ukuran Kursor:</span>
<span class="shortcut-key">Alt + Scroll</span>
</div>
<div class="shortcut-item">
<span>Undo:</span>
<span class="shortcut-key">Ctrl + Z</span>
</div>
<div class="shortcut-item">
<span>Redo:</span>
<span class="shortcut-key">Ctrl + Shift + Z</span>
</div>
<div class="shortcut-item">
<span>Simpan:</span>
<span class="shortcut-key">Ctrl + S</span>
</div>
<div class="shortcut-item">
<span>Keluar Editor:</span>
<span class="shortcut-key">Esc</span>
</div>
</div>
</div>

<div class="editor-actions-fullscreen">
<button id="saveBtn" class="action-btn-large merge-btn">
<i class="fas fa-save"></i> Simpan Gambar
</button>
<button id="zoomInBtn" class="action-btn-large merge-btn" style="background: linear-gradient(to right, #2196F3, #1976D2);">
<i class="fas fa-search-plus"></i> Zoom In
</button>
<button id="zoomOutBtn" class="action-btn-large merge-btn" style="background: linear-gradient(to right, #FF9800, #F57C00);">
<i class="fas fa-search-minus"></i> Zoom Out
</button>
<button id="resetZoomBtn" class="action-btn-large merge-btn" style="background: linear-gradient(to right, #9C27B0, #7B1FA2);">
<i class="fas fa-compress"></i> Reset Zoom
</button>
<button id="cancelEditBtn" class="action-btn-large reset-btn">
<i class="fas fa-times"></i> Keluar Editor
</button>
</div>
</div>

<!-- Toast -->
<div id="cyberToast" class="toast">
<i class="fas fa-check-circle toast-icon"></i>
<span id="cyberToastMessage">Sistem siap digunakan</span>
</div>

<!-- Lightbox untuk tampilan gambar besar -->
<div id="lightbox" class="lightbox">
<span class="close-btn">&times;</span>
<img class="lightbox-content" id="lightboxImg">
</div>

<!-- Text Input Modal -->
<div id="textModal" class="text-input-modal">
<div class="text-input-container">
<div class="text-input-header">
<h3 class="text-input-title">Tambah Teks</h3>
<button class="text-input-close" id="closeTextModal">
<i class="fas fa-times"></i>
</button>
</div>

<input type="text" id="textInput" class="text-input-field" placeholder="Masukkan teks...">

<div class="text-input-options">
<div class="text-input-option">
<label class="text-input-label">Font:</label>
<select id="fontSelect" class="text-input-select">
<option value="Arial">Arial</option>
<option value="Times New Roman">Times New Roman</option>
<option value="Courier New">Courier New</option>
<option value="Georgia">Georgia</option>
<option value="Verdana">Verdana</option>
<option value="Comic Sans MS">Comic Sans MS</option>
</select>
</div>

<div class="text-input-option">
<label class="text-input-label">Ukuran:</label>
<select id="fontSizeSelect" class="text-input-select">
<option value="12">12px</option>
<option value="16">16px</option>
<option value="20" selected>20px</option>
<option value="24">24px</option>
<option value="32">32px</option>
<option value="48">48px</option>
</select>
</div>
</div>

<div class="text-input-actions">
<button class="btn btn-secondary" id="cancelTextBtn">
<i class="fas fa-times"></i> Batal
</button>
<button class="btn btn-primary" id="addTextBtn">
<i class="fas fa-check"></i> Tambah
</button>
</div>
</div>
</div>

<script>
// Fungsi untuk mengubah tab
document.querySelectorAll('.tab-btn').forEach(button => {
  button.addEventListener('click', () => {
    // Hapus kelas active dari semua tab dan tombol
    document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
    document.querySelectorAll('.tab-content').forEach(content => content.classList.remove('active'));

    // Tambahkan kelas active ke tombol yang diklik
    button.classList.add('active');

    // Tampilkan konten tab yang sesuai
    const tabId = button.getAttribute('data-tab');
    document.getElementById(tabId).classList.add('active');
  });
});

// Format number with dots for thousands separator
function formatNumberWithDots(num) {
  return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

// Toast Notification
function showCyberToast(message, type = 'info') {
  const toast = document.getElementById('cyberToast');
  const toastIcon = toast.querySelector('.toast-icon');
  const toastMessage = document.getElementById('cyberToastMessage');

  toastMessage.textContent = message;

  // Set icon and color based on type
  toast.className = 'toast';

  switch(type) {
    case 'success':
      toast.classList.add('success');
      toastIcon.className = 'fas fa-check-circle toast-icon';
      break;
    case 'error':
      toast.classList.add('error');
      toastIcon.className = 'fas fa-exclamation-circle toast-icon';
      break;
    case 'warning':
      toast.classList.add('info');
      toastIcon.className = 'fas fa-exclamation-triangle toast-icon';
      break;
    default:
      toast.classList.add('info');
      toastIcon.className = 'fas fa-info-circle toast-icon';
  }

  toast.classList.remove('show', 'hide');
  void toast.offsetWidth; // Trigger reflow
  toast.classList.add('show');

  setTimeout(() => {
    toast.classList.remove('show');
    toast.classList.add('hide');
  }, 3000);
}

// ================ WD ANALYSIS FUNCTIONS ================ //
// Auto analyze when data is pasted
document.getElementById('cyberData').addEventListener('paste', function(e) {
  setTimeout(() => {
    analyzeCyberWD();
  }, 100);
});

// Format rupiah input
document.getElementById('cyberMinAmount').addEventListener('input', function(e) {
  // Get current cursor position
  const cursorPosition = e.target.selectionStart;

  // Format the value
  let value = e.target.value.replace(/[^\d]/g, '');

  if (value) {
    // Format as Indonesian currency (with dots)
    const formattedValue = formatNumberWithDots(parseInt(value));
    e.target.value = formattedValue;

    // Restore cursor position
    const newCursorPosition = cursorPosition + (e.target.value.length - formattedValue.length);
    e.target.setSelectionRange(newCursorPosition, newCursorPosition);
  }
});

// Main Cyber Analysis Function
function analyzeCyberWD() {
  const rawData = document.getElementById('cyberData').value.trim();
  if (!rawData) {
    showCyberToast('Tidak ada data untuk dianalisis!', 'error');
    document.getElementById('cyberResults').style.display = 'none';
    return;
  }

  // Get filter amount
  let minAmount = 30000000;
  try {
    const minAmountStr = document.getElementById('cyberMinAmount').value.replace(/[^0-9]/g, '');
    minAmount = parseInt(minAmountStr) || 30000000;
  } catch (e) {
    console.error('Error parsing min amount:', e);
  }

  // Update UI to show current filter
  document.getElementById('cyberFilter').textContent = 'Rp ' + minAmount.toLocaleString('id-ID').replace(/,/g, '.');

  // Simulate processing delay
  setTimeout(() => {
    try {
      const lines = rawData.split('\n');
      const largeWDs = [];
      let totalAmount = 0;
      let count = 0;
      let maxAmount = 0;

      for (const line of lines) {
        if (!line.trim()) continue;

        const parts = line.split(/\t|\s{2,}/).filter(part => part.trim() !== '');
        if (parts.length < 6) continue;

        if (parts[1] === 'Withdraw') {
          const amountStr = parts[4].replace(/\./g, '').replace('Rp', '').replace(/,/g, '.').trim();
          const amount = parseInt(amountStr);

          if (amount > minAmount) {
            const originalUserId = parts[2];
            const maskedUserId = cyberMaskID(originalUserId);

            largeWDs.push({
              dateTime: parts[0],
              originalUserId,
              maskedUserId,
              amount
            });

            totalAmount += amount;
            count++;

            if (amount > maxAmount) {
              maxAmount = amount;
            }
          }
        }
      }

      displayCyberResults(largeWDs, count, totalAmount, maxAmount);

      if (count > 0) {
        showCyberToast(`Ditemukan ${count} WD besar (>${cyberFormatCurrency(minAmount)})`, 'success');
      } else {
        showCyberToast(`Tidak ditemukan WD di atas ${cyberFormatCurrency(minAmount)}`, 'warning');
      }
    } catch (error) {
      console.error('Error analyzing data:', error);
      showCyberToast('Error saat menganalisis data!', 'error');
    }
  }, 800);
}

function cyberMaskID(userId) {
  if (!userId) return 'N/A';
  if (userId.length <= 3) return userId.charAt(0) + '***';
  const firstTwo = userId.substring(0, 2);
  const lastOne = userId.charAt(userId.length - 1);
  return firstTwo + '*'.repeat(Math.max(userId.length - 3, 1)) + lastOne;
}

function displayCyberResults(results, count, total, maxAmount) {
  const resultContainer = document.getElementById('cyberResults');
  const resultBody = document.getElementById('cyberResultsBody');
  const countElement = document.getElementById('cyberCount');
  const totalElement = document.getElementById('cyberTotal');
  const maxAmountElement = document.getElementById('cyberMax');

  resultBody.innerHTML = '';
  countElement.textContent = formatNumberWithDots(count);
  totalElement.textContent = cyberFormatCurrency(total);
  maxAmountElement.textContent = cyberFormatCurrency(maxAmount);

  if (results.length === 0) {
    resultContainer.style.display = 'none';
    return;
  }

  // Sort by amount descending
  results.sort((a, b) => b.amount - a.amount);

  results.forEach(tx => {
    const row = document.createElement('tr');
    row.innerHTML = `
      <td class="timestamp-cell">
        <span>${tx.dateTime}</span>
      </td>
      <td>
        <span class="user-id-cell">${tx.originalUserId}</span>
      </td>
      <td>
        <span class="masked-id-cell">${tx.maskedUserId}</span>
      </td>
      <td class="amount-cell">
        <span>${cyberFormatCurrency(tx.amount)}</span>
      </td>
      <td>
        <div class="action-cell">
          <button class="action-btn" onclick="cyberCopy('${tx.originalUserId}', 'ID User')" title="Salin ID Asli">
            <i class="fas fa-user"></i>
          </button>
          <button class="action-btn" onclick="cyberCopy('${tx.maskedUserId}', 'ID Disamarkan')" title="Salin ID Disamarkan">
            <i class="fas fa-user-secret"></i>
          </button>
          <button class="action-btn" onclick="cyberCopy('${tx.amount.toLocaleString('en-US')}', 'Jumlah')" title="Salin Jumlah">
            <i class="fas fa-copy"></i>
          </button>
          <button class="action-btn" onclick="generateCongratsMessage('${tx.originalUserId}', '${tx.maskedUserId}', ${tx.amount})" title="Buat Ucapan">
            <i class="fas fa-gift"></i>
          </button>
        </div>
      </td>
    `;
    resultBody.appendChild(row);
  });

  resultContainer.style.display = 'block';
}

function cyberCopy(text, label = 'Teks') {
  navigator.clipboard.writeText(text)
    .then(() => showCyberToast(`${label} disalin: ${text}`, 'success'))
    .catch(err => {
      console.error('Gagal menyalin: ', err);
      showCyberToast(`Gagal menyalin ${label.toLowerCase()}!`, 'error');
    });
}

function cyberFormatCurrency(amount) {
  return 'Rp ' + amount.toLocaleString('id-ID').replace(/,/g, '.');
}

function clearCyberData() {
  document.getElementById('cyberData').value = '';
  document.getElementById('cyberMinAmount').value = '30.000.000';
  document.getElementById('cyberResults').style.display = 'none';
  document.getElementById('cyberCongrats').style.display = 'none';
  showCyberToast('Data telah direset', 'info');
}

// Generate congratulation message
function generateCongratsMessage(originalUserId, maskedUserId, amount) {
  // Format amount with commas
  const formattedAmount = 'Rp.' + amount.toLocaleString('en-US') + ',-';

  // Update UI elements
  document.getElementById('congratsUserId').textContent = maskedUserId;
  document.getElementById('congratsAmount').textContent = formattedAmount;

  // Update provider and game name in message
  const provider = document.getElementById('providerInput').value;
  const gameName = document.getElementById('gameName').value;
  document.getElementById('providerNameText').textContent = provider;
  document.getElementById('gameNameText').textContent = gameName;

  // Show the congratulations section
  document.getElementById('cyberCongrats').style.display = 'block';

  // Scroll to the congratulations section
  document.getElementById('cyberCongrats').scrollIntoView({
    behavior: 'smooth'
  });

  showCyberToast(`Pesan ucapan untuk ${maskedUserId} siap!`, 'success');
}

// Copy congratulation message to clipboard
function copyCongratsMessage() {
  const userId = document.getElementById('congratsUserId').textContent;
  const amount = document.getElementById('congratsAmount').textContent;
  const provider = document.getElementById('providerInput').value;
  const gameName = document.getElementById('gameName').value;

  const message = `Selamat kepada User ID : ${userId} telah berhasil mendapat kemenangan besar pada permainan ${provider} "${gameName}" sebesar ${amount}\n\n` +
    `Di Linetogel Kepercayaan dan kepuasan member adalah PRIORITAS utama kami. Sudah terbukti dan terpercaya, semua kemenangan member 100% Dibayarkan tanpa alasan apapun. Tak perlu ragu, ribuan member sudah merasakan sendiri sensasi menang besar dan langsung cair tanpa drama. Gabung sekarang di Linetogel dan rasakan pengalaman bermain yang aman, seru, dan tentunya menguntungkan.`;

  navigator.clipboard.writeText(message)
    .then(() => showCyberToast('Pesan ucapan berhasil disalin!', 'success'))
    .catch(err => {
      console.error('Gagal menyalin pesan: ', err);
      showCyberToast('Gagal menyalin pesan!', 'error');
    });
}

// ================ PERBAIKAN FUNGSI EKSTRAKSI GAMBAR ================ //

// Fungsi untuk mengekstrak URL gambar sebenarnya dari berbagai layanan
async function extractImageUrl(url) {
  try {
    // Untuk layanan prnt.sc
    if (url.includes('prnt.sc')) {
      return await extractPrntScImage(url);
    }
    
    // Untuk layanan sleekshot.app
    if (url.includes('sleekshot.app')) {
      return await extractSleekShotImage(url);
    }
    
    // Untuk layanan imgbb.com atau imgur.com
    if (url.includes('imgbb.com') || url.includes('imgur.com')) {
      return await extractImgbbImgurImage(url);
    }
    
    // Untuk URL gambar langsung
    if (isDirectImageUrl(url)) {
      return url;
    }
    
    // Default: coba ekstrak dengan metode umum
    return await extractGenericImage(url);
  } catch (error) {
    console.error('Extraction error:', error);
    // Fallback: return URL asli
    return url;
  }
}

// Fungsi untuk mengekstrak gambar dari prnt.sc
async function extractPrntScImage(url) {
  try {
    // Coba beberapa endpoint proxy CORS
    const corsProxies = [
      'https://api.allorigins.win/raw?url=',
      'https://corsproxy.io/?',
      'https://cors-anywhere.herokuapp.com/'
    ];
    
    for (const proxy of corsProxies) {
      try {
        const proxyUrl = proxy + encodeURIComponent(url);
        const response = await fetchWithTimeout(proxyUrl, { timeout: 10000 });
        
        if (!response.ok) continue;
        
        const html = await response.text();
        
        // Metode 1: Cari meta property og:image
        const ogImageRegex = /<meta\s+property="og:image"\s+content="([^"]+)"/i;
        const ogMatch = ogImageRegex.exec(html);
        if (ogMatch && ogMatch[1]) {
          const imageUrl = ogMatch[1].replace(/&amp;/g, '&');
          if (await testImageLoad(imageUrl)) return imageUrl;
        }
        
        // Metode 2: Cari gambar dengan class screenshot-image
        const classRegex = /<img[^>]+class="[^"]*screenshot-image[^"]*"[^>]+src="([^">]+)"/i;
        const classMatch = classRegex.exec(html);
        if (classMatch && classMatch[1]) {
          const imageUrl = classMatch[1].startsWith('//') ? 
            'https:' + classMatch[1] : classMatch[1];
          if (await testImageLoad(imageUrl)) return imageUrl;
        }
        
        // Metode 3: Cari tag image dengan ID screenshot-image
        const idRegex = /<img[^>]+id="screenshot-image"[^>]+src="([^">]+)"/i;
        const idMatch = idRegex.exec(html);
        if (idMatch && idMatch[1]) {
          const imageUrl = idMatch[1].startsWith('//') ? 
            'https:' + idMatch[1] : idMatch[1];
          if (await testImageLoad(imageUrl)) return imageUrl;
        }
        
        // Metode 4: Cari semua tag img dan ambil yang paling mungkin
        const imgRegex = /<img[^>]+src="([^">]+)"/gi;
        let match;
        while ((match = imgRegex.exec(html)) !== null) {
          const imageUrl = match[1].startsWith('//') ? 
            'https:' + match[1] : match[1];
          if (imageUrl.includes('png') || imageUrl.includes('jpg') || 
              imageUrl.includes('jpeg') || imageUrl.includes('webp')) {
            if (await testImageLoad(imageUrl)) return imageUrl;
          }
        }
      } catch (e) {
        console.log(`Proxy ${proxy} gagal, mencoba proxy berikutnya...`);
        continue;
      }
    }
    
    throw new Error('Tidak dapat mengekstrak gambar dari prnt.sc');
  } catch (error) {
    console.error('Error extracting from prnt.sc:', error);
    throw error;
  }
}

// Fungsi untuk mengekstrak gambar dari sleekshot.app
async function extractSleekShotImage(url) {
  try {
    // Coba akses langsung dengan proxy
    const corsProxies = [
      'https://api.allorigins.win/raw?url=',
      'https://corsproxy.io/?',
      'https://cors-anywhere.herokuapp.com/'
    ];
    
    for (const proxy of corsProxies) {
      try {
        const proxyUrl = proxy + encodeURIComponent(url);
        const response = await fetchWithTimeout(proxyUrl, { timeout: 10000 });
        
        if (!response.ok) continue;
        
        const html = await response.text();
        
        // Cari URL gambar dalam HTML
        const imageRegex = /<img[^>]+src="([^">]+)"/i;
        const imageMatch = imageRegex.exec(html);
        if (imageMatch && imageMatch[1]) {
          let imageUrl = imageMatch[1];
          if (imageUrl.startsWith('//')) {
            imageUrl = 'https:' + imageUrl;
          }
          if (imageUrl.startsWith('/')) {
            const urlObj = new URL(url);
            imageUrl = urlObj.origin + imageUrl;
          }
          if (await testImageLoad(imageUrl)) return imageUrl;
        }
      } catch (e) {
        console.log(`Proxy ${proxy} gagal untuk sleekshot, mencoba berikutnya...`);
        continue;
      }
    }
    
    throw new Error('Tidak dapat mengekstrak gambar dari sleekshot.app');
  } catch (error) {
    console.error('Error extracting from sleekshot:', error);
    throw error;
  }
}

// Fungsi untuk mengekstrak gambar dari imgbb/imgur
async function extractImgbbImgurImage(url) {
  try {
    // Coba akses langsung dengan proxy
    const corsProxies = [
      'https://api.allorigins.win/raw?url=',
      'https://corsproxy.io/?',
      'https://cors-anywhere.herokuapp.com/'
    ];
    
    for (const proxy of corsProxies) {
      try {
        const proxyUrl = proxy + encodeURIComponent(url);
        const response = await fetchWithTimeout(proxyUrl, { timeout: 10000 });
        
        if (!response.ok) continue;
        
        const html = await response.text();
        
        // Cari meta og:image
        const ogImageRegex = /<meta\s+property="og:image"\s+content="([^"]+)"/i;
        const ogMatch = ogImageRegex.exec(html);
        if (ogMatch && ogMatch[1]) {
          const imageUrl = ogMatch[1].replace(/&amp;/g, '&');
          if (await testImageLoad(imageUrl)) return imageUrl;
        }
        
        // Cari tag image
        const imageRegex = /<img[^>]+src="([^">]+)"/i;
        const imageMatch = imageRegex.exec(html);
        if (imageMatch && imageMatch[1]) {
          let imageUrl = imageMatch[1];
          if (imageUrl.startsWith('//')) {
            imageUrl = 'https:' + imageUrl;
          }
          if (await testImageLoad(imageUrl)) return imageUrl;
        }
      } catch (e) {
        console.log(`Proxy ${proxy} gagal untuk imgbb/imgur, mencoba berikutnya...`);
        continue;
      }
    }
    
    throw new Error('Tidak dapat mengekstrak gambar dari imgbb/imgur');
  } catch (error) {
    console.error('Error extracting from imgbb/imgur:', error);
    throw error;
  }
}

// Fungsi untuk ekstraksi gambar generik
async function extractGenericImage(url) {
  try {
    // Coba akses langsung dengan proxy
    const corsProxies = [
      'https://api.allorigins.win/raw?url=',
      'https://corsproxy.io/?',
      'https://cors-anywhere.herokuapp.com/'
    ];
    
    for (const proxy of corsProxies) {
      try {
        const proxyUrl = proxy + encodeURIComponent(url);
        const response = await fetchWithTimeout(proxyUrl, { timeout: 10000 });
        
        if (!response.ok) continue;
        
        const html = await response.text();
        
        // Cari semua kemungkinan gambar
        const imageRegex = /<img[^>]+src="([^">]+)"/gi;
        let match;
        const imageUrls = [];
        
        while ((match = imageRegex.exec(html)) !== null) {
          let imageUrl = match[1];
          if (imageUrl.startsWith('//')) {
            imageUrl = 'https:' + imageUrl;
          }
          if (imageUrl.startsWith('/')) {
            const urlObj = new URL(url);
            imageUrl = urlObj.origin + imageUrl;
          }
          imageUrls.push(imageUrl);
        }
        
        // Coba setiap URL gambar yang ditemukan
        for (const imageUrl of imageUrls) {
          if (await testImageLoad(imageUrl)) return imageUrl;
        }
      } catch (e) {
        console.log(`Proxy ${proxy} gagal untuk URL generik, mencoba berikutnya...`);
        continue;
      }
    }
    
    throw new Error('Tidak dapat mengekstrak gambar dari URL');
  } catch (error) {
    console.error('Error extracting generic image:', error);
    throw error;
  }
}

// Fungsi untuk mengecek apakah URL adalah gambar langsung
function isDirectImageUrl(url) {
  const imageExtensions = ['.png', '.jpg', '.jpeg', '.gif', '.bmp', '.webp', '.svg'];
  return imageExtensions.some(ext => url.toLowerCase().includes(ext));
}

// Fungsi untuk menguji apakah gambar dapat dimuat
function testImageLoad(url) {
  return new Promise((resolve) => {
    const img = new Image();
    img.onload = () => resolve(true);
    img.onerror = () => resolve(false);
    img.src = url;
    
    // Timeout setelah 10 detik
    setTimeout(() => resolve(false), 10000);
  });
}

// Fungsi fetch dengan timeout
function fetchWithTimeout(url, options = {}) {
  const { timeout = 10000 } = options;
  
  return new Promise((resolve, reject) => {
    const timer = setTimeout(() => {
      reject(new Error(`Fetch timeout setelah ${timeout}ms`));
    }, timeout);
    
    fetch(url)
      .then(response => {
        clearTimeout(timer);
        resolve(response);
      })
      .catch(err => {
        clearTimeout(timer);
        reject(err);
      });
  });
}

// ================ PERBAIKAN FUNGSI ADD IMAGE FROM URL ================ //

// Fungsi untuk menambahkan gambar dari URL
async function addImageFromUrl() {
  const url = imageUrl.value.trim();
  if (!url) {
    showCyberToast('Masukkan URL gambar!', 'error');
    return;
  }

  if (images.length >= 10) {
    showCyberToast('Maksimal 10 gambar!', 'warning');
    return;
  }

  // Tampilkan loader
  loader.style.display = 'block';

  try {
    // Validasi URL
    if (!isValidUrl(url)) {
      throw new Error('URL tidak valid');
    }

    // Ekstrak URL gambar sebenarnya
    const directImageUrl = await extractImageUrl(url);
    
    if (!directImageUrl) {
      throw new Error('Tidak dapat mengekstrak URL gambar');
    }

    // Load gambar dengan timeout
    const img = await loadImageWithTimeout(directImageUrl, 15000);
    
    // Buat canvas untuk gambar
    const canvas = document.createElement('canvas');
    const ctx = canvas.getContext('2d');
    canvas.width = img.width;
    canvas.height = img.height;
    ctx.drawImage(img, 0, 0);

    const imageData = {
      src: canvas.toDataURL('image/png'),
      name: 'url-image',
      type: 'url',
      originalUrl: url
    };

    images.push(imageData);
    updatePreviews();
    imageUrl.value = '';
    showCyberToast('Gambar berhasil ditambahkan!', 'success');
  } catch (error) {
    console.error('Error:', error);
    
    // Berikan pesan error yang lebih spesifik
    let errorMessage = 'Gagal memuat gambar. ';
    
    if (error.message.includes('timeout')) {
      errorMessage += 'Timeout saat memuat gambar. Coba lagi.';
    } else if (error.message.includes('Tidak dapat mengekstrak')) {
      errorMessage += 'Tidak dapat mengekstrak gambar dari URL tersebut. Pastikan URL benar.';
    } else if (error.message.includes('URL tidak valid')) {
      errorMessage += 'Format URL tidak valid.';
    } else if (error.message.includes('CORS')) {
      errorMessage += 'Masalah CORS. Gunakan URL gambar langsung atau layanan yang mendukung CORS.';
    } else {
      errorMessage += 'Pastikan URL benar dan gambar dapat diakses.';
    }
    
    showCyberToast(errorMessage, 'error');
  } finally {
    // Sembunyikan loader
    loader.style.display = 'none';
  }
}

// Fungsi untuk memuat gambar dengan timeout
function loadImageWithTimeout(src, timeout) {
  return new Promise((resolve, reject) => {
    const img = new Image();
    img.crossOrigin = 'Anonymous';
    
    const timer = setTimeout(() => {
      img.onload = null;
      img.onerror = null;
      reject(new Error(`Timeout loading image setelah ${timeout}ms`));
    }, timeout);
    
    img.onload = () => {
      clearTimeout(timer);
      resolve(img);
    };
    
    img.onerror = (err) => {
      clearTimeout(timer);
      reject(new Error('Gagal memuat gambar: ' + err));
    };
    
    img.src = src;
    
    // Jika gambar sudah di-cache, mungkin onload tidak terpanggil
    if (img.complete) {
      clearTimeout(timer);
      resolve(img);
    }
  });
}

// Fungsi untuk memvalidasi URL
function isValidUrl(string) {
  try {
    new URL(string);
    return true;
  } catch (_) {
    return false;
  }
}

// ================ IMAGE MERGER FUNCTIONS ================ //
// Elemen DOM
const imageUrl = document.getElementById('imageUrl');
const addUrlBtn = document.getElementById('addUrlBtn');
const previewContainer = document.getElementById('previewContainer');
const imageCount = document.getElementById('imageCount');
const mergeBtn = document.getElementById('mergeBtn');
const downloadBtn = document.getElementById('downloadBtn');
const editBtn = document.getElementById('editBtn');
const resetBtn = document.getElementById('resetBtn');
const layoutSelect = document.getElementById('layout');
const spacingSelect = document.getElementById('spacing');
const backgroundSelect = document.getElementById('background');
const qualitySlider = document.getElementById('quality');
const qualityValue = document.getElementById('qualityValue');
const resultImage = document.getElementById('resultImage');
const resultContainer = document.getElementById('resultContainer');
const linkContainer = document.getElementById('linkContainer');
const imageLink = document.getElementById('imageLink');
const copyLinkBtn = document.getElementById('copyLinkBtn');
const loader = document.getElementById('loader');
const lightbox = document.getElementById('lightbox');
const lightboxImg = document.getElementById('lightboxImg');
const closeBtn = document.querySelector('.close-btn');
const fileUpload = document.getElementById('fileUpload');

// Fullscreen Editor Elements
const fullscreenEditor = document.getElementById('fullscreenEditor');
const editorCanvas = document.getElementById('editorCanvas');
const editorCtx = editorCanvas.getContext('2d');
const canvasContainer = document.getElementById('canvasContainer');
const brushTool = document.getElementById('brushTool');
const eraserTool = document.getElementById('eraserTool');
const textTool = document.getElementById('textTool');
const rectangleTool = document.getElementById('rectangleTool');
const circleTool = document.getElementById('circleTool');
const lineTool = document.getElementById('lineTool');
const colorPicker = document.getElementById('colorPicker');
const brushSize = document.getElementById('brushSize');
const brushSizeValue = document.getElementById('brushSizeValue');
const brushSizeMinus = document.getElementById('brushSizeMinus');
const brushSizePlus = document.getElementById('brushSizePlus');
const brushOpacity = document.getElementById('brushOpacity');
const brushOpacityValue = document.getElementById('brushOpacityValue');
const undoBtn = document.getElementById('undoBtn');
const redoBtn = document.getElementById('redoBtn');
const saveBtn = document.getElementById('saveBtn');
const cancelEditBtn = document.getElementById('cancelEditBtn');
const zoomInBtn = document.getElementById('zoomInBtn');
const zoomOutBtn = document.getElementById('zoomOutBtn');
const resetZoomBtn = document.getElementById('resetZoomBtn');
const cursorPos = document.getElementById('cursorPos');
const canvasSize = document.getElementById('canvasSize');
const zoomLevel = document.getElementById('zoomLevel');

// Text Modal Elements
const textModal = document.getElementById('textModal');
const textInput = document.getElementById('textInput');
const fontSelect = document.getElementById('fontSelect');
const fontSizeSelect = document.getElementById('fontSizeSelect');
const closeTextModal = document.getElementById('closeTextModal');
const cancelTextBtn = document.getElementById('cancelTextBtn');
const addTextBtn = document.getElementById('addTextBtn');

// Array untuk menyimpan gambar
let images = [];
let mergedImageData = null;

// Editor variables
let isDrawing = false;
let currentTool = 'brush';
let startX, startY;
let history = [];
let historyStep = -1;
let currentZoom = 1;
let canvasOffsetX = 0;
let canvasOffsetY = 0;
let isPanning = false;
let panStartX, panStartY;

// Inisialisasi kualitas
qualityValue.textContent = `${qualitySlider.value}%`;

// Event listeners
addUrlBtn.addEventListener('click', addImageFromUrl);

imageUrl.addEventListener('keypress', (e) => {
  if (e.key === 'Enter') addImageFromUrl();
});

mergeBtn.addEventListener('click', mergeImages);
downloadBtn.addEventListener('click', downloadImage);
editBtn.addEventListener('click', openFullscreenEditor);
resetBtn.addEventListener('click', resetAll);
copyLinkBtn.addEventListener('click', copyImageLink);

qualitySlider.addEventListener('input', () => {
  qualityValue.textContent = `${qualitySlider.value}%`;
});

// Event listener untuk upload file
fileUpload.addEventListener('change', handleFileUpload);

// Event listener untuk lightbox
resultImage.addEventListener('click', () => {
  if (mergedImageData) {
    lightboxImg.src = mergedImageData;
    lightbox.style.display = 'block';
  }
});

closeBtn.addEventListener('click', () => {
  lightbox.style.display = 'none';
});

window.addEventListener('click', (e) => {
  if (e.target === lightbox) {
    lightbox.style.display = 'none';
  }
});

// Fullscreen Editor event listeners
brushTool.addEventListener('click', () => selectTool('brush'));
eraserTool.addEventListener('click', () => selectTool('eraser'));
textTool.addEventListener('click', () => selectTool('text'));
rectangleTool.addEventListener('click', () => selectTool('rectangle'));
circleTool.addEventListener('click', () => selectTool('circle'));
lineTool.addEventListener('click', () => selectTool('line'));

// Brush size controls
brushSize.addEventListener('input', () => {
  brushSizeValue.textContent = brushSize.value;
  updateCursorPreview();
});

brushSizeMinus.addEventListener('click', () => {
  const newSize = Math.max(1, parseInt(brushSize.value) - 1);
  brushSize.value = newSize;
  brushSizeValue.textContent = newSize;
  updateCursorPreview();
});

brushSizePlus.addEventListener('click', () => {
  const newSize = Math.min(50, parseInt(brushSize.value) + 1);
  brushSize.value = newSize;
  brushSizeValue.textContent = newSize;
  updateCursorPreview();
});

brushOpacity.addEventListener('input', () => {
  brushOpacityValue.textContent = `${brushOpacity.value}%`;
});

undoBtn.addEventListener('click', undo);
redoBtn.addEventListener('click', redo);
saveBtn.addEventListener('click', saveEditedImage);
cancelEditBtn.addEventListener('click', closeFullscreenEditor);
zoomInBtn.addEventListener('click', () => setZoom(currentZoom * 1.2));
zoomOutBtn.addEventListener('click', () => setZoom(currentZoom / 1.2));
resetZoomBtn.addEventListener('click', () => setZoom(1));

// Canvas event listeners
editorCanvas.addEventListener('mousedown', startDrawing);
editorCanvas.addEventListener('mousemove', draw);
editorCanvas.addEventListener('mouseup', stopDrawing);
editorCanvas.addEventListener('mouseout', stopDrawing);
editorCanvas.addEventListener('wheel', handleWheel);
editorCanvas.addEventListener('contextmenu', (e) => e.preventDefault());

// Touch events for mobile
editorCanvas.addEventListener('touchstart', (e) => {
  e.preventDefault();
  const touch = e.touches[0];
  const mouseEvent = new MouseEvent('mousedown', {
    clientX: touch.clientX,
    clientY: touch.clientY,
    button: 0
  });
  editorCanvas.dispatchEvent(mouseEvent);
});

editorCanvas.addEventListener('touchmove', (e) => {
  e.preventDefault();
  const touch = e.touches[0];
  const mouseEvent = new MouseEvent('mousemove', {
    clientX: touch.clientX,
    clientY: touch.clientY
  });
  editorCanvas.dispatchEvent(mouseEvent);
});

editorCanvas.addEventListener('touchend', (e) => {
  e.preventDefault();
  const mouseEvent = new MouseEvent('mouseup', {});
  editorCanvas.dispatchEvent(mouseEvent);
});

// Text modal event listeners
closeTextModal.addEventListener('click', () => {
  textModal.style.display = 'none';
});

cancelTextBtn.addEventListener('click', () => {
  textModal.style.display = 'none';
});

addTextBtn.addEventListener('click', () => {
  const text = textInput.value.trim();
  if (text) {
    const font = fontSelect.value;
    const fontSize = fontSizeSelect.value;

    editorCtx.font = `${fontSize}px ${font}`;
    editorCtx.fillStyle = colorPicker.value;
    editorCtx.globalAlpha = brushOpacity.value / 100;

    // Set text tool mode
    currentTool = 'text-place';
    textModal.style.display = 'none';
    showCyberToast('Klik pada gambar untuk menempatkan teks', 'info');
  }
});

// Keyboard shortcuts for editor
document.addEventListener('keydown', (e) => {
  // Only apply shortcuts when editor is active
  if (!fullscreenEditor.classList.contains('active')) return;

  // Ctrl+Z for undo
  if (e.ctrlKey && e.key === 'z' && !e.shiftKey) {
    e.preventDefault();
    undo();
    return;
  }

  // Ctrl+Shift+Z for redo
  if (e.ctrlKey && e.shiftKey && e.key === 'Z') {
    e.preventDefault();
    redo();
    return;
  }

  // Ctrl+S to save
  if (e.ctrlKey && e.key === 's') {
    e.preventDefault();
    saveEditedImage();
    return;
  }

  // Escape to close editor
  if (e.key === 'Escape') {
    closeFullscreenEditor();
    return;
  }

  // Plus key to increase brush size
  if (e.key === '+' || e.key === '=') {
    e.preventDefault();
    const newSize = Math.min(50, parseInt(brushSize.value) + 1);
    brushSize.value = newSize;
    brushSizeValue.textContent = newSize;
    updateCursorPreview();
    return;
  }

  // Minus key to decrease brush size
  if (e.key === '-' || e.key === '_') {
    e.preventDefault();
    const newSize = Math.max(1, parseInt(brushSize.value) - 1);
    brushSize.value = newSize;
    brushSizeValue.textContent = newSize;
    updateCursorPreview();
    return;
  }
});

// Custom wheel event for editor with modifier keys
function handleWheel(e) {
  e.preventDefault();

  // Ctrl+Scroll for zoom
  if (e.ctrlKey) {
    const delta = e.deltaY > 0 ? 0.9 : 1.1;
    const newZoom = currentZoom * delta;
    setZoom(newZoom);
    return;
  }

  // Alt+Scroll for brush size
  if (e.altKey) {
    const delta = e.deltaY > 0 ? -1 : 1;
    const newSize = Math.max(1, Math.min(50, parseInt(brushSize.value) + delta));
    brushSize.value = newSize;
    brushSizeValue.textContent = newSize;
    updateCursorPreview();
    return;
  }

  // If no modifier key is pressed, do nothing
  // This removes automatic zoom behavior
}

// Fungsi untuk memperbarui preview gambar
function updatePreviews() {
  previewContainer.innerHTML = '';

  images.forEach((image, index) => {
    const previewItem = document.createElement('div');
    previewItem.className = 'preview-item';

    const img = document.createElement('img');
    img.src = image.src;
    img.alt = `Preview ${index + 1}`;

    const removeBtn = document.createElement('button');
    removeBtn.className = 'remove-btn';
    removeBtn.innerHTML = '<i class="fas fa-times"></i>';
    removeBtn.onclick = () => removeImage(index);

    previewItem.appendChild(img);
    previewItem.appendChild(removeBtn);
    previewContainer.appendChild(previewItem);
  });

  imageCount.textContent = images.length;

  // Disable tombol gabungkan jika tidak ada gambar
  mergeBtn.disabled = images.length === 0;
}

// Fungsi untuk menghapus gambar
function removeImage(index) {
  images.splice(index, 1);
  updatePreviews();
  showCyberToast('Gambar dihapus', 'info');
}

// Fungsi untuk menggabungkan gambar
async function mergeImages() {
  if (images.length === 0) {
    showCyberToast('Tidak ada gambar untuk digabungkan!', 'error');
    return;
  }

  // Tampilkan loader
  loader.style.display = 'block';
  resultContainer.style.display = 'none';

  try {
    // Sembunyikan placeholder
    const placeholder = resultContainer.querySelector('.placeholder');
    if (placeholder) placeholder.style.display = 'none';

    // Buat canvas untuk penggabungan
    const canvas = document.createElement('canvas');
    const ctx = canvas.getContext('2d');

    // Dapatkan pengaturan
    const layout = layoutSelect.value;
    const spacing = parseInt(spacingSelect.value);
    const background = backgroundSelect.value;
    const quality = parseInt(qualitySlider.value) / 100;

    // Preload semua gambar
    const imgElements = await Promise.all(images.map(imageData => {
      return new Promise((resolve) => {
        const img = new Image();
        img.onload = () => resolve(img);
        img.src = imageData.src;
      });
    }));

    // Hitung dimensi canvas
    let canvasWidth = 0;
    let canvasHeight = 0;

    if (layout === 'horizontal') {
      canvasWidth = imgElements.reduce((sum, img) => sum + img.width, 0) +
        spacing * (imgElements.length - 1);
      canvasHeight = Math.max(...imgElements.map(img => img.height));
    } else if (layout === 'vertical') {
      canvasWidth = Math.max(...imgElements.map(img => img.width));
      canvasHeight = imgElements.reduce((sum, img) => sum + img.height, 0) +
        spacing * (imgElements.length - 1);
    } else {
      const columns = layout === 'grid2' ? 2 : 3;
      const rows = Math.ceil(imgElements.length / columns);

      let maxWidths = Array(columns).fill(0);
      let maxHeights = Array(rows).fill(0);

      imgElements.forEach((img, i) => {
        const col = i % columns;
        const row = Math.floor(i / columns);

        if (img.width > maxWidths[col]) maxWidths[col] = img.width;
        if (img.height > maxHeights[row]) maxHeights[row] = img.height;
      });

      canvasWidth = maxWidths.reduce((sum, w) => sum + w, 0) +
        spacing * (columns - 1);
      canvasHeight = maxHeights.reduce((sum, h) => sum + h, 0) +
        spacing * (rows - 1);
    }

    // Set ukuran canvas
    canvas.width = canvasWidth;
    canvas.height = canvasHeight;

    // Isi background
    if (background === 'white') {
      ctx.fillStyle = '#ffffff';
      ctx.fillRect(0, 0, canvasWidth, canvasHeight);
    } else if (background === 'black') {
      ctx.fillStyle = '#000000';
      ctx.fillRect(0, 0, canvasWidth, canvasHeight);
    }

    // Gambar semua gambar di canvas
    let x = 0;
    let y = 0;

    imgElements.forEach((img, i) => {
      if (layout === 'horizontal') {
        ctx.drawImage(img, x, 0);
        x += img.width + spacing;
      } else if (layout === 'vertical') {
        ctx.drawImage(img, 0, y);
        y += img.height + spacing;
      } else {
        const columns = layout === 'grid2' ? 2 : 3;
        const col = i % columns;
        const row = Math.floor(i / columns);

        // Cari lebar maks kolom sebelumnya
        let offsetX = 0;
        for (let c = 0; c < col; c++) {
          let maxW = 0;
          for (let r = row * columns; r < (row + 1) * columns; r++) {
            if (r < imgElements.length && imgElements[r].width > maxW) {
              maxW = imgElements[r].width;
            }
          }
          offsetX += maxW + spacing;
        }

        // Cari tinggi maks baris sebelumnya
        let offsetY = 0;
        for (let r = 0; r < row; r++) {
          let maxH = 0;
          for (let c = 0; c < columns; c++) {
            const idx = r * columns + c;
            if (idx < imgElements.length && imgElements[idx].height > maxH) {
              maxH = imgElements[idx].height;
            }
          }
          offsetY += maxH + spacing;
        }

        ctx.drawImage(img, offsetX, offsetY);
      }
    });

    // Konversi canvas ke data URL dengan kualitas yang dipilih
    const format = background === 'transparent' ? 'image/png' : 'image/jpeg';
    mergedImageData = canvas.toDataURL(format, quality);

    // Tampilkan hasil
    resultImage.src = mergedImageData;
    resultImage.style.display = 'block';
    downloadBtn.style.display = 'block';
    editBtn.style.display = 'block';

    // Tampilkan link gambar
    imageLink.value = mergedImageData;
    linkContainer.style.display = 'block';

    // Tampilkan kembali kontainer hasil
    resultContainer.style.display = 'flex';

    showCyberToast('Gambar berhasil digabungkan! Klik pada gambar untuk memperbesar.', 'success');
  } catch (error) {
    console.error('Merge error:', error);
    showCyberToast('Terjadi kesalahan saat menggabungkan gambar.', 'error');
  } finally {
    // Sembunyikan loader
    loader.style.display = 'none';
  }
}

// Fungsi untuk mengunduh gambar
function downloadImage() {
  if (!mergedImageData) return;

  const link = document.createElement('a');
  link.href = mergedImageData;
  link.download = `gabungan-gambar-${new Date().getTime()}.${backgroundSelect.value === 'transparent' ? 'png' : 'jpg'}`;
  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);
  showCyberToast('Gambar berhasil diunduh!', 'success');
}

// Fungsi untuk menyalin link gambar
function copyImageLink() {
  imageLink.select();
  imageLink.setSelectionRange(0, 99999);
  document.execCommand('copy');
  showCyberToast('Link berhasil disalin ke clipboard!', 'success');
}

// Fungsi untuk mereset semua
function resetAll() {
  images = [];
  mergedImageData = null;
  previewContainer.innerHTML = '';
  imageCount.textContent = '0';
  resultImage.style.display = 'none';
  linkContainer.style.display = 'none';
  downloadBtn.style.display = 'none';
  editBtn.style.display = 'none';
  const placeholder = resultContainer.querySelector('.placeholder');
  if (placeholder) placeholder.style.display = 'block';
  mergeBtn.disabled = true;
  imageUrl.value = '';
  fileUpload.value = '';

  showCyberToast('Semua gambar telah direset', 'info');
}

// ================ FULLSCREEN EDITOR FUNCTIONS ================ //

// Fungsi untuk membuka editor fullscreen
function openFullscreenEditor() {
  if (!mergedImageData) {
    showCyberToast('Tidak ada gambar untuk diedit!', 'error');
    return;
  }

  // Tampilkan fullscreen editor
  fullscreenEditor.classList.add('active');

  // Load image to editor canvas
  const img = new Image();
  img.onload = function() {
    // Set canvas size to match image
    editorCanvas.width = img.width;
    editorCanvas.height = img.height;

    // Calculate optimal zoom to fit image in viewport
    const containerRect = canvasContainer.getBoundingClientRect();
    const viewportWidth = containerRect.width - 100; // Padding
    const viewportHeight = containerRect.height - 100; // Padding

    const scaleX = viewportWidth / img.width;
    const scaleY = viewportHeight / img.height;
    const optimalZoom = Math.min(scaleX, scaleY, 1); // Don't zoom in by default

    // Set zoom and center
    currentZoom = optimalZoom;
    canvasOffsetX = 0;
    canvasOffsetY = 0;

    // Draw image on canvas
    editorCtx.drawImage(img, 0, 0);

    // Update canvas info
    updateCanvasInfo();

    // Apply zoom and center
    applyTransform();

    // Save initial state for undo/redo
    saveHistory();
  };
  img.src = mergedImageData;

  showCyberToast('Editor fullscreen dibuka. Gunakan Ctrl+Z untuk undo dan Ctrl+Shift+Z untuk redo.', 'info');
}

// Fungsi untuk menutup editor fullscreen
function closeFullscreenEditor() {
  fullscreenEditor.classList.remove('active');
  showCyberToast('Editor ditutup', 'info');
}

// Fungsi untuk memilih tool
function selectTool(tool) {
  // Remove active class from all tools
  document.querySelectorAll('.tool-btn').forEach(btn => {
    btn.classList.remove('active');
  });

  // Add active class to selected tool
  switch(tool) {
    case 'brush':
      brushTool.classList.add('active');
      break;
    case 'eraser':
      eraserTool.classList.add('active');
      break;
    case 'text':
      textTool.classList.add('active');
      break;
    case 'rectangle':
      rectangleTool.classList.add('active');
      break;
    case 'circle':
      circleTool.classList.add('active');
      break;
    case 'line':
      lineTool.classList.add('active');
      break;
  }

  currentTool = tool;

  // Update cursor based on tool
  if (tool === 'text' || tool === 'text-place') {
    editorCanvas.style.cursor = 'text';
  } else {
    editorCanvas.style.cursor = 'crosshair';
    updateCursorPreview();
  }
}

// Fungsi untuk menyimpan history
function saveHistory() {
  historyStep++;
  if (historyStep < history.length) {
    history.length = historyStep;
  }
  history.push(editorCanvas.toDataURL());

  // Limit history to 20 steps
  if (history.length > 20) {
    history.shift();
    historyStep--;
  }
}

// Fungsi untuk undo
function undo() {
  if (historyStep > 0) {
    historyStep--;
    const img = new Image();
    img.src = history[historyStep];
    img.onload = function() {
      editorCtx.clearRect(0, 0, editorCanvas.width, editorCanvas.height);
      editorCtx.drawImage(img, 0, 0);
    };
    showCyberToast('Undo berhasil', 'info');
  }
}

// Fungsi untuk redo
function redo() {
  if (historyStep < history.length - 1) {
    historyStep++;
    const img = new Image();
    img.src = history[historyStep];
    img.onload = function() {
      editorCtx.clearRect(0, 0, editorCanvas.width, editorCanvas.height);
      editorCtx.drawImage(img, 0, 0);
    };
    showCyberToast('Redo berhasil', 'info');
  }
}

// Fungsi untuk mengatur zoom
function setZoom(zoom) {
  zoom = Math.max(0.1, Math.min(5, zoom));
  currentZoom = zoom;

  // Apply zoom transformation
  applyTransform();

  // Update zoom display
  zoomLevel.textContent = `${Math.round(currentZoom * 100)}%`;
}

// Fungsi untuk apply transform
function applyTransform() {
  editorCanvas.style.transform = `scale(${currentZoom}) translate(${canvasOffsetX}px, ${canvasOffsetY}px)`;
}

// Fungsi untuk mengatur posisi canvas
function centerCanvas() {
  const container = canvasContainer;
  const containerRect = container.getBoundingClientRect();
  const canvasRect = editorCanvas.getBoundingClientRect();

  // Calculate center position
  canvasOffsetX = (containerRect.width - editorCanvas.width * currentZoom) / (2 * currentZoom);
  canvasOffsetY = (containerRect.height - editorCanvas.height * currentZoom) / (2 * currentZoom);

  applyTransform();
}

// Fungsi untuk update info canvas
function updateCanvasInfo() {
  canvasSize.textContent = `${editorCanvas.width} x ${editorCanvas.height}`;
  zoomLevel.textContent = `${Math.round(currentZoom * 100)}%`;
}

// Fungsi untuk update cursor preview
function updateCursorPreview() {
  // This would create a custom cursor if needed
  // For now, we'll use default crosshair
}

// Fungsi untuk mendapatkan posisi mouse relatif terhadap canvas dengan zoom dan offset
function getMousePos(e) {
  const rect = editorCanvas.getBoundingClientRect();

  // Hitung posisi relatif terhadap canvas
  const x = (e.clientX - rect.left) / currentZoom;
  const y = (e.clientY - rect.top) / currentZoom;

  // Kurangi offset untuk mendapatkan posisi yang benar
  return {
    x: x - canvasOffsetX,
    y: y - canvasOffsetY
  };
}

// Fungsi untuk mulai menggambar
function startDrawing(e) {
  if (e.button === 2) { // Right click for panning
    isPanning = true;
    panStartX = e.clientX;
    panStartY = e.clientY;
    editorCanvas.style.cursor = 'move';
    return;
  }

  if (currentTool === 'text-place') {
    const pos = getMousePos(e);
    const text = textInput.value.trim();
    if (text) {
      const font = fontSelect.value;
      const fontSize = fontSizeSelect.value;

      editorCtx.font = `${fontSize}px ${font}`;
      editorCtx.fillStyle = colorPicker.value;
      editorCtx.globalAlpha = brushOpacity.value / 100;

      editorCtx.fillText(text, pos.x, pos.y);
      saveHistory();

      // Reset tool
      selectTool('text');
      textInput.value = '';
    }
    return;
  }

  isDrawing = true;
  const pos = getMousePos(e);
  startX = pos.x;
  startY = pos.y;
}

// Fungsi untuk menggambar
function draw(e) {
  const pos = getMousePos(e);

  // Update cursor position display
  cursorPos.textContent = `X: ${Math.round(pos.x)}, Y: ${Math.round(pos.y)}`;

  if (isPanning) {
    const deltaX = e.clientX - panStartX;
    const deltaY = e.clientY - panStartY;

    canvasOffsetX += deltaX / currentZoom;
    canvasOffsetY += deltaY / currentZoom;

    applyTransform();

    panStartX = e.clientX;
    panStartY = e.clientY;
    return;
  }

  if (!isDrawing) return;

  editorCtx.lineWidth = brushSize.value;
  editorCtx.lineCap = 'round';
  editorCtx.lineJoin = 'round';

  if (currentTool === 'brush') {
    editorCtx.globalCompositeOperation = 'source-over';
    editorCtx.strokeStyle = colorPicker.value;
    editorCtx.globalAlpha = brushOpacity.value / 100;

    editorCtx.beginPath();
    editorCtx.moveTo(startX, startY);
    editorCtx.lineTo(pos.x, pos.y);
    editorCtx.stroke();

    startX = pos.x;
    startY = pos.y;
  } else if (currentTool === 'eraser') {
    editorCtx.globalCompositeOperation = 'destination-out';
    editorCtx.globalAlpha = 1;

    editorCtx.beginPath();
    editorCtx.moveTo(startX, startY);
    editorCtx.lineTo(pos.x, pos.y);
    editorCtx.stroke();

    startX = pos.x;
    startY = pos.y;
  } else if (currentTool === 'rectangle') {
    // Clear and redraw
    const img = new Image();
    img.src = history[historyStep];
    img.onload = function() {
      editorCtx.clearRect(0, 0, editorCanvas.width, editorCanvas.height);
      editorCtx.drawImage(img, 0, 0);

      // Draw rectangle
      editorCtx.globalCompositeOperation = 'source-over';
      editorCtx.strokeStyle = colorPicker.value;
      editorCtx.globalAlpha = brushOpacity.value / 100;

      editorCtx.beginPath();
      editorCtx.rect(startX, startY, pos.x - startX, pos.y - startY);
      editorCtx.stroke();
    };
  } else if (currentTool === 'circle') {
    // Clear and redraw
    const img = new Image();
    img.src = history[historyStep];
    img.onload = function() {
      editorCtx.clearRect(0, 0, editorCanvas.width, editorCanvas.height);
      editorCtx.drawImage(img, 0, 0);

      // Calculate radius
      const radius = Math.sqrt(Math.pow(pos.x - startX, 2) + Math.pow(pos.y - startY, 2));

      // Draw circle
      editorCtx.globalCompositeOperation = 'source-over';
      editorCtx.strokeStyle = colorPicker.value;
      editorCtx.globalAlpha = brushOpacity.value / 100;

      editorCtx.beginPath();
      editorCtx.arc(startX, startY, radius, 0, 2 * Math.PI);
      editorCtx.stroke();
    };
  } else if (currentTool === 'line') {
    // Clear and redraw
    const img = new Image();
    img.src = history[historyStep];
    img.onload = function() {
      editorCtx.clearRect(0, 0, editorCanvas.width, editorCanvas.height);
      editorCtx.drawImage(img, 0, 0);

      // Draw line
      editorCtx.globalCompositeOperation = 'source-over';
      editorCtx.strokeStyle = colorPicker.value;
      editorCtx.globalAlpha = brushOpacity.value / 100;

      editorCtx.beginPath();
      editorCtx.moveTo(startX, startY);
      editorCtx.lineTo(pos.x, pos.y);
      editorCtx.stroke();
    };
  }
}

// Fungsi untuk berhenti menggambar
function stopDrawing(e) {
  if (e.button === 2) {
    isPanning = false;
    editorCanvas.style.cursor = currentTool === 'text' ? 'text' : 'crosshair';
    return;
  }

  if (isDrawing) {
    isDrawing = false;
    saveHistory();
  }
}

// Fungsi untuk menyimpan gambar yang diedit
function saveEditedImage() {
  // Convert canvas to data URL
  const editedImageData = editorCanvas.toDataURL('image/png');

  // Update the result image
  resultImage.src = editedImageData;
  mergedImageData = editedImageData;
  imageLink.value = editedImageData;

  // Close editor and show result
  closeFullscreenEditor();

  showCyberToast('Gambar berhasil disimpan!', 'success');
}

// Initial setup
document.addEventListener('DOMContentLoaded', function() {
  showCyberToast('Sistem siap digunakan', 'success');

  // Update provider and game name when inputs change
  document.getElementById('providerInput').addEventListener('input', function() {
    document.getElementById('providerNameText').textContent = this.value;
  });

  document.getElementById('gameName').addEventListener('input', function() {
    document.getElementById('gameNameText').textContent = this.value;
  });
});
</script>
</body>
</html>

