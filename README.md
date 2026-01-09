# Next.js 15 Hello World App for Netlify

A simple Next.js 15 application that displays "hello world" from an API route, ready to be deployed to Netlify.

## Getting Started

### Install Dependencies

```bash
npm install
```

### Run Development Server

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to see the app.

## Deploy to Netlify

### Using Netlify CLI

1. Install Netlify CLI globally (if not already installed):
   ```bash
   npm install -g netlify-cli
   ```

2. Login to Netlify:
   ```bash
   netlify login
   ```

3. Deploy:
   ```bash
   netlify deploy --prod
   ```

   Or for a draft deployment:
   ```bash
   netlify deploy
   ```

### What This App Does

- The `/api/hello` route returns `{ message: "hello world" }`
- The main page fetches this message and displays it
- The app is configured for Netlify deployment with the `@netlify/plugin-nextjs` plugin

