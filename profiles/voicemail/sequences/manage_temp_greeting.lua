mailbox = storage("login_settings", "mailbox_number")
mailbox_directory = profile.voicemail_dir .. "/" .. profile.context .. "/" .. profile.domain .. "/" .. mailbox

return
{
  {
    action = "file_exists",
    file = mailbox_directory .. "/temp.wav",
  },
  {
    action = "conditional",
    value = storage("file", "file_exists"),
    compare_to = "false",
    comparison = "equal",
    if_true = "record_greeting temp",
  },
  {
    action = "play_phrase",
    phrase = "temp_greeting_options",
    repetitions = 3,
    wait = 3000,
    keys = {
      ["1"] = "record_greeting temp",
      ["2"] = "erase_temp_greeting",
    },
  },
  {
    action = "call_sequence",
    sequence = "exit",
  },
}


