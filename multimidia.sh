aptitude update
aptitude install icecast2 -y
mkdir /var/log/ices
mkdir /root/radio
cp /usr/share/doc/ices2/examples/ices-playlist.xml /etc/ices2
find /root/radio/gospel -iname “*.ogg” > /root/gospel.txt
aptitude install ezstream -y
touch webtv.m3u
vim webtv.m3u
  /home/usuario/Videos/video1.ogg
  /home/usuario/Videos/video2.ogg
  /home/usuario/Videos/Videos.mpg
  /home/usuario/Videos/um-video4.mov
  /home/usuario/Videos/meuvideo1.flv
  /home/usuario/Videos/audiovisual.avi
cp /usr/share/examples/ezstream/ezstream_reencoding_example_theora.xml /root/webtv/
mv ezstream_reencoding_example_theora.xml webtv.xml
ezstream -c webtv.xml
