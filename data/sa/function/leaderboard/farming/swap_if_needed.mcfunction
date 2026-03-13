# LEADERBOARD: Swap-Helfer für Farming
# Datei: sa:leaderboard/farming/swap_if_needed
# Version: 1.21.11

$execute if score $(a) lb_far_score < $(b) lb_far_score run function sa:leaderboard/farming/do_swap {a:"$(a)",b:"$(b)",na:"$(na)",nb:"$(nb)"}
