<div align="center">

# 🧠⚡ Claude Code Local

### Claude Code, running on your own Mac. No cloud. No API key. No waiting.

**Your Mac's chip runs the AI · Claude Code works exactly like it always does · nothing leaves your computer**

<a href="https://github.com/nicedreamzapp/claude-code-local/stargazers"><img src="https://img.shields.io/github/stars/nicedreamzapp/claude-code-local?style=for-the-badge&logo=github&color=f5c542&labelColor=1f2328" alt="GitHub stars"></a>
<a href="#-what-you-need"><img src="https://img.shields.io/badge/Mac-Apple_Silicon-111111?style=for-the-badge&logo=apple&logoColor=white" alt="Apple Silicon"></a>
<a href="#-your-code-stays-home"><img src="https://img.shields.io/badge/🔒_Privacy-100%25_Local-success?style=for-the-badge" alt="100% Local"></a>
<a href="#-use-it-with-trinidad-head"><img src="https://img.shields.io/badge/🌊_Best_with-Trinidad_Head-a855f7?style=for-the-badge" alt="Best with Trinidad Head"></a>
<a href="LICENSE"><img src="https://img.shields.io/badge/📜_License-MIT-yellow?style=for-the-badge" alt="MIT"></a>
<a href="https://discord.gg/ZdSqgAxUW"><img src="https://img.shields.io/discord/1497121921580404818?label=Discord&logo=discord&color=5865F2&style=for-the-badge" alt="Discord"></a>

</div>

<p align="center">
  <img src="assets/demo.gif" width="860" alt="Claude Code editing a file with Gemma 4 31B running locally on a Mac, no cloud">
  <br><em>A real session, unedited. Claude Code reads and edits the file, and the AI answering is running on the laptop.</em>
</p>

---

## 🛑 Hit your Claude usage limit?

Claude Code just said **"you've reached your usage limit"** and the reset is hours away? Keep working:
same Claude Code, same project, but the AI answering runs on your own Mac.

```bash
curl -fsSL https://raw.githubusercontent.com/nicedreamzapp/claude-code-local/main/install.sh | bash
```

That's it. It even works on a **16 GB MacBook**, and gets better the more memory your Mac has.

---

## 🌊 Use it with Trinidad Head

**Trinidad Head is the recommended terminal for running local models, on Mac and PC.** It's built
from scratch by the same person who made this project, and it makes long local-AI sessions nicer:

- 🪟 **Glass windows with a soft neon glow**, rounded and easy on the eyes
- 🌈 **A different color for every window**, so you can tell your local-model windows apart at a glance
- 🔠 **Bigger, easy-to-read text**
- 💬 **Your own prompts stand out** in a soft bubble, so you can find what you asked when you scroll back
- 🖱️ **Copy and paste just work**, even under Claude Code's calm focus view

<p align="center">
  <img src="https://raw.githubusercontent.com/nicedreamzapp/trinidad-head/main/docs/images/colors.jpg" width="860" alt="Three Trinidad Head windows, each glowing a different color">
</p>

