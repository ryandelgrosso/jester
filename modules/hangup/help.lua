jester.help.hangup = {}
jester.help.hangup.description_short = [[Actions related to hanging up a channel.]]
jester.help.hangup.description_long = [[This module provides actions that deal with hanging up a channel, or dealing with a channel in a hung up state.]]

jester.help.hangup.actions = {}

jester.help.hangup.actions.hangup = {}
jester.help.hangup.actions.hangup.description_short = [[Hang up a call.]]
jester.help.hangup.actions.hangup.description_long = [[This action hangs up the call.  No more regular sequences or actions run after this action is called (registered hangup sequences/actions will still run).]]
jester.help.hangup.actions.hangup.params = {
  play = [[The path to a file, or a phrase, to play before hanging up.]],
}

jester.help.hangup.actions.hangup_sequence = {}
jester.help.hangup.actions.hangup_sequence.description_short = [[Registers a sequence to be executed on hangup.]]
jester.help.hangup.actions.hangup_sequence.description_long = [[This action registers a sequence to be executed after the call has been hung up.  Channel variables and storage values are available when the registered sequence is run.

Sequences registered here are run after the sequences registered on exit, and are only run if the caller hangups up the call before Jester finishes running all active sequences related to the call.  If you want to guarantee that the sequence will run regardless of user hangup, it's best to put it in the exit loop instead of here.]]
jester.help.hangup.actions.hangup_sequence.params = {
  sequence = [[The sequence to execute.]],
}

