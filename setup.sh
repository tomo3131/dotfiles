#!/bin/bash

# dotfiles セットアップスクリプト
# 新しいマシンでこのスクリプトを実行すると、シンボリックリンクが自動で張られます

set -e

echo "🚀 dotfiles セットアップを開始します..."

# カレントディレクトリを取得
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# ホームディレクトリ
HOME_DIR="$HOME"

echo "📂 dotfilesディレクトリ: $DOTFILES_DIR"
echo "🏠 ホームディレクトリ: $HOME_DIR"

# .claude/commands ディレクトリを作成（存在しない場合）
echo ""
echo "📁 .claude/commands ディレクトリを作成中..."
mkdir -p "$HOME_DIR/.claude/commands"

# 既存のファイルをバックアップ
backup_if_exists() {
    local file=$1
    if [ -e "$file" ] && [ ! -L "$file" ]; then
        echo "⚠️  既存のファイルをバックアップ: $file → ${file}.backup"
        mv "$file" "${file}.backup"
    fi
}

# シンボリックリンクを張る
create_symlink() {
    local src=$1
    local dest=$2

    # 既存のシンボリックリンクを削除
    if [ -L "$dest" ]; then
        echo "🔗 既存のシンボリックリンクを削除: $dest"
        rm "$dest"
    fi

    # バックアップ
    backup_if_exists "$dest"

    # シンボリックリンクを作成
    echo "🔗 シンボリックリンクを作成: $dest → $src"
    ln -s "$src" "$dest"
}

# ALL_PROJECTS.md のシンボリックリンク
echo ""
echo "📄 ALL_PROJECTS.md のシンボリックリンクを作成中..."
create_symlink "$DOTFILES_DIR/ALL_PROJECTS.md" "$HOME_DIR/ALL_PROJECTS.md"

# .claude/commands/ のシンボリックリンク
echo ""
echo "📄 Claude コマンドのシンボリックリンクを作成中..."
for cmd_file in "$DOTFILES_DIR/claude/commands"/*.md; do
    if [ -f "$cmd_file" ]; then
        filename=$(basename "$cmd_file")
        create_symlink "$cmd_file" "$HOME_DIR/.claude/commands/$filename"
    fi
done

echo ""
echo "✅ セットアップ完了！"
echo ""
echo "📋 次のステップ:"
echo "  1. Claude Codeを起動"
echo "  2. /commands と入力してコマンド一覧を確認"
echo "  3. /projects と入力してプロジェクト選択画面を表示"
echo ""
echo "🎉 他のマシンでは、このリポジトリをcloneして setup.sh を実行してください。"
