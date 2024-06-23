# [@QwikDev/astro](https://github.com/QwikDev/astro) Starter Kit

## Overview

Welcome to the [@QwikDev/astro](https://github.com/QwikDev/astro) starter kit! This kit enables seamless integration of Qwik components into your Astro projects, combining the efficiency of Qwik's component-based architecture with the flexibility of Astro's static site generation.

## 🚀 Project Structure

Inside of your [Qwik](https://qwik.dev/) + [Astro](https://astro.build/) project, you'll see the following folders and files:

```text
/
├── public/
│   └── favicon.svg
├── src/
│   ├── assets/
│   │   ├── astro.svg
│   │   └── qwik.svg
│   ├── components/
│   │   ├── counter.module.css
│   │   └── counter.tsx
│   ├── layouts/
│   │   └── Layout.astro
│   ├── pages/
│   │   └── index.astro
│   └── styles/
│       └── globals.css
└── package.json
```

- **public/** : This directory contains static resources such as images, accessible from the root of your deployed site.

- **src/** : This directory is the core of your Qwik + Astro application. Here's an overview of its structure:

  - **assets/** : This directory is for resources such as images, SVG files, etc.
  
  - **components/** : Qwik components are stored here. Use this directory to organize and create reusable components for your application.
  
  - **layouts/** : Astro layouts reside in this directory. Layout files define the overall structure of your pages.
  
  - **pages/** : This directory contains the pages of your Astro application. Each file with the `.astro` or `.md` extension is exposed as a route based on its file name.
  
  - **styles/** : Global style files for your application are stored here, such as `globals.css`.

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command              | Action                                         |
| :------------------- | :----------------------------------------------|
| `pnpm install`         | Installs dependencies                          |
| `pnpm start`           | Starts local dev server at `localhost:4321`      |
| `pnpm build`           | Build your production site to `./dist/`          |
| `pnpm preview`         | Preview your build locally, before deploying   |
| `pnpm astro ...`       | Run CLI commands like `astro add`, `astro check`   |
| `pnpm astro -- --help` | Get help using the Astro CLI                   |

## 📚 References

- [Astro Documentation](https://astro.build/) - Explore more about Astro.

- [Qwik Documentation](https://qwik.dev/) - Learn about Qwik and its features.

- [Astro GitHub Repository](https://github.com/withastro/astro) - Contribute or report issues to the Astro project.

- [Qwik GitHub Repository](https://github.com/BuilderIO/qwik) - Contribute or report issues to the Qwik project.

- [Qwik + Astro GitHub Repository](https://github.com/QwikDev/astro) - Explore and contribute to the @QwikDev/astro integration project.

## Vercel Edge

This starter site is configured to deploy to [Vercel Edge Functions](https://vercel.com/docs/concepts/functions/edge-functions), which means it will be rendered at an edge location near to your users.

## Installation

The adaptor will add a new `vite.config.ts` within the `adapters/` directory, and a new entry file will be created, such as:

```
└── adapters/
    └── vercel-edge/
        └── vite.config.ts
└── src/
    └── entry.vercel-edge.tsx
```

Additionally, within the `package.json`, the `build.server` script will be updated with the Vercel Edge build.

## Production build

To build the application for production, use the `build` command, this command will automatically run `bun build.server` and `bun build.client`:

```shell
bun build
```

[Read the full guide here](https://github.com/QwikDev/qwik/blob/main/starters/adapters/vercel-edge/README.md)

## Dev deploy

To deploy the application for development:

```shell
bun deploy
```

Notice that you might need a [Vercel account](https://docs.Vercel.com/get-started/) in order to complete this step!

## Production deploy

The project is ready to be deployed to Vercel. However, you will need to create a git repository and push the code to it.

You can [deploy your site to Vercel](https://vercel.com/docs/concepts/deployments/overview) either via a Git provider integration or through the Vercel CLI.
