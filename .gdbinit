set disassembly-flavor intel
set follow-fork-mode child
#set follow-fork-mode parent
set detach-on-fork on
#set breakpoint pending on

#INSTALLATION
#git clone https://github.com/longld/peda.git ~/peda
#wget -O ~/.gdbinit-gef.py -q http://gef.blah.cat/py
#git clone https://github.com/pwndbg/pwndbg
#cd pwndbg
#./setup.sh


define init-peda
source ~/peda/peda.py
end
document init-peda
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework
end

define init-pwndbg
source ~/.gdbinit_pwndbg
end
document init-pwndbg
Initializes PwnDBG
end

define init-gef
source ~/.gdbinit-gef.py
end
document init-gef
Initializes GEF (GDB Enhanced Features)
end
