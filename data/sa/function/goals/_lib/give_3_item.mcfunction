# Entfernt exakt "count" Items vom Spieler, Rest ist generisch (give_4).
$clear @s $(item)[item_name=[{text:"$(item_name)",italic:0b}]] $(count)

function sa:goals/_lib/give_4 with storage sa:goals_ctx ctx
