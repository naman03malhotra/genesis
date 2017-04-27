



use_debug false
notes = (scale :e1, :minor_pentatonic, num_octaves: 2).shuffle

live_loop :industry do
  sample :loop_industrial, beat_stretch: 1
  sleep 1
end

live_loop :drive do
  sample :bd_haus, amp: 3
  sleep 0.5
end

#sleep 8

live_loop :rerezzed do
  tick_reset
  t = 0.04
  sleep -t
  with_fx :bitcrusher do
    s = synth :dsaw, note: :e3, sustain: 8, note_slide: t, release: 0
    64.times do
      sleep 0.125
      control s, note: notes.tick
    end
  end
  sleep t
end

#sleep 8
#tabla
live_loop :tabla do
  sample :drum_tom_hi_soft, amp: 3
  sleep 0.5
end

#sleep 8

sl = 0.5
live_loop :drum_soft do
  #sl = sl - 0.008
  sample :perc_snap, amp: 1.5
  sleep sl
end

sl = 0.5
live_loop :drum_soft do
  #sl = sl - 0.008
  sample :sn_dolf, amp: 1.5
  sleep sl
end


sl = 0.5
live_loop :drum_zome do
  #sl = sl - 0.008
  sample :sn_dolf, amp: 1.5
  sleep sl
end















