$port = 3000
$prefix = "http://localhost:$port/"
$listener = New-Object System.Net.HttpListener
try {
    $listener.Prefixes.Add($prefix)
    $listener.Start()
} catch {
    $port = 5500
    $prefix = "http://localhost:$port/"
    $listener = New-Object System.Net.HttpListener
    $listener.Prefixes.Add($prefix)
    $listener.Start()
}

Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "  MALAK EMAD ELBENDARY - CYBERSECURITY & DEV PORTFOLIO" -ForegroundColor Green
Write-Host "  Live Server Running: $prefix" -ForegroundColor Cyan
Write-Host "  Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

$root = $PSScriptRoot

# Try to open the URL in default browser
try {
    Start-Process $prefix
} catch {}

while ($listener.IsListening) {
    try {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        $urlPath = $request.Url.LocalPath
        if ($urlPath -eq "/" -or [string]::IsNullOrWhiteSpace($urlPath)) { $urlPath = "/index.html" }
        $filePath = [System.IO.Path]::Combine($root, $urlPath.TrimStart('/').Replace('/', '\'))

        if (Test-Path $filePath -PathType Leaf) {
            $bytes = [System.IO.File]::ReadAllBytes($filePath)
            $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
            switch ($ext) {
                ".html" { $response.ContentType = "text/html; charset=utf-8" }
                ".css"  { $response.ContentType = "text/css; charset=utf-8" }
                ".js"   { $response.ContentType = "text/javascript; charset=utf-8" }
                ".jsx"  { $response.ContentType = "text/javascript; charset=utf-8" }
                ".jpg"  { $response.ContentType = "image/jpeg" }
                ".jpeg" { $response.ContentType = "image/jpeg" }
                ".png"  { $response.ContentType = "image/png" }
                ".svg"  { $response.ContentType = "image/svg+xml" }
                ".json" { $response.ContentType = "application/json" }
                ".pdf"  { $response.ContentType = "application/pdf" }
                default { $response.ContentType = "application/octet-stream" }
            }
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            $response.StatusCode = 404
            $notFoundMsg = [System.Text.Encoding]::UTF8.GetBytes("404 - Not Found")
            $response.OutputStream.Write($notFoundMsg, 0, $notFoundMsg.Length)
        }
        $response.OutputStream.Close()
    } catch {
        # continue loop cleanly on transient disconnect
    }
}
