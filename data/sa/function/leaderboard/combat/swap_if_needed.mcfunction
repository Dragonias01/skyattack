# LEADERBOARD: Swap-Helfer für Combat
# Datei: sa:leaderboard/combat/swap_if_needed
# Version: 1.21.11

$execute if score $(a) lb_com_score < $(b) lb_com_score run function sa:leaderboard/combat/do_swap {a:"$(a)",b:"$(b)",na:"$(na)",nb:"$(nb)"}
