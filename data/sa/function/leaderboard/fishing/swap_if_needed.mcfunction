# LEADERBOARD: Swap-Helfer für Fishing
# Datei: sa:leaderboard/fishing/swap_if_needed
# Version: 1.21.11

$execute if score $(a) lb_fsh_score < $(b) lb_fsh_score run function sa:leaderboard/fishing/do_swap {a:"$(a)",b:"$(b)",na:"$(na)",nb:"$(nb)"}
