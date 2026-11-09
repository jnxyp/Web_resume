# Web_resume

My personal handmade web based resume, deployed at [https://yipeng.xin](https://yipeng.xin).

It takes five years to finally obtain this personal domain name XD

## Docker

Run from the repository directory:

```powershell
docker compose up -d --build --wait
```

Open http://127.0.0.1:18082/. The default page is `resume.html`; the Chinese version is available at `/resume_cn.html`, and the PDF at `/resume.pdf`.

The image contains only the two HTML files, `resume.css`, and `resume.pdf`. Rebuild with the same command after editing these files. Nginx uses the pinned base image in `Dockerfile`, and Compose limits container logs to 20 MB × 3.

The port binds to loopback for local testing or a host reverse proxy. Set `PORT` to override the default 18082, for example in PowerShell:

```powershell
$env:PORT = '18083'
docker compose up -d --build --wait
```

In production, the host Caddy should terminate HTTPS and proxy to `127.0.0.1:18082`. The container serves HTTP. Font Awesome remains an external browser dependency.

Stop and remove the container with `docker compose down`.
