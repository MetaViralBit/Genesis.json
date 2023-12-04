git clone https://github.com/MetaViralBit/mtv-node
cd mtv-node
go build -o mtv main.go
sudo mv mtv /usr/local/bin
cd ./../
rm -rf mtv-node
mtv version