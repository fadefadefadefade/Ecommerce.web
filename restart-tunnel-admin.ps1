# Run this script as Administrator

Write-Host "Stopping Cloudflare service..." -ForegroundColor Yellow
Stop-Service Cloudflared -Force

Write-Host "Uninstalling service..." -ForegroundColor Yellow
cloudflared service uninstall

Write-Host "Installing with new config..." -ForegroundColor Green
cloudflared --config C:\Users\Admin\.cloudflared\config.yml service install

Write-Host "Starting service..." -ForegroundColor Green
Start-Service Cloudflared

Write-Host "`nDone! Your site should now work at https://alvy.trade" -ForegroundColor Cyan
