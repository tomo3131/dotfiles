# 全プロジェクト一覧 - akkinのポートフォリオ

**最終更新**: 2025年11月16日

このファイルは、akkinが管理する全プロジェクトの概要と、各プロジェクトの詳細情報へのリンクを提供します。

---

## 📁 プロジェクト一覧

### 1. メールディレクトリサイト（日本版Milled）

**ステータス**: ✅ MVP完成、本番環境デプロイ済み
**ディレクトリ**: `/Users/akkin/my-first-miyabi-agentv2/mail-directory-site/`
**詳細**: [PROJECT_CONTEXT.md](/Users/akkin/my-first-miyabi-agentv2/mail-directory-site/PROJECT_CONTEXT.md)

#### 概要
- **目的**: 日本のEコマース企業やブランドが配信するプロモーションメールを自動収集し、検索可能なディレクトリとして提供
- **技術**: Next.js 14, TypeScript, Supabase, Vercel
- **ビジネスモデル**: フリーミアム + SaaSサブスクリプション（¥9,800/月〜）
- **収益目標**: 年間1,000万円以上

#### 主な機能
- ランディングページ
- ブランドディレクトリ
- メール詳細ページ
- Supabaseデータベース統合
- Vercel本番環境デプロイ

#### 本番URL
- https://frontend-5f594jw71-tomos-projects-c98e509c.vercel.app

#### 次のステップ
- ユーザー認証機能
- 検索機能
- Stripe決済統合

---

### 2. 医療記事AI医師コメント生成ツール

**ステータス**: ✅ MVP完成、ローカル動作確認済み
**ディレクトリ**: `/Users/akkin/medical-ai-comment-generator/`
**詳細**: [PROJECT_CONTEXT.md](/Users/akkin/medical-ai-comment-generator/PROJECT_CONTEXT.md)

#### 概要
- **目的**: 医療記事の「医師コメント」箇所を自動検出し、Claude AI (Opus)を使って医師の見解を自動生成
- **技術**: Node.js, Express, Claude 3 Opus, Pure HTML/CSS/JavaScript
- **ターゲット**: 医療メディア運営者、医療ライター、ヘルスケア企業
- **目標**: 医療コンテンツ制作時間を50%削減

#### 主な機能
- 記事内の「医師コメント」箇所を自動検出
- Claude AI (Opus)による高品質な医師見解の生成
- ユーザー指定の要望に沿ったコメント生成
- 複数箇所の同時処理

#### ローカル起動
```bash
cd /Users/akkin/medical-ai-comment-generator
node server.js
open medical-content-enhancer.html
```

#### 次のステップ
- Vercelへのデプロイ
- ユーザー認証機能
- 生成履歴の保存

---

### 3. 医療記事生成AIツール

**ステータス**: ✅ MVP完成、ローカル動作確認済み
**ディレクトリ**: `/Users/akkin/medical-content-ai/`
**詳細**: [PROJECT_CONTEXT.md](/Users/akkin/medical-content-ai/PROJECT_CONTEXT.md)

#### 概要
- **目的**: 医療に特化した高品質な記事を生成するAIツール。SEO分析機能により、記事作成前に投資対効果を判断
- **技術**: Next.js 14, TypeScript, Tailwind CSS, マルチLLM（Gemini推奨）
- **SEO API**: Keywords Everywhere API（推奨）, DataForSEO API
- **目標**: 記事作成時間を70%削減、SEO最適化により検索流入を3倍に

#### 主な機能
- SEOキーワード分析（検索ボリューム、競合性、トレンド）
- マルチLLM対応（OpenAI, Claude, Gemini）
- 医療記事最適化
- コスト最適化（自動LLM選択）
- リアルタイムSEOデータ分析

#### ローカル起動
```bash
cd /Users/akkin/medical-content-ai
npm run dev
# → http://localhost:3000
```

#### 次のステップ
- Vercelへのデプロイ
- ユーザー認証機能
- 記事保存機能

---

### 4. リペアセルクリニック（Repair Cell Clinic）

**ステータス**: 🌐 Webサイト運営中、n8n自動化完了
**ディレクトリ**: `/Users/akkin/repaircell-clinic-project/`
**詳細**: [PROJECT_CONTEXT.md](/Users/akkin/repaircell-clinic-project/PROJECT_CONTEXT.md)

