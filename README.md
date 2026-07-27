# Zepto-Quick-Commerce
85_Deploy Applications to Kubernetes

Create React Project

# Step 1: Navigate to the project
cd zepto-qucik-commerce 


# Step 2: Create React App with Vite
npm  create vite@latest  frontend --  --template react
 VITE v8.1.5  ready in 1020 ms

  ➜  Local:   http://localhost:5173/
  ➜  Network: use --host to expose
  ➜  press h + enter to show help

![alt text](image.png)

press r + enter to restart the server
  press u + enter to show server url
  press o + enter to open in browser
  press c + enter to clear console
  press q + enter to quit

  # Step 3: Move into the project
  $ cd frontend

 # Step 4: Install dependencies
  $ npm install

up to date, audited 136 packages in 3s

31 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities

# Step 5: Install additional packages
npm  install react-router-dom axios  bootstrap react-icons
added 32 packages, and audited 168 packages in 13s

40 packages are looking for funding
  run `npm fund` for details

2 high severity vulnerabilities

To address all issues, run:
  npm audit fix

Run `npm audit` for details.

Verify Installation
npm  run dev
> frontend@0.0.0 dev
> vite

12:24:35 PM [vite] (client) Re-optimizing dependencies because lockfile has changed

  VITE v8.1.5  ready in 675 ms

  ➜  Local:   http://localhost:5173/
  ➜  Network: use --host to expose
  ➜  press h + enter to show help

Verify Installation
 npm  run dev

  Expected ouput:
  Local 
  http://localhost:5173/

# Install Bootstrap
main src/App.jsx
online Adding 
import 'bootstrap/dist/css/bootstrap.min.css';

 # Environment variable 
 VITE_API_URI=http://localhost:5000/api

 
# Step 1: Install React Router
npm install react-router-dom

# Verify it is install
npm list react-router-dom

# Step 4: Create route.jsx
Create
This file contains all applications routes
src/route.jsx


# API Layer
Create 
services/api.js

# Local Testing 
$ npm  run dev
 VITE v8.1.5  ready in 538 ms

  ➜  Local:   http://localhost:5173/
  ➜  Network: use --host to expose
  ➜  press h + enter to show help

$ npm run build
> frontend@0.0.0 build
> vite build

vite v8.1.5 building client environment for production...
✓ 20 modules transformed.
computing gzip size...
dist/index.html                   0.45 kB │ gzip:  0.29 kB
dist/assets/react-CHdo91hT.svg    4.12 kB │ gzip:  2.06 kB
dist/assets/vite-BF8QNONU.svg     8.70 kB │ gzip:  1.60 kB
dist/assets/hero-CLDdwZDr.png    13.05 kB
dist/assets/index-DykytF2W.css    4.10 kB │ gzip:  1.47 kB
dist/assets/index-m4QzboyB.js   193.35 kB │ gzip: 60.67 kB


$ npm run preview
> frontend@0.0.0 preview
> vite preview

  ➜  Local:   http://localhost:4173/
  ➜  Network: use --host to expose
  ➜  press h + enter to show help

http://localhost:4173/

![alt text](image-1.png)