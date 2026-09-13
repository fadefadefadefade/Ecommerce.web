# Start Laravel and Cloudflare Tunnel

Write-Host "Starting Laravel application..." -ForegroundColor Green
Start-Process powershell -ArgumentList "-NoExit", "-Command", "php artisan serve --host=0.0.0.0 --port=8000"

Write-Host "Waiting for Laravel to start..." -ForegroundColor Yellow
Start-Sleep -Seconds 3

Write-Host "Starting Cloudflare Tunnel..." -ForegroundColor Green
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
cloudflared tunnel run alvy-trade
