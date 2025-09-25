# GitHub Models API Test

A simple tool to test GitHub Models API both locally and in the browser.

## 🚀 Live Demo

**GitHub Pages URL:** https://juanmanueldaza.github.io/github-models-api-test

## 🔧 Local Development

### Method 1: Using the bash script (Recommended for local use)
```bash
./try.sh
```
- Uses environment variables from `.env` file
- Outputs formatted JSON to `response.json`
- Secure (token stays in `.env`)

### Method 2: Using the HTML file
1. Open `index.html` in your browser
2. Enter your GitHub token manually
3. Open Developer Tools (F12) → Console tab
4. Click "Send Request"

## 🌐 GitHub Pages Deployment

This repository is already set up for GitHub Pages! The live demo is available at:
**https://juanmanueldaza.github.io/github-models-api-test**

To deploy your own version:
1. **Fork this repository** or create a new one
2. **Upload the files**:
   - `index.html` (the main HTML file)
   - `README.md` (this file)
   - `.gitignore` (to prevent committing sensitive files)
3. **Enable GitHub Pages**:
   - Go to repository Settings
   - Scroll to "Pages" section  
   - Source: Deploy from a branch
   - Branch: main / root
   - Save

## 🔐 Security

- **Local bash script** (`try.sh`): Uses your token from `.env` file securely
- **HTML interface** (`index.html`): Requires manual token entry for security
- **Never commit your `.env` file** to public repositories (it's in `.gitignore`)

## 📁 File Structure

```
.
├── try.sh              # Bash script for API testing (local use)
├── .env               # Environment variables (local only, not committed)
├── .env.example       # Template for environment variables
├── index.html         # Secure HTML interface (works locally and on GitHub Pages)
├── response.json      # API responses from bash script (generated)
├── .gitignore         # Prevents committing sensitive files
└── README.md          # This file
```

## 🎯 Usage

### Local Development:
```bash
# Using bash script (outputs to response.json)
./try.sh

# Using bash script with custom message
./try.sh "What is the capital of Spain?"

# Using HTML interface locally
# Just open index.html in your browser and enter your token
```

### GitHub Pages (Public Deployment):
1. Visit https://juanmanueldaza.github.io/github-models-api-test
2. Enter your GitHub token (get one from [GitHub Settings](https://github.com/settings/tokens))
3. Enter your message
4. Open browser console (F12)
5. Click "Send Request"
6. View the formatted response in console

## 🔑 Getting a GitHub Token

1. Go to [GitHub Settings → Developer settings → Personal access tokens](https://github.com/settings/tokens)
2. Click "Generate new token (classic)"
3. Give it a name like "GitHub Models API Test"
4. Select appropriate scopes (usually just the default ones work)
5. Copy the token (starts with `github_pat_`)

## 🛠️ Configuration

For local development, copy `.env.example` to `.env` and edit:
- `GITHUB_TOKEN`: Your GitHub personal access token
- `MODEL`: The AI model to use (e.g., `openai/gpt-4.1`)
- `DEFAULT_MESSAGE`: Default question to ask the AI

## 📝 Example API Response

```json
{
  "choices": [
    {
      "message": {
        "content": "The capital of France is Paris.",
        "role": "assistant"
      }
    }
  ],
  "model": "gpt-4.1-2025-04-14",
  "usage": {
    "total_tokens": 22
  }
}
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).