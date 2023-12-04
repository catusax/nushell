$env.BUN_INSTALL = $"($env.HOME)/.bun"
$env.PATH = ($env.PATH | append $"($env.BUN_INSTALL)/bin")