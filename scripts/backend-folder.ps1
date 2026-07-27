# ==========================================
# Backend Folder Structure Creator
# ==========================================

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host " Creating Backend Folder Structure"
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

# Root directory (current directory)
$Root = Get-Location

# Folder list
$Folders = @(
    "config",
    "controllers",
    "middleware",
    "models",
    "routes",
    "utils"
)

# File list
$Files = @(
    "config\db.js",
    "config\jwt.js",

    "controllers\authController.js",
    "controllers\productController.js",
    "controllers\cartController.js",
    "controllers\orderController.js",
    "controllers\userController.js",

    "middleware\authMiddleware.js",
    "middleware\errorMiddleware.js",
    "middleware\validateMiddleware.js",

    "models\User.js",
    "models\Product.js",
    "models\Cart.js",
    "models\Order.js",

    "routes\authRoutes.js",
    "routes\productRoutes.js",
    "routes\cartRoutes.js",
    "routes\orderRoutes.js",
    "routes\userRoutes.js",

    "utils\response.js",
    "utils\logger.js",

    "app.js",
    "server.js",
    "package.json",
    ".env.example",
    "Dockerfile",
    ".gitignore"
)

# ------------------------------------------
# Create Folders
# ------------------------------------------

Write-Host "Creating folders..." -ForegroundColor Yellow

foreach ($Folder in $Folders)
{
    $FolderPath = Join-Path $Root $Folder

    if (!(Test-Path $FolderPath))
    {
        New-Item -ItemType Directory -Path $FolderPath | Out-Null
        Write-Host "[CREATED] Folder : $Folder" -ForegroundColor Green
    }
    else
    {
        Write-Host "[SKIPPED] Folder : $Folder" -ForegroundColor DarkYellow
    }
}

Write-Host ""

# ------------------------------------------
# Create Files
# ------------------------------------------

Write-Host "Creating files..." -ForegroundColor Yellow

foreach ($File in $Files)
{
    $FilePath = Join-Path $Root $File

    if (!(Test-Path $FilePath))
    {
        New-Item -ItemType File -Path $FilePath | Out-Null
        Write-Host "[CREATED] File   : $File" -ForegroundColor Green
    }
    else
    {
        Write-Host "[SKIPPED] File   : $File" -ForegroundColor DarkYellow
    }
}

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host " Backend Folder Structure Ready!"
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""