# Static HTML to WAR Demo

This folder is a minimal example of how to package a static HTML site into a WAR file for deployment to WildFly.

The sample is intentionally generic. It does not depend on any backend service, custom data, or branded assets.

## What is included

- `index.html` - overview page for the demo
- `sample-form.html` - runnable static page with local JavaScript only
- `style.css` - shared styling for both pages
- `create_war_file.bat` - builds the WAR with the JDK `jar` tool

## What the demo shows

- How to serve a plain HTML page from the WAR root
- How to include a second page with a small interactive form
- How to package the files into a deployable WAR
- How to keep the example self-contained and domain-free

## Prerequisites

- A JDK installed and available on `PATH`
- Optional: WildFly if you want to deploy the WAR

## Build the WAR

From this folder, run:

```bat
create_war_file.bat
```

The script removes any existing `static-html-war-demo.war`, then creates a fresh WAR containing the HTML and CSS files.

## Run the sample page

You can open `sample-form.html` directly in a browser. The form uses only local JavaScript, so it works without a backend.

If you deploy the WAR to WildFly, open the deployed application and use the same pages there.

## Folder behavior

- Keep the content generic
- Avoid company names, product names, and project-specific values
- Keep the sample pages runnable without external services
