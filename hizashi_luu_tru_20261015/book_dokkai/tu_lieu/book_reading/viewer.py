"""
Book Reading Markdown Viewer
Chạy: python viewer.py
Mở trình duyệt: http://localhost:8765
"""

import http.server
import json
import os
import urllib.parse

PORT = 8765
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
CONTENT_DIR = os.path.join(BASE_DIR, "content")

HTML_PAGE = """<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hizashi Book - Đọc Dịch Tiếng Nhật</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/github-markdown-css@5/github-markdown-light.css">
<script src="https://cdn.jsdelivr.net/npm/marked/marked.min.js"></script>
<style>
* { margin: 0; padding: 0; box-sizing: border-box; }
body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif; display: flex; height: 100vh; background: #f5f5f5; }

/* Sidebar */
#sidebar {
    width: 320px;
    min-width: 320px;
    background: #1e1e2e;
    color: #cdd6f4;
    overflow-y: auto;
    padding: 0;
    display: flex;
    flex-direction: column;
}
#sidebar-header {
    padding: 20px;
    background: #181825;
    border-bottom: 1px solid #313244;
}
#sidebar-header h1 {
    font-size: 16px;
    color: #cba6f7;
    margin-bottom: 4px;
}
#sidebar-header p {
    font-size: 12px;
    color: #6c7086;
}
.part-group {
    border-bottom: 1px solid #313244;
}
.part-header {
    padding: 12px 20px;
    font-size: 13px;
    font-weight: 700;
    color: #89b4fa;
    background: #181825;
    cursor: pointer;
    display: flex;
    justify-content: space-between;
    align-items: center;
    user-select: none;
}
.part-header:hover { background: #1e1e2e; }
.part-header .arrow { transition: transform 0.2s; font-size: 10px; }
.part-header.collapsed .arrow { transform: rotate(-90deg); }
.part-lessons { }
.part-lessons.hidden { display: none; }
.lesson-item {
    padding: 8px 20px 8px 32px;
    font-size: 13px;
    color: #a6adc8;
    cursor: pointer;
    border-left: 3px solid transparent;
    transition: all 0.15s;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
.lesson-item:hover {
    background: #313244;
    color: #cdd6f4;
}
.lesson-item.active {
    background: #313244;
    color: #cba6f7;
    border-left-color: #cba6f7;
}
.lesson-item .lesson-num {
    color: #6c7086;
    font-size: 11px;
    margin-right: 6px;
}
.lesson-item .lesson-lines {
    color: #585b70;
    font-size: 11px;
    float: right;
}

/* Content */
#content {
    flex: 1;
    overflow-y: auto;
    padding: 40px 60px;
    background: #fff;
}
#content .markdown-body {
    max-width: 900px;
    margin: 0 auto;
}
#content .markdown-body table {
    display: table;
    width: 100%;
}
#content .markdown-body h1 {
    border-bottom: 2px solid #cba6f7;
    padding-bottom: 8px;
}
#content .markdown-body h2 {
    color: #1e1e2e;
    margin-top: 32px;
}
#content .markdown-body blockquote {
    border-left-color: #cba6f7;
    background: #f8f6ff;
}
#content .markdown-body code {
    background: #f0f0f0;
    padding: 2px 6px;
    border-radius: 3px;
}
#content .markdown-body pre {
    background: #1e1e2e;
    color: #cdd6f4;
    border-radius: 8px;
    padding: 16px;
}
#content .markdown-body pre code {
    background: none;
    color: inherit;
    padding: 0;
}
#breadcrumb {
    font-size: 12px;
    color: #6c7086;
    margin-bottom: 16px;
}
#breadcrumb span { color: #cba6f7; }

/* Loading */
#loading {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%;
    color: #6c7086;
    font-size: 16px;
}

/* Stats bar */
#stats {
    padding: 12px 20px;
    background: #11111b;
    font-size: 11px;
    color: #585b70;
    border-top: 1px solid #313244;
    margin-top: auto;
}
</style>
</head>
<body>

<div id="sidebar">
    <div id="sidebar-header">
        <h1>📖 Hizashi Book</h1>
        <p>Đọc dịch tiếng Nhật → Việt</p>
    </div>
    <div id="tree"></div>
    <div id="stats"></div>
</div>

<div id="content">
    <div id="loading">Chọn một bài học từ menu bên trái</div>
    <div id="breadcrumb" style="display:none"></div>
    <div class="markdown-body" id="md-content"></div>
</div>

<script>
let fileTree = {};
let currentFile = null;

async function loadTree() {
    const res = await fetch('/api/tree');
    fileTree = await res.json();
    renderTree();
}

function renderTree() {
    const tree = document.getElementById('tree');
    const stats = document.getElementById('stats');
    let html = '';
    let totalFiles = 0;
    let totalLines = 0;

    for (const part of fileTree.parts) {
        const isCollapsed = false;
        html += `<div class="part-group">`;
        html += `<div class="part-header" onclick="togglePart(this)">
            <span>${part.name}</span>
            <span class="arrow">▼</span>
        </div>`;
        html += `<div class="part-lessons">`;

        for (const f of part.files) {
            totalFiles++;
            totalLines += f.lines;
            const num = f.filename.match(/lesson_(\\d+)/);
            const numStr = num ? num[1] : '';
            html += `<div class="lesson-item" data-path="${f.path}" onclick="loadFile(this, '${f.path}')">
                ${numStr ? '<span class="lesson-num">' + numStr + '</span>' : ''}
                ${f.title}
                <span class="lesson-lines">${f.lines}L</span>
            </div>`;
        }

        html += `</div></div>`;
    }

    tree.innerHTML = html;
    stats.innerHTML = `${totalFiles} files ・ ${totalLines.toLocaleString()} dòng`;
}

function togglePart(el) {
    el.classList.toggle('collapsed');
    const lessons = el.nextElementSibling;
    lessons.classList.toggle('hidden');
}

async function loadFile(el, path) {
    // Active state
    document.querySelectorAll('.lesson-item').forEach(e => e.classList.remove('active'));
    el.classList.add('active');

    // Fetch content
    const res = await fetch('/api/file?path=' + encodeURIComponent(path));
    const data = await res.json();

    // Render
    document.getElementById('loading').style.display = 'none';
    document.getElementById('breadcrumb').style.display = 'block';
    document.getElementById('breadcrumb').innerHTML = `${data.part} / <span>${data.filename}</span>`;
    document.getElementById('md-content').innerHTML = marked.parse(data.content);
    document.getElementById('content').scrollTop = 0;
    currentFile = path;
}

// Auto reload current file every 3s
setInterval(async () => {
    if (!currentFile) return;
    try {
        const res = await fetch('/api/file?path=' + encodeURIComponent(currentFile));
        const data = await res.json();
        const newHtml = marked.parse(data.content);
        const el = document.getElementById('md-content');
        if (el.innerHTML !== newHtml) {
            const scrollPos = document.getElementById('content').scrollTop;
            el.innerHTML = newHtml;
            document.getElementById('content').scrollTop = scrollPos;
        }
    } catch(e) {}
}, 3000);

// Reload tree every 10s (detect new files)
setInterval(loadTree, 10000);

loadTree();
</script>

</body>
</html>"""


