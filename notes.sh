#!/usr/bin/env bash


set -euo pipefail
# -e : herhangi bir komut hata dönerse script sonlanır
# -u : tanımsız değişken kullanılırsa hata verir
# -o pipefail : pipe zincirinde oluşan hatalar scripti etkilendirir

NOTES_FILE="${NOTES_FILE:-notes.txt}"

ensure_notes_file() {
  if [[ ! -f "$NOTES_FILE" ]]; then
    touch "$NOTES_FILE"
  fi
}

add_note() {
  local note="$*"
  ensure_notes_file
  echo "$(date '+%F %T') - $note" >> "$NOTES_FILE"
  echo "Note added: $note"
}

list_notes() {
  if [[ -f "$NOTES_FILE" ]]; then
    nl -ba "$NOTES_FILE"
  else
    echo "No notes found."
  fi
}

search_notes() {
  local keyword="$1"
  grep -in -- "$keyword" "$NOTES_FILE" || echo "No matches for '$keyword'."
}

case "${1:-}" in
  add) shift; add_note "$@" ;;
  list) list_notes ;;
  search) shift; search_notes "$1" ;;
  *) echo "Usage: $0 {add <note> | list | search <keyword>}" ;;
esac
