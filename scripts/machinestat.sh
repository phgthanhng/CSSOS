 #!/bin/bash
function cpu() {
	util=$(vmstat | awk '{if (NR==3) print $13+$14}')
	iowait=$(vmstat | awk '{if(NR==3) print $16}')
	echo "CPU - used: ${util}%, left: ${iowait}%"
}

function memory(){
	total=$(free -m | awk '{if (NR==2) printf "%.1f", $2/1024}')
	used=$(free -m |awk '{if (NR==2) printf "%.1f", ($2-$NF)/1024}')
	available=$(free -m | awk '{if(NR==2) printf "%.1f", $NF/1024}')
	echo "storage - total: ${total}G, used: ${used}G, available: ${available}G"
}
disk(){
	fs=$(df -h | awk '/^\/dev/{print $1}')
	for p in $fs; do
		mounted=$(df -h | awk -v p=$p '$1==p{print $NF}')
		size=$(df -h | awk -v p=$p '$1==p{print $2}')
		used=$(df -h | awk -v p=$p '$1==p{print $5}')
		used_percentage=$(df -h | awk -v p=$p '$1==p{print $5}')
		echo "Storage - mounted on : $mounted, total size: $size, used: $used, in percentage: $used_percentage" 
	done
}
tcpstatus() {
	sum=$(netstat -antp | awk '{a[$6]++}END{for(i in a) printf i":"a[i]" "}')
	echo "TCP connection status - $sum"
}
sudo apt-get install net-tools
echo "-----------------------------------------"
cpu
memory
disk
tcpstatus
echo "-----------------------------------------"

