# PowerShell build script for ADHD Dopamine Shop
Write-Host "=== Building ADHD Dopamine Shop Installer ==="
if (!(Test-Path -Path "ADHDShopTestCert.pfx")) {
  Write-Host "Creating self-signed certificate..."
  $cert = New-SelfSignedCertificate -DnsName "ADHDShop.local" -CertStoreLocation "Cert:\CurrentUser\My" -Type CodeSigningCert
  $pwd = ConvertTo-SecureString -String "adhdshop" -Force -AsPlainText
  Export-PfxCertificate -Cert $cert -FilePath "ADHDShopTestCert.pfx" -Password $pwd
}
npm install
npx prisma generate
npm run build
npx electron-builder --win nsis --config electron-builder.json
