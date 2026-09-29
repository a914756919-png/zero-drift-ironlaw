[README.md](https://github.com/user-attachments/files/32810986/README.md)
# 🔴 强制零漂移铁律 v2.6 · Zero-Drift Iron Law v2.6

> 让你的 AI 助手再也不跑偏、不撒谎、不泄密、不空转。
> Keep your AI assistant from ever drifting, lying, leaking secrets, or spinning in tool loops.

## 这个 Skill 解决什么 / What this Skill fixes

用过 AI 编程助手的人，几乎都遇到过这些"顽疾"。Anyone who has used an AI coding assistant has hit these "illnesses":

- **漂移 Drift**：让你做 A，它做着做着变成 A+B+C，最后交付的东西和你要的"天差地别" — You ask for A, it slowly becomes A+B+C, and the final result is worlds apart from what you wanted.
- **撒谎 Lying**：说"已完成""已验证"，实际没做没跑 — Claims "done"/"verified" without actually doing or running anything.
- **泄密 Leakage**：把 API key、绝对路径、手机号原样写进代码/文档 — Writes API keys, absolute paths, and phone numbers straight into code or docs.
- **空转 Tool loops**：同一个失败动作反复重试，撞墙 10 次还不换策略 — Retries the same failed action 10+ times without changing strategy.

本 Skill 用一套强制反思体系（R1-R10）把这些问题全部锁死。每次交付前，AI 必须完成七步反思 + 严格忠实校验 + 通用纪律校验，输出带"开头执行声明 + 末尾反思摘要"的合格交付。
This Skill locks all of these down with a mandatory reflection system (R1–R10). Before every delivery, the AI must complete a 7-step reflection + strict-fidelity check + general discipline check, and output a qualified delivery with an opening statement and a closing reflection summary.

## 核心能力 / Core features

| 维度 Dimension | 内容 What it does |
|------|------|
| 防漂移 Anti-drift | R9 通用纪律校验：重述要求→一对一映射→抑制顺手冲动→连续失败警告→工具一致性→工具失控→最终一致性，7 步前置自检 — R9 general discipline check: restate requirement → 1:1 mapping → suppress impulse → consecutive-failure warning → tool consistency → tool runaway → final consistency, 7-step front-loaded check |
| 防撒谎 Anti-lying | R8 严格忠实原则：禁止撒谎/偷懒/漂移/自作主张，漂移检测三问 — R8 strict fidelity principle: no lying / slacking / drifting / acting on your own, with a 3-question drift check |
| 防泄密 Anti-leakage | 核心规则12 隐私脱敏：交付前扫描 key/凭证/路径/PII，发现即脱敏 — Rule 12 privacy sanitization: scan keys / credentials / paths / PII before delivery, mask them on sight |
| 防空转 Anti-tool-loop | 核心规则13 工具失控检测 + R9 Step 7：同一方法失败 2 次必须换策略 — Rule 13 tool-runaway detection + R9 Step 7: switch strategy after 2 consecutive failures |
| 防自嗨 Anti-self-indulgence | 用户锚定原则：用户指定方向是唯一事实源，存疑即停，未经确认不做选择 — User-anchoring principle: the user's stated direction is the single source of truth; halt on doubt, never decide without confirmation |

## 购买 / Buy

- **国内 Buyers in China**：人民币 ¥3 一次买断 → 前往 [Gumroad](https://gumroad.com) 搜索本商品 — RMB ¥3 one-time purchase, visit Gumroad and search for this product.
- **国外 International**：$1 一次买断 — $1 one-time purchase.
- 一次付费，永久使用当前版本。后续 v2.7 / v3.0 更新通过 GitHub 仓库发布，重跑安装器即可升级 — Pay once, keep the current version forever. Later v2.7/v3.0 updates ship via the GitHub repo; re-run the installer to upgrade.

## 文件清单 / File layout

```
zero-drift-ironlaw/
├── SKILL.md                 # 铁律全文（安装内容源）full law text (install content source)
├── rules/
│   └── zero-drift-ironlaw.md  # 精简全局规则版（TRAE user_rules 专用）lightweight global-rule edition for TRAE user_rules
├── install.bat              # Windows 一键安装（双击即装）Windows one-click install (double-click)
├── install.sh               # macOS / Linux 一键安装（一行命令）macOS/Linux one-click install (one line)
└── README.md                # 本文件 this file
```

## 快速开始（30 秒）/ Quick start (30s)

**关键认知 Key idea**：要让"任何新项目、任何新对话"都被把关，必须把铁律装进平台的**全局指令层**（不是项目级），这样每个新会话都会自动带上它。
To guard every new project and every new conversation, the law must be installed into the platform's **global instruction layer** (not project-level), so each new session carries it automatically.

### Windows（一键安装 One-click install）

1. 从 Gumroad 付款后下载 zip，解压 — After paying on Gumroad, download the zip and unzip.
2. **双击 `install.bat`** — Double-click `install.bat`.
3. 脚本自动检测 TRAE / Claude Code / Cursor，写入各自全局位置，弹出介绍文案窗口 — It auto-detects TRAE / Claude Code / Cursor, writes to each global location, and shows an intro popup.
4. 新建对话测试：让 AI 写点东西，看它是否输出"铁律执行声明 + 反思摘要"——看到即生效 — Start a new chat and ask the AI to write something; if you see the "statement + reflection summary", it works.

### macOS / Linux（一键安装 One-click install）

1. 付款后打开终端，执行一行命令 — Open a terminal and run one line:

   ```bash
   curl -fsSL https://raw.githubusercontent.com/a914756919-png/zero-drift-ironlaw/main/install.sh | bash
   ```

2. 脚本自动下载并配置 TRAE / Claude Code / Cursor 的全局位置 — It auto-downloads and configures global locations for TRAE / Claude Code / Cursor.
3. 新建对话测试，看到"铁律执行声明"即生效 — Start a new chat and verify you see the opening statement.

### 网页平台（ChatGPT 网页版 / DeepSeek / 通义等）/ Web platforms

不支持脚本的平台：手动把 `SKILL.md` 全文粘贴到"自定义指令 / Custom Instructions"即可（可省略版本历史章节）。
For platforms without scripts, paste the full `SKILL.md` into "Custom Instructions" (you may omit the version-history section).

## 安装后效果 / After installing

- 每个新项目、每个新对话，AI 都会先执行 R9 前置自检再动手 — Every new project and conversation, the AI runs the R9 front-loaded check before acting.
- 每次回复开头带铁律执行声明，末尾带反思摘要 — Every reply opens with the law statement and ends with a reflection summary.
- 发现 AI 跑偏、撒谎、泄密、空转时，你有明确的判据和红线去质询 — You have clear criteria and red lines to challenge drift, lying, leakage, and tool loops.

## 注意事项 / Notes

- 铁律强度依赖你把它装进**全局**配置：只装进单个项目的话，仅该项目生效 — Strength depends on installing into **global** config; project-only install limits it to that project.
- 各平台全局配置的具体路径以该平台最新文档为准（安装器已标注常见位置）— Use each platform's latest docs for exact global paths (the installer notes common ones).
- 铁律是"行为规则"，不包含任何用户个人数据，可安全分发 — It is behavior rules with no personal data, safe to distribute.
- 一键安装器仅写入本机全局配置目录，不收集、不上传任何数据 — The installer only writes to local global config; it collects and uploads nothing.

## 更新记录 / Changelog

- **v2.6**：新增隐私脱敏 + 工具失控检测（本版本）adds privacy sanitization + tool-runaway detection (this version)
- **v2.5**：新增 R9 通用纪律校验 + R10 视觉交付专项升级 adds R9 general discipline check + R10 visual-delivery upgrade
- 完整版本历史见 SKILL.md 末尾 full version history at the end of SKILL.md