👉 **[Get Trinidad Head](https://github.com/nicedreamzapp/trinidad-head)** · [project page](https://nicedreamzwholesale.com/software/trinidad-head/)

---

## 🔋 Out of Claude credits? Keep going.

When Claude runs out, type **`exit`** in Claude Code, then **`keep going`**. You get a short menu,
and **the same conversation carries on** with whichever model you pick:

- ☁️ **Free cloud models** from OpenRouter (add a free key, see below)
- 💻 **Models on your Mac** from the lineup below, sized to fit your memory

<p align="center">
  <img src="https://raw.githubusercontent.com/nicedreamzapp/trinidad-head/main/docs/images/keep-going.jpg" width="860" alt="The keep going menu: free cloud and local models to continue a Claude conversation">
</p>

`setup.sh` installs it for you. To add it by hand, or to turn on the free cloud models:

```bash
echo 'source "$HOME/claude-code-local/scripts/keepgoing-shell.sh"' >> ~/.zshrc   # the "keep going" command
mkdir -p ~/.config/claude-code-local
echo 'OPENROUTER_API_KEY=your-free-key' >> ~/.config/claude-code-local/keepgoing.env   # optional
```

Want a reminder at the bottom of every Claude window? Point your status line at
`scripts/statusline-keepgoing.sh`. It says *"💡 Out of Claude credits? Type exit, then keep going to
carry on with a free or local model."*

> 💡 Free cloud models can get busy later in the day. The models on your Mac are always there.

---

## 🤔 What is this, really?

Your Mac has a powerful graphics chip built in. This project uses it to run **big AI models right on
your computer** and plugs them into Claude Code, so the whole coding experience works offline:
editing files, managing projects, even driving your browser or talking out loud.

**The trick:** Claude Code speaks one language (Anthropic's), and local AI servers usually speak
another (OpenAI's). Most setups put a slow translator in between. This project's server speaks
Claude Code's language directly, so there's **nothing in the middle**, and that's what makes it fast.

```
📝 You  ──▶  🤖 Claude Code  ──▶  ⚡ this server (on your Mac)  ──▶  🧠 local model  ──▶  🖥️ your Mac's chip
```

---

## 💻 What you need

- 🍎 A Mac with **Apple Silicon** (M1 or newer)
- 🐍 **Python 3.12** (setup installs it for you)
- 🤖 **Claude Code**: `npm install -g @anthropic-ai/claude-code`

Setup looks at your Mac's memory and picks a model that fits:

| Your Mac's memory | The model you get |
|---|---|
| **16 GB** (MacBook Air, base models) | 🟡 Hermes 4 14B — yes, this works |
| **32–48 GB** (Pro) | 🟢 Gemma 4 12B |
| **64–95 GB** (Max) | 🟢 Gemma 4 31B |
| **96 GB and up** (Max, Ultra) | 🔵 Qwen 3.5 122B, plus room for 🟠 Llama 3.3 70B and more |

---

## 🚀 Get started

**One command:**

```bash
curl -fsSL https://raw.githubusercontent.com/nicedreamzapp/claude-code-local/main/install.sh | bash
```

**Or read the script first:**

```bash
git clone https://github.com/nicedreamzapp/claude-code-local
cd claude-code-local
bash setup.sh
```

Setup picks your model, downloads it, installs the server, and puts **`Claude Local.command`** on
your Desktop. **Double-click it** and you're coding locally. 🎉

> 🐛 **Asked to sign in to a Claude account?** Your `claude` is too old. Update it:
> `npm install -g @anthropic-ai/claude-code`

<details>
<summary>🛠️ Prefer to do it by hand?</summary>

```bash
# 1. Set up the MLX environment
python3.12 -m venv ~/.local/mlx-server
~/.local/mlx-server/bin/pip install mlx-lm

# 2. Pick a model and download it (one time)
bash scripts/download-and-import.sh gemma   # or 'llama' or 'qwen'

# 3. Start the server
MLX_MODEL=divinetribe/gemma-4-31b-it-abliterated-4bit-mlx \
  bash scripts/start-mlx-server.sh

# 4. Launch Claude Code against it
ANTHROPIC_BASE_URL=http://localhost:4000 \
ANTHROPIC_API_KEY=sk-local \
claude --model claude-sonnet-4-6
```

`setup.sh` installs the server as a **symlink** back to `proxy/server.py` in this repo, so if you edit
it, just restart the server.

</details>

---

## 🥊 Pick your AI

Same server, same Claude Code. Swap one setting and you swap the brain. Our own ready-to-use builds
live at **[huggingface.co/divinetribe](https://huggingface.co/divinetribe)**.

| | Model | Nickname | Good for |
|---|---|---|---|
| 🟡 | **Hermes 4 14B** | The one that runs on your laptop | Everyday edits on a regular MacBook |
| 🟢 | **Gemma 4 31B** | The quick one | Daily coding |
| ✨ | **Muse-Glimmer 30B** | The fresh agent | Tool use, and it can see images |
| 🟣 | **Qwen 3.8 27B** | The full-precision sprinter | Careful coding plus vision |
| 🟠 | **Llama 3.3 70B** | The wise one | The hardest thinking |
| 🔵 | **Qwen 3.5 122B** | The beast | Fastest answers on big Macs |
| 🐳 | **DeepSeek V4 Flash** | The long-memory whale | Huge projects, via [`ds4`](https://github.com/antirez/ds4) |

**Which one should I run?** We test them on real agent tasks in the open:
**[the Agent-12 leaderboard](https://nicedreamzapp.github.io/agent12/)**. Honest note: those scores
come from Agent-12's own lean test harness (Anvil), **not from inside Claude Code**. Claude Code
sends the model a lot more per turn, so the same model can score and time differently here.

Sizes, speeds and memory needs for every model are in the **[full guide](docs/FULL-GUIDE.md)**.

> ⚠️ **"Abliterated"** models have their built-in refusals turned down. That's not a general upgrade,
> and each model's own license still applies. Please use them responsibly.

---

## 🎮 Ways to use it

Each one is a double-click launcher in [`launchers/`](launchers/).

| | Mode | What it does |
|---|---|---|
| 🤖 | **Code** | Claude Code with a local model: `Claude Local`, `Gemma 4 Code`, `Llama 70B` |
| ⚡ | **Native Engine** | Our own lightweight agent for the fastest replies: the `(Native Engine)` launchers |
| 🌐 | **Browser** | The local AI drives your real browser: `Browser Agent` ([guide](docs/BROWSER-AGENT.md)) |
| 🎤 | **Hands-free voice** | Talk to it and hear it answer in your own voice: `Narrative Gemma` ([guide](docs/VOICE-MODE.md)) |
| 📱 | **Phone** | Text your Mac from your iPhone and get answers back ([guide](docs/PHONE-CONTROL.md)) |

---

## 🔒 Your code stays home

**Your code never leaves your Mac.** No cloud model, no tracking, no "anonymous analytics".

The launchers switch off Claude Code's own background internet traffic with Anthropic's documented
settings (thanks [@tadrianonet](https://github.com/tadrianonet), PR #32):

```bash
CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1
DISABLE_AUTOUPDATER=1
CLAUDE_CODE_DISABLE_OFFICIAL_MARKETPLACE_AUTOINSTALL=1
CLAUDE_CODE_DISABLE_BACKGROUND_TASKS=1
```

**Check it yourself:** during a session, `lsof -p $(pgrep -f claude)` shows only `localhost:4000`.

> 🧹 We **removed LiteLLM** after supply-chain concerns and re-checked every dependency. Anything
> with unexplained network calls didn't ship. The full audit is in the [full guide](docs/FULL-GUIDE.md).
>
> ☁️ The one exception is your own choice: picking a **free cloud** model in `keep going` sends that
> conversation to OpenRouter.

---

## 📚 Want the details?

| | |
|---|---|
| 📖 **[Full technical guide](docs/FULL-GUIDE.md)** | Every model table, benchmark, tuning setting and design note |
| 📊 [Benchmarks](docs/BENCHMARKS.md) · 🔧 [Tool-call reliability](docs/TOOL-CALL-RELIABILITY.md) | The numbers and how they were measured |
| 🎤 [Voice mode](docs/VOICE-MODE.md) · 🌐 [Browser agent](docs/BROWSER-AGENT.md) · 📱 [Phone control](docs/PHONE-CONTROL.md) · 🔌 [MCP servers](docs/MCP-SERVERS.md) | Everything the launchers can do |
| 📁 [What's in this repo](docs/REPO-LAYOUT.md) · 🙏 [Credits](docs/CREDITS.md) | The tour and the thank-yous |

---

## 🧩 The local-first family

Each one works on its own. Together they take Claude Code off the keyboard and off the screen.

| | Project | What it does |
|---|---|---|
| 🌊 | **[Trinidad Head](https://github.com/nicedreamzapp/trinidad-head)** | The terminal to run it all in, on Mac and PC |
| 🎤 | [NarrateClaude](https://github.com/nicedreamzapp/NarrateClaude) | Talk to Claude and hear it answer in your cloned voice |
| 🌐 | [browser-agent](https://github.com/nicedreamzapp/browser-agent) | Drives your real browser |
| 🚦 | [browser-broker](https://github.com/nicedreamzapp/browser-broker) | Gives each AI agent its own browser tab so nobody fights |
| 📱 | [claude-screen-to-phone](https://github.com/nicedreamzapp/claude-screen-to-phone) | Control Claude Code from your iPhone |
| 🛟 | [claude-failover](https://github.com/nicedreamzapp/claude-failover) | Keep cloud Claude first, flip to local with one command |

---

## 🤝 Help make it better

Ideas, bug reports, a launcher for a model we don't run: open an
[issue](https://github.com/nicedreamzapp/claude-code-local/issues/new) or a PR, every one gets read.
We especially love hearing from people on older or smaller Macs about which models really fit.

**Thank you, contributors:** [@0xshugo](https://github.com/0xshugo) ·
[@asdmoment](https://github.com/asdmoment) · [@kulveersingh](https://github.com/kulveersingh) ·
[@tripathiprateek](https://github.com/tripathiprateek) · [@tadrianonet](https://github.com/tadrianonet) ·
[@kevbarns](https://github.com/kevbarns) · [@KaoCSC](https://github.com/KaoCSC) ·
[@zwolf25](https://github.com/zwolf25). What each of them fixed is in
the [full guide](docs/FULL-GUIDE.md#-credits).

---

<div align="center">

Built by **[Matt Macosko](https://x.com/NiceDreamzApps)** in Arcata, California: one person, no team, no investors.
**Open to work** on local AI and Apple Silicon: matt@ineedhemp.com

[Nice Dreamz software](https://nicedreamzwholesale.com/software/) · [YouTube demos](https://www.youtube.com/@nicedreamzapps) · [Discord](https://discord.gg/ZdSqgAxUW)

📜 **MIT License**, use it however you want. ⭐ **Star the repo if it helped you!**

</div>