#### 概要
- **目的**: 再生医療・幹細胞治療を提供するクリニックのWebサイト運営および自動化システムの構築
- **Webサイト**: https://fuelcells.org/
- **技術**: n8n, Notion, SEO分析ツール
- **事業内容**: 幹細胞治療、再生医療、エクソソーム治療

#### 主な機能
- n8nワークフロー自動化
- Notion連携
- 定期的なSEO分析

#### 管理URL
- **n8n管理画面**: https://repaircell.app.n8n.cloud
- **Workflow ID**: M6wyXLwws1bjnCbO

#### 次のステップ
- LP（ランディングページ）の作成
- SEO改善施策
- コンバージョントラッキング設定

---

## 📊 プロジェクト分類

### SaaSプロダクト
1. **メールディレクトリサイト** - 年間1,000万円目標
2. **医療記事生成AIツール** - SEO最適化ツール

### ツール・ユーティリティ
3. **医療AIコメント生成ツール** - 医療メディア向け

### クライアントワーク
4. **リペアセルクリニック** - クリニックWebサイト運営・自動化

---

## 🎯 優先度別アクションアイテム

### 🔴 最優先（今週中）
- [ ] **メールディレクトリサイト**: ユーザー認証機能の実装
- [ ] **リペアセルクリニック**: LPの作成

### 🟡 中優先（今月中）
- [ ] **医療記事生成AIツール**: Vercelへのデプロイ
- [ ] **医療AIコメント生成ツール**: 環境変数管理の改善

### 🟢 低優先（来月以降）
- [ ] **メールディレクトリサイト**: Stripe決済統合
- [ ] **医療記事生成AIツール**: WordPress自動投稿機能

---

## 💰 収益目標サマリー

| プロジェクト | 月間目標 | 年間目標 | 現在のステータス |
|:---|---:|---:|:---|
| メールディレクトリサイト | ¥833,333 | ¥10,000,000 | MVP完成 |
| 医療記事生成AIツール | ¥100,000 | ¥1,200,000 | 開発中 |
| 医療AIコメント生成ツール | ¥50,000 | ¥600,000 | 開発中 |
| リペアセルクリニック | （クライアントワーク） | （継続収益） | 運営中 |
| **合計** | **¥983,333** | **¥11,800,000** | - |

---

## 🛠️ 共通技術スタック

### フロントエンド
- Next.js 14 (App Router)
- TypeScript
- Tailwind CSS
- shadcn/ui

### バックエンド
- Node.js
- Supabase
- Next.js API Routes

### AI/LLM
- OpenAI GPT-4
- Anthropic Claude
- Google Gemini

### インフラ
- Vercel
- n8n
- AWS (予定)

### データベース
- Supabase (PostgreSQL)
- Notion

---

## 📚 ドキュメント体系

各プロジェクトには以下のドキュメントが整備されています：

### 必須ドキュメント
- **PROJECT_CONTEXT.md**: プロジェクト全体の情報（本ファイルからリンク）
- **README.md**: プロジェクト概要と使い方

### 推奨ドキュメント
- **DEPLOYMENT_GUIDE.md**: デプロイ手順
- **SETUP_GUIDE.md**: セットアップ手順
- **CHANGELOG.md**: 変更履歴

---

## 🔄 新しいセッションを開始する際の使い方

### Claude Codeで新しいセッションを開始したら：

1. **このファイルを読む**:
   ```
   まず /Users/akkin/ALL_PROJECTS.md を読んで
   ```

2. **特定のプロジェクトに取り組む場合**:
   ```
   メールディレクトリサイトのPROJECT_CONTEXT.mdを読んで、ユーザー認証機能を実装して
   ```

3. **プロジェクト横断的な質問**:
   ```
   全プロジェクトのステータスを教えて
   ```

---

## 📅 更新履歴

| 日付 | 更新内容 | 更新者 |
|:---|:---|:---|
| 2025-11-16 | 初版作成、4プロジェクトのPROJECT_CONTEXT.md作成完了 | Claude Code |

---

## 🤝 連絡先

- **開発者**: akkin
- **Email**: （必要に応じて追加）
- **GitHub**: （必要に応じて追加）

---

**次回のセッションでは、このファイルを最初に読み込むことで、すべてのプロジェクトの前提情報を理解した状態で作業を開始できます。**
