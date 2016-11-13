require 'markaby'
#Sets Up Markaby

mab = Markaby::Builder.new

#Info
@post_date = Date.parse("2016-11-13")

mab.div do
  #Title

  h2 "Another year of code..... Or is it?"

  #Body

  p "Well, it looks like it's time for me to write you another communication. This
  one is a sample communication, though, that I am manually writing in an .rb file
  in the hopes that markaby and camping will be able to perse - and render - this
  bad boy on the page."

  p "See, the thing is, whenever I learn new tools I would always think about other
  people. What would my employer want me to know, what would a client want me to
  know? Which is fine. But since I'm building my own 'hub' or 'portfolio page' that
  no one is paying me for. I've realized I could build this in any tech I want. So
  I went with _why's camping. And I am running it off a tunnel on my linux machine.
  And I'm writing these posts in Shoes.rb which is saving them directly to my hard
  drive which camping, on the same machine, now reads. Ideal."

  p "I hope this works. Although right now Camping is fighting with activerecord and
  I can't get any signs of life from the github community around it for anything."

  br

  strong "Crosses fingers"
end

ALL_POSTS ||= Hash.new
ALL_POSTS[@post_date] = mab
