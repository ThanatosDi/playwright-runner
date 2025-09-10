
# Playwright Runner Docker 映像檔

這個專案提供用於執行 Playwright 測試的 Docker 映像檔。這些映像檔會透過 GitHub Actions 自動建置並推送到 Docker Hub。

## 功能

-   支援 Chromium、Firefox 和 WebKit 的 Playwright Docker 映像檔。
-   使用 GitHub Actions 自動建置並推送到 Docker Hub。
-   支援多個平台 (`linux/amd64`, `linux/arm64`)。

## 如何使用

您可以在您的 CI/CD 流程中使用這些 Docker 映像檔來執行 Playwright 測試。這是在 GitHub Actions 工作流程中使用此映像檔的範例：

```yaml
jobs:
  test:
    runs-on: ubuntu-latest
    container:
      image: thanatosdi/playwright-runner:latest
    steps:
      - uses: actions/checkout@v3
      - name: Run Playwright tests
        run: npx playwright test
```

您也可以透過在映像檔標籤中指定瀏覽器名稱來使用特定的瀏覽器版本：

```yaml
jobs:
  test:
    runs-on: ubuntu-latest
    container:
      image: thanatosdi/playwright-runner:latest-chromium
    steps:
      - uses: actions/checkout@v3
      - name: Run Playwright tests
        run: npx playwright test --browser chromium
```

## CI/CD

此專案使用 GitHub Actions 來建置 Docker 映像檔並將其推送到 Docker Hub。工作流程定義在 `.github/workflows/build.yaml` 檔案中。此工作流程是手動觸發的，會為所有瀏覽器建置映像檔，以及一個包含所有瀏覽器的組合映像檔。

## 貢獻

歡迎貢獻！如果您有任何想法或建議，請提出 issue 或提交 pull request。
