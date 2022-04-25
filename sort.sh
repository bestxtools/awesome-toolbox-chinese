grep -A 9999 "## 🧰 在线工具箱" README.md | grep -B 9999 "## 🧰 其他工具箱" > ._tmp0
grep -E -o "^\- \[.*?\]" ._tmp0 > ._tmp1
grep -E -o "^\- \[.*?\]" ._tmp0 | sort -f > ._tmp2
cat ._tmp2

echo 
echo Total: `wc -l ._tmp2 | grep -E -o "\d+ "`
echo 
echo Diff:

diff ._tmp1 ._tmp2
rm -f ._tmp0 ._tmp1 ._tmp2
