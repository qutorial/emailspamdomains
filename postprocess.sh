echo "Deleting empty lines"
sed -i '/^$/d' hosts
echo "Deleting comments"
sed -i '/^#.*$/d' hosts
echo "Leaving out domain names only"
cat hosts | cut -f2 -d' ' > hosts.tmp
mv hosts.tmp hosts
