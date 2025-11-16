# akkin's dotfiles

Claude Code用のカスタムコマンドとプロジェクト管理設定

## 📋 概要

このリポジトリは、Claude Codeで使用するカスタムコマンドと、全プロジェクトの一覧を管理します。

### 含まれるもの

- **Claude カスタムコマンド** (`.claude/commands/`)
  - `/projects` - プロジェクト選択コマンド
  - `/commands` - コマンド一覧表示
- **全プロジェクト一覧** (`ALL_PROJECTS.md`)
  - 全プロジェクトの概要と詳細へのリンク
- **セットアップスクリプト** (`setup.sh`)
  - 新しいマシンでの自動セットアップ

## 🚀 新しいマシンでのセットアップ

### 1. リポジトリをclone

```bash
cd ~
git clone https://github.com/YOUR_USERNAME/dotfiles.git
cd dotfiles
```

### 2. セットアップスクリプトを実行

```bash
./setup.sh
```

これで、以下のシンボリックリンクが自動で作成されます：

- `~/ALL_PROJECTS.md` → `~/dotfiles/ALL_PROJECTS.md`
- `~/.claude/commands/*.md` → `~/dotfiles/claude/commands/*.md`

### 3. Claude Codeを起動して確認

```bash
# コマンド一覧を表示
/commands

# プロジェクト選択
/projects
```

## 📁 ファイル構造

```
dotfiles/
├── README.md                    # このファイル
├── setup.sh                     # セットアップスクリプト
├── ALL_PROJECTS.md              # 全プロジェクト一覧
└── claude/
    └── commands/
        ├── projects.md          # /projects コマンド
        └── commands.md          # /commands コマンド
```

## 🎯 使い方

### コマンド一覧を確認

Claude Codeで以下を実行：

```
/commands
```

設定済みのカスタムコマンド一覧と説明が表示されます。

### プロジェクトを選択

Claude Codeで以下を実行：

```
/projects
```

プロジェクト選択画面が表示され、選択したプロジェクトの `PROJECT_CONTEXT.md` が自動で読み込まれます。

## 🔧 カスタムコマンドの追加

新しいコマンドを追加する場合：

1. `claude/commands/` ディレクトリに新しい `.md` ファイルを作成
2. ファイル名（拡張子なし）がコマンド名になります
3. コミットしてpush
4. 他のマシンで `git pull` して `./setup.sh` を再実行

例：
- `claude/commands/deploy.md` → `/deploy` コマンド
- `claude/commands/setup.md` → `/setup` コマンド

## 📝 プロジェクト固有のコンテキスト

各プロジェクトの `PROJECT_CONTEXT.md` は、それぞれのプロジェクトリポジトリで管理されています：

1. **メールディレクトリサイト**
   - パス: `/Users/akkin/my-first-miyabi-agentv2/mail-directory-site/PROJECT_CONTEXT.md`

2. **医療AIコメント生成ツール**
   - パス: `/Users/akkin/medical-ai-comment-generator/PROJECT_CONTEXT.md`

3. **医療記事生成AIツール**
   - パス: `/Users/akkin/medical-content-ai/PROJECT_CONTEXT.md`

4. **リペアセルクリニック**
   - パス: `/Users/akkin/repaircell-clinic-project/PROJECT_CONTEXT.md`

## 🔄 更新方法

### このマシンで変更した場合

```bash
cd ~/dotfiles
git add .
git commit -m "feat: 新しいコマンドを追加"
git push origin main
```

### 他のマシンで変更を反映

```bash
cd ~/dotfiles
git pull origin main
./setup.sh  # シンボリックリンクを再作成
```

## 💡 Tips

- **バックアップ**: 既存のファイルは自動的に `.backup` 拡張子付きでバックアップされます
- **複数マシン**: このリポジトリを複数のマシンで共有できます
- **カスタマイズ**: 自分用にカスタムコマンドを追加できます

## 📅 最終更新

**更新日**: 2025年11月16日
**作成者**: akkin
