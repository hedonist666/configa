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
theme address_code red bold
theme address_heap red bold
theme address_stack red bold
theme context_title_line gray bold
theme context_title_message red bold
theme default_title_line gray bold
theme default_title_message red bold
theme dereference_base_address red bold
theme dereference_code gray bold
theme dereference_string red bold
theme disassemble_current_instruction red bold
theme registers_register_name red bold
theme registers_value_changed blue bold
theme source_current_line red bold
theme table_heading red bold
gef config context.layout "legend regs stack code args source memory threads -trace extra"
end
document init-gef
Initializes GEF (GDB Enhanced Features)
end
