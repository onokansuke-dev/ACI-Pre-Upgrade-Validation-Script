#!/bin/zsh

# --- Codespaces実験用のダミーデータ（Macコマンドを模倣） ---
SERIAL="MOCK-SERIAL-12345"
MODEL="Virtual-Mac-Codespaces"
OS_VER="16.0.0"
COMPUTER_NAME="Codespaces-Experiment-PC"
# ---------------------------------------------------

LOG_PATH="./inventory_test.json" # 実験用にカレントディレクトリに変更

# フォルダ作成（sudoなしで動くように ./corp に変更）
mkdir -p ./corp
LOG_PATH="./corp/inventory_$(date +%Y%m%d).json"

echo "JSONを生成中..."

# JSON形式でログ作成
cat <<EOF > "$LOG_PATH"
{
  "serial_number": "$SERIAL",
  "model": "$MODEL",
  "os_version": "$OS_VER",
  "computer_name": "$COMPUTER_NAME",
  "inventory_date": "$(date '+%Y-%m-%d %H:%M:%S')"
}
EOF

echo "完了！生成されたファイルの中身を確認します:"
cat "$LOG_PATH"