# LEADERBOARD: Swap-Helfer für Logging
# Datei: sa:leaderboard/logging/swap_if_needed
# Version: 1.21.11

$execute if score $(a) lb_log_score < $(b) lb_log_score run function sa:leaderboard/logging/do_swap {a:"$(a)",b:"$(b)",na:"$(na)",nb:"$(nb)"}
