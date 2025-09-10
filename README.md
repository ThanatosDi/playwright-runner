
# Playwright Runner Docker Images

This project provides Docker images for running Playwright tests. The images are built and pushed to Docker Hub automatically via GitHub Actions.

## Features

-   Docker images for Playwright with support for Chromium, Firefox, and WebKit.
-   Automated builds and pushes to Docker Hub using GitHub Actions.
-   Support for multiple platforms (`linux/amd64`, `linux/arm64`).

## Usage

You can use the Docker images in your CI/CD pipeline to run Playwright tests. Here's an example of how to use the image in a GitHub Actions workflow:

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

You can also use a specific browser version by specifying the browser name in the image tag:

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

The project uses GitHub Actions to build and push the Docker images to Docker Hub. The workflow is defined in the `.github/workflows/build.yaml` file. The workflow is triggered manually and builds images for all browsers and a combined image with all browsers.

## Contributing

Contributions are welcome! If you have any ideas or suggestions, please open an issue or submit a pull request.
