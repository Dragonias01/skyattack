# LEADERBOARD: Swap-Helfer für Mining
# Datei: sa:leaderboard/mining/swap_if_needed
# Version: 1.21.11

$execute if score $(a) lb_min_score < $(b) lb_min_score run function sa:leaderboard/mining/do_swap {a:"$(a)",b:"$(b)",na:"$(na)",nb:"$(nb)"}
