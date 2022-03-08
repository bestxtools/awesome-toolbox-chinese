grep -E -o "^\- \[.*?\]" README.md | grep -v "（" > ._tmp1
grep -E -o "^\- \[.*?\]" README.md | grep -v "（" | sort -f > ._tmp2
cat ._tmp2
echo 
echo Diff:
diff ._tmp1 ._tmp2
rm -f ._tmp1 ._tmp2
