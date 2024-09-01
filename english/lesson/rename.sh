#!/bin/bash

# Định nghĩa mảng tên file gốc
old_names=(
"0010sentence.md"
"0020noun.md"
"0030adjective.md"
"0040pronoun.md"
"0050adverb.md"
"0060preposition.md"
"0070conjunction.md"
"0080verb.md"
)

# Định nghĩa mảng tên file mới tương ứng
new_names=(
"1_01_0_sentence.md"
"1_02_0_noun.md"
"1_03_0_adjective.md"
"1_04_0_pronoun.md"
"1_05_0_adverb.md"
"1_06_0_preposition.md"
"1_07_0_conjunction.md"
"1_08_0_verb.md"
)

# Kiểm tra xem hai mảng có cùng số phần tử hay không
if [ ${#old_names[@]} -ne ${#new_names[@]} ]; then
  echo "Hai mảng không có cùng số lượng phần tử. Vui lòng kiểm tra lại."
  exit 1
fi

# Duyệt qua các phần tử của mảng và đổi tên file
for i in "${!old_names[@]}"; do
  old_name="${old_names[$i]}"
  new_name="${new_names[$i]}"

  if [ -e "$old_name" ]; then
    mv "$old_name" "$new_name"
    echo "Đã đổi tên '$old_name' thành '$new_name'."
  else
    echo "File '$old_name' không tồn tại."
  fi
done
