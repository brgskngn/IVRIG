# IVRIG
Small Ruby program that quizzes you on Swedish irregular verbs.
Written with Ruby 2.3.1

The Irregular Verbs Really Interesting Game (IVRIG) is a small, simple program with only one purpose in life: to quiz learners of the Swedish language on strong and irregular verbs. It asks you questions & keeps score on how many questions you answered and how many of those you answered correctly.

How to install: Install Ruby.
https://www.ruby-lang.org/

Download the Ivrig files (green button on the top right). Unzip the archive. Double-click one of the Ivrig files (Windows) or run it in the terminal (Linux). Done.

There are two different versions:
- Ivrig.rb: this is the default version.
- Ivrig-ae.rb: this is the version for umlaut-challenged systems. It replaces ä with ae, ö with oe and å with aa. Use it if your operating system, your keyboard or your Indogermanophobic parents won't let you use umlauts.

Apart from that, the versions are the same.

Some more notes:
- There are about a hundred verbs in here. It's probably not an exhaustive list of all relevant verbs though.
- Where there exist alternate forms of a verb, I chose the more irregular one. So, for example, this program uses “simma - simmar - sam - summit” even though “simma - simmar - simmade - simmat” is also correct.
- Many verbs have more than one meaning. This program uses what I consider the 'main' or most common meaning but depending on the verb it allows up to two alternate translations. For example, the main translation of 'rinna' is 'flow' but 'run' is also accepted.

New in version 2.0:
- The program can now create a chronicle file that keeps track of when you practiced and how many points you got. To activate this, open the Ivrig file you want to use in a text editor and follow the instructions in the beginning of the file.
- Sometimes multiple Swedish verbs have the same meaning in English. For example, both "falla" and "dimpa" mean "to fall". The program now gives you a hint which verb is meant if it presents you with the English form.
- Added some more verbs
- Added some more alternate English translations for certain verbs
- When a Swedish verb has multiple very different meanings in English, the program now mentions all the most important ones. For example, "flyta" is asked for as "the word for flow or float". When the program asks for an English translation it will accept both "flow" and "float" of course. It merely mentions both to maximise learning effect.
- The program text is yellow and blue now for maximum Swedish flair... and for better readability. Doesn't work on Windows before Windows 10 because the operating systems don't support coloured text in the console.
