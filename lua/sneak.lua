-- Use a protected call so we don't error out on first use
local status_ok, sneak = pcall(require, "sneak")
if not status_ok then
  return
end

sneak.setup {  keys = 'etovxqpdygfblzhckisuran' }
