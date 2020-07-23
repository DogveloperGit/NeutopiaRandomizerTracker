local HasBook
local HasDrop
local HasBoots
local HasMoss
local HasBell
local HasWand
local HasBombs
local ShieldLevel
local ArmorLevel
local SwordLevel
f = assert(io.open("tracker.txt", "w"):close())
f = io.open("tracker.txt", "w")
f:write("bookbool:0", "\n")
f:write("wandbool:0", "\n")
f:write("dropbool:0", "\n")
f:write("bootsbool:0", "\n")
f:write("mossbool:0", "\n")
f:write("bellbool:0", "\n")
f:write("bombsbool:0", "\n")
f:write("shieldlevel:0", "\n")
f:write("armorlevel:0", "\n")
f:write("swordlevel:0", "\n")

f:close()
f = io.open("tracker.txt", "r")
local content = f:read("*all")
local bookbool
bookbool=1 
f:close()
while true do


HasBook=mainmemory.readbyte (0x0E51)
HasDrop=mainmemory.readbyte (0x0E50)
HasBoots=mainmemory.readbyte (0x0E4F)
HasMoss=mainmemory.readbyte (0x0E49)
HasBell=mainmemory.readbyte (0x0E47)
HasWand=mainmemory.readbyte (0x0E46)
HasBombs=mainmemory.readbyte (0x0E44)
ShieldLevel=mainmemory.readbyte (0x0E4E)
ArmorLevel=mainmemory.readbyte (0x0E4D)
SwordLevel=mainmemory.readbyte (0x0E4C)

content = string.gsub(content, "bookbool:0", 'bookbool:' .. HasBook)
content = string.gsub(content, "bookbool:1", 'bookbool:' .. HasBook)

content = string.gsub(content, "dropbool:0", 'dropbool:' .. HasDrop)
content = string.gsub(content, "dropbool:1", 'dropbool:' .. HasDrop)

content = string.gsub(content, "bootsbool:0", 'bootsbool:' .. HasBoots)
content = string.gsub(content, "bootsbool:1", 'bootsbool:' .. HasBoots)

content = string.gsub(content, "mossbool:0", 'mossbool:' .. HasMoss)
content = string.gsub(content, "mossbool:1", 'mossbool:' .. HasMoss)

content = string.gsub(content, "bellbool:0", 'bellbool:' .. HasBell)
content = string.gsub(content, "bellbool:1", 'bellbool:' .. HasBell)

content = string.gsub(content, "wandbool:0", 'wandbool:' .. HasWand)
content = string.gsub(content, "wandbool:1", 'wandbool:' .. HasWand)

content = string.gsub(content, "bombsbool:0", 'bombsbool:' .. HasBombs)
if HasBombs == 0 then
content = string.gsub(content, "bombsbool:1", 'bombsbool:' .. HasBombs)
else
end

content = string.gsub(content, "shieldlevel:0", 'shieldlevel:' .. ShieldLevel)
content = string.gsub(content, "shieldlevel:1", 'shieldlevel:' .. ShieldLevel)
content = string.gsub(content, "shieldlevel:2", 'shieldlevel:' .. ShieldLevel)
content = string.gsub(content, "shieldlevel:3", 'shieldlevel:' .. ShieldLevel)
content = string.gsub(content, "shieldlevel:4", 'shieldlevel:' .. ShieldLevel)

content = string.gsub(content, "armorlevel:0", 'armorlevel:' .. ArmorLevel)
content = string.gsub(content, "armorlevel:1", 'armorlevel:' .. ArmorLevel)
content = string.gsub(content, "armorlevel:2", 'armorlevel:' .. ArmorLevel)
content = string.gsub(content, "armorlevel:3", 'armorlevel:' .. ArmorLevel)
content = string.gsub(content, "armorlevel:4", 'armorlevel:' .. ArmorLevel)

content = string.gsub(content, "swordlevel:0", 'swordlevel:' .. SwordLevel)
content = string.gsub(content, "swordlevel:1", 'swordlevel:' .. SwordLevel)
content = string.gsub(content, "swordlevel:2", 'swordlevel:' .. SwordLevel)
content = string.gsub(content, "swordlevel:3", 'swordlevel:' .. SwordLevel)
content = string.gsub(content, "swordlevel:4", 'swordlevel:' .. SwordLevel)
  f = io.open("tracker.txt", "w")
  if f == nil then
  f = io.open("tracekr.html", "w")
  else
  f:write(content)
  f:close()
  end
emu.frameadvance()
end