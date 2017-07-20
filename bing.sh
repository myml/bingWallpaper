curl -s "https://cn.bing.com" |
	grep -Po 'g_img={url: "\K[^"]+' |
	wget https://cn.bing.com/$(cat) -O /tmp/bk.jpg
sleep 10
gsettings set org.gnome.desktop.background picture-uri /tmp/bk.jpg
