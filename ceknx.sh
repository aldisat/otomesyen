for domain in `cat ../subdomain/massdns1 | grep CNAME | cut -d" " -f1 | sed 's/\.$//'`
do 
	echo -n "Subdomain: $domain"; dig $domain | grep status
done | grep NXDOMAIN
