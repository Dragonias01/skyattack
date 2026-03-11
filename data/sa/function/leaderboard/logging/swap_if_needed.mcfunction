# ============================================================================
# LEADERBOARD: Swap-Helfer
# Datei: sa:leaderboard/logging/swap_if_needed
# Version: 1.21.11
#
# Macro-Parameter:
#   $(a)  = Fake-Player-Name Slot A  (z.B. "lb_log_s1")
#   $(b)  = Fake-Player-Name Slot B  (z.B. "lb_log_s2")
#   $(na) = Storage-Pfad Name A      (z.B. "log.s1")
#   $(nb) = Storage-Pfad Name B      (z.B. "log.s2")
#
# Wenn Score(A) < Score(B) → tausche Score und Name.
# So wandert der höhere Score nach vorne (absteigend).
# ============================================================================

$execute if score $(a) lb_log_score < $(b) lb_log_score run function sa:leaderboard/logging/do_swap {a:"$(a)",b:"$(b)",na:"$(na)",nb:"$(nb)"}
