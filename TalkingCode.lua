LUAVER = _VERSION
LUAVERNUM = tonumber(string.sub(LUAVER,5,9999))
if LUAVERNUM < 5.4 then
print("--WARNING--<This lua verison is out of date please update lua>--WARNING\n")
end
print("--Talking code running on, "..LUAVER.."--")
print("\n")
Yes = [[
(Yes)
  /
 O}
\|/
/ \]]
No = [[
(No)
  /
 O}
/|/
/ \]]
Laugh = [[
(Hahahaha)
  /
/O}
 |/
/ \]]
Ugh = [[
(Ugh)
  /
-O}
/|/
/ \]]
HangUp = [[
(*Hangs up*)
  /
 O
/|\
/ \]]
----------------------------

EmotionCal = math.random(1,5)
if EmotionCal == 1 then
print(Yes)
end
if EmotionCal == 2 then
print(No)
end
if EmotionCal == 3 then
print(Laugh)
end
if EmotionCal == 4 then
print(Ugh)
end
if EmotionCal == 5 then
print(HangUp)
end
print("-----------------------------------")









