class Handler(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        parsed = urllib.parse.urlparse(self.path)

        if parsed.path == '/' or parsed.path == '/index.html':
            self.send_response(200)
            self.send_header('Content-Type', 'text/html; charset=utf-8')
            self.end_headers()
            self.wfile.write(HTML_PAGE.encode('utf-8'))

        elif parsed.path == '/api/tree':
            tree = self.build_tree()
            self.send_json(tree)

        elif parsed.path == '/api/file':
            params = urllib.parse.parse_qs(parsed.query)
            path = params.get('path', [''])[0]
            self.serve_file(path)

        else:
            self.send_response(404)
            self.end_headers()

    def build_tree(self):
        parts = []

        # Part 0
        method_file = os.path.join(CONTENT_DIR, "part_00_method.md")
        if os.path.exists(method_file):
            title, lines = self.get_file_info(method_file)
            parts.append({
                "name": "Part 0: Phương Pháp Đọc",
                "files": [{
                    "filename": "part_00_method.md",
                    "path": "part_00_method.md",
                    "title": title,
                    "lines": lines
                }]
            })

        # Parts 1, 2, 3...
        for part_dir in sorted(os.listdir(CONTENT_DIR)):
            part_path = os.path.join(CONTENT_DIR, part_dir)
            if not os.path.isdir(part_path) or not part_dir.startswith("part_"):
                continue

            # Get part name from index.md
            index_file = os.path.join(part_path, "index.md")
            if os.path.exists(index_file):
                part_name, _ = self.get_file_info(index_file)
            else:
                part_name = part_dir

            files = []
            for fname in sorted(os.listdir(part_path)):
                if not fname.endswith('.md') or fname == 'index.md':
                    continue
                fpath = os.path.join(part_path, fname)
                title, lines = self.get_file_info(fpath)
                files.append({
                    "filename": fname,
                    "path": f"{part_dir}/{fname}",
                    "title": title,
                    "lines": lines
                })

            if files:
                parts.append({
                    "name": part_name,
                    "files": files
                })

        return {"parts": parts}

    def get_file_info(self, filepath):
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
                lines = content.count('\n') + 1
                first_line = content.split('\n')[0]
                title = first_line.lstrip('# ').strip()
                return title, lines
        except:
            return os.path.basename(filepath), 0

    def serve_file(self, rel_path):
        filepath = os.path.join(CONTENT_DIR, rel_path)
        if not os.path.exists(filepath):
            self.send_json({"error": "File not found"}, 404)
            return

        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()

        parts = rel_path.split('/')
        part = parts[0] if len(parts) > 1 else "root"
        filename = parts[-1]

        self.send_json({
            "content": content,
            "part": part,
            "filename": filename
        })

    def send_json(self, data, code=200):
        self.send_response(code)
        self.send_header('Content-Type', 'application/json; charset=utf-8')
        self.send_header('Access-Control-Allow-Origin', '*')
        self.end_headers()
        self.wfile.write(json.dumps(data, ensure_ascii=False).encode('utf-8'))

    def log_message(self, format, *args):
        pass  # Tắt log mỗi request


if __name__ == '__main__':
    import sys
    sys.stdout.reconfigure(encoding='utf-8', errors='replace')
    server = http.server.HTTPServer(('localhost', PORT), Handler)
    print(f"Hizashi Book Viewer")
    print(f"  http://localhost:{PORT}")
    print(f"  Nhan Ctrl+C de dung")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\nDa dung server.")
        server.server_close()
