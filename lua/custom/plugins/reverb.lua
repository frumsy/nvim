local sound_dir = '/home/sl/.config/awesome/themes/myTheme/audio/'
return {
  'whleucka/reverb.nvim',
  event = 'BufReadPre',
  opts = {
    sounds = {
      -- add custom sound paths for other events here
      -- eg. EVENT = "/some/path/to/sound.mp3"
      -- BufRead = { path = sound_dir .. 'cyber_sound.wav', volume = 90 },
      -- CursorMovedI = { path = sound_dir .. 'cyber_sound.wav', volume = 30 },
      -- InsertLeave = { path = sound_dir .. 'cyber_sound.wav', volume = 30 },
      -- ExitPre = { path = sound_dir .. 'exit.ogg', volume = 0 - 100 },
      -- BufWrite = { path = sound_dir .. 'save.ogg', volume = 0 - 100 },
    },
  },
  init = function()
    print 'zz'
  end,
}
