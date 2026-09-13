# Must run as Administrator

Write-Host "Step 1: Force uninstall..." -ForegroundColor Yellow
try {
    cloudflared service uninstall
    Start-Sleep -Seconds 2
} catch {
    Write-Host "Already uninstalled or not found" -ForegroundColor Gray
}

Write-Host "`nStep 2: Installing with config..." -ForegroundColor Green
cloudflared --config C:\Users\Admin\.cloudflared\config.yml service install

Write-Host "`nStep 3: Starting service..." -ForegroundColor Green
Start-Service Cloudflared

Write-Host "`nStep 4: Checking status..." -ForegroundColor Cyan
Get-Service Cloudflared

Write-Host "`n✅ Done! Check https://alvy.trade in a few seconds" -ForegroundColor Green
