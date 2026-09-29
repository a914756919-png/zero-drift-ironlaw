#!/usr/bin/env bash
#
# Zero-Drift Iron Law v2.6 — one-click installer (macOS / Linux)
# Usage:  curl -fsSL https://raw.githubusercontent.com/a914756919-png/zero-drift-ironlaw/main/install.sh | bash
#
set -euo pipefail

REPO="https://raw.githubusercontent.com/a914756919-png/zero-drift-ironlaw/main"
HOME_DIR="$HOME"
INSTALLED=0

echo ""
echo "  ============================================"
echo "    Zero-Drift Iron Law v2.6 installer"
echo "  ============================================"
echo ""

TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

echo "  [1/4] 下载铁律文件..."
curl -fsSL "$REPO/SKILL.md" -o "$TMPDIR/SKILL.md"
curl -fsSL "$REPO/rules/zero-drift-ironlaw.md" -o "$TMPDIR/rule.md"
echo "  [OK] 下载完成"

echo "  [2/4] 检测已安装的 AI 工具..."

# --- TRAE (TraeCode / TraeWork) ---
if [ -d "$HOME_DIR/.trae-cn" ]; then
  mkdir -p "$HOME_DIR/.trae-cn/skills/zero-drift-ironlaw"
  cp "$TMPDIR/SKILL.md" "$HOME_DIR/.trae-cn/skills/zero-drift-ironlaw/SKILL.md"
  if [ -d "$HOME_DIR/.trae-cn/user_rules" ]; then
    cp "$TMPDIR/rule.md" "$HOME_DIR/.trae-cn/user_rules/zero-drift-ironlaw.md"
  fi
  echo "  [OK] TRAE Skill + 全局规则已安装"
  INSTALLED=1
fi

# --- Claude Code ---
if [ -d "$HOME_DIR/.claude" ]; then
  CLAUDE_FILE="$HOME_DIR/.claude/CLAUDE.md"
  if [ ! -f "$CLAUDE_FILE" ]; then
    cp "$TMPDIR/SKILL.md" "$CLAUDE_FILE"
  else
    if ! grep -q "强制零漂移铁律" "$CLAUDE_FILE"; then
      printf "\n# ===== 强制零漂移铁律 v2.6 =====\n" >> "$CLAUDE_FILE"
      cat "$TMPDIR/SKILL.md" >> "$CLAUDE_FILE"
    fi
  fi
  echo "  [OK] Claude Code 已配置"
  INSTALLED=1
fi

# --- Cursor ---
if [ -d "$HOME_DIR/.cursor" ]; then
  mkdir -p "$HOME_DIR/.cursor/rules"
  cp "$TMPDIR/SKILL.md" "$HOME_DIR/.cursor/rules/zero-drift-ironlaw.mdc"
  echo "  [OK] Cursor 规则已安装"
  INSTALLED=1
fi

if [ "$INSTALLED" = "0" ]; then
  echo "  [!!] 未检测到 TRAE / Claude Code / Cursor，请确认已安装其一后重试"
fi

echo "  [3/4] 验证..."
ls -la "$HOME_DIR/.trae-cn/skills/zero-drift-ironlaw/SKILL.md" 2>/dev/null || true

echo ""
echo "  ============================================"
echo "    安装完成！"
echo "    效果：每次 AI 回复，开头带【铁律执行声明】，"
echo "    末尾带【反思自检】。新建对话即可验证。"
echo "    一次购买，永久更新。感谢支持！"
echo "  ============================================"
echo ""
