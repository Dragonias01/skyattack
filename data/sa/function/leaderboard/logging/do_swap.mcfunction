
# ============================================================================
# LEADERBOARD: Swap ausführen (Macro)
# Datei: sa:leaderboard/logging/do_swap
# Version: 1.21.11
#
# Macro-Parameter:
#   $(a)  = Fake-Player-Name Slot A Score  (z.B. "lb_log_s1")
#   $(b)  = Fake-Player-Name Slot B Score  (z.B. "lb_log_s2")
#   $(na) = Slot-Nummer A als int-String   (z.B. "1")
#   $(nb) = Slot-Nummer B als int-String   (z.B. "2")
#
# Tauscht Score UND lb_log_name-Zuordnung zwischen den zwei Slots.
# ============================================================================

# ── Score tauschen ────────────────────────────────────────────────────────
$scoreboard players operation lb_swap_tmp lb_log_score = $(a) lb_log_score
$scoreboard players operation $(a) lb_log_score = $(b) lb_log_score
$scoreboard players operation $(b) lb_log_score = lb_swap_tmp lb_log_score

# ── lb_log_name tauschen ──────────────────────────────────────────────────
# Spieler mit Slot-Nr $(na) → temporär auf 99
# Spieler mit Slot-Nr $(nb) → bekommt $(na)
# Spieler mit         99    → bekommt $(nb)
# Falls ein Slot leer ist (kein Spieler) passiert nichts fuer diesen Slot.
$scoreboard players set @a[scores={lb_log_name=$(na)}] lb_log_name 99
$scoreboard players set @a[scores={lb_log_name=$(nb)}] lb_log_name $(na)
$scoreboard players set @a[scores={lb_log_name=99}]     lb_log_name $(nb)
