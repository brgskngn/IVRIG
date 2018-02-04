chronicle = 0

# If you want the program to chronicle your practice, please make sure there's no # before the two lines after this paragraph, and put the file directory you want the chronicle to be in into the "" in the next line!

#Dir.chdir ("C:/EXAMPLE)
#chronicle = 1

####

def colours(text, color_code)
  "\e[#{color_code}m#{text}\e[0m"
end

def yellow(text); colours(text, 93); end
def blue(text); colours(text, 96); end
#This makes the text colourful. The blue is more cyan bc it's easier to read.

puts yellow('Welcome to Irregular Verbs Really Interesting Game (IVRIG) 2.0!')
puts
puts blue('You will be quizzed on strong and irregular Swedish verbs. Please note: the answers are not case-sensitive. So feel free to SHOUT if you need to :)')
puts blue('This version is for umlaut-challenged systems. So type \'aa\' in place of \'å\', \'ae\' in place of \'ä\' and \'oe\' in place of \'ö\'.')
puts
puts yellow('Type \'end\' (without the \') when you want to quit. The game will tell you your score.')

if chronicle == 0
puts
puts yellow('You can also create a chronicle file that will list all your practice sessions and results. Open Ivrig20.rb in a text editor and find the instructions at the top of the file if you\'re interested.')
puts
puts blue('Press Enter to begin.')
gets

else
puts
puts blue('Press Enter to begin.')
gets
end

# Please note:
# - These are not all the irregular verbs that there are in Swedish.
# - Some of these words have multiple meanings and/or forms. I chose the most common meaning (the program also recognises up to 4 other translations) and the most irregular forms of each verb.
# - However I am a learner myself, plus I made this in one afternoon. If there are mistakes or bugs in here, please contact me at clouds-of-wings.tumblr.com :)


vocab = [
['ask (infinitive form has 3 letters)','be','ber','bad','bett','beg','pray',],

['ask (infinitive form has 5 letters)','bedja','beder','bad','bett','ask','pray','beg'],

['bind','binda','binder','band','bundit'],

['bite','bita','biter','bet','bitit'],

['offer','bjuda','bjuder','bjoed','bjudit','order','invite'],

['become','bli','blir','blev','blivit','stay'],

['should','boera','boer','borde','bort','ought','ought to'],

['burn','brinna','brinner','brann','brunnit'],

['snap','brista','brister','brast','brustit','burst','split'],

['break','bryta','bryter','broet','brutit'],

['bear','baera','baer','bar','burit','carry'],

['fall','dimpa','dimper','damp','dumpit'],

['drag','dra','drar','drog','dragit'],

['drink','dricka','dricker','drack','druckit'],

['drive','driva','driver','drev','drivit','tease'],

['conceal','doelja','doeljer','dolde','dolt','hide'],

['be suitable','duga','duger','doeg','dugt','suffice','be useful'],

['die','doe','doer','dog','doett'],

['fall','falla','faller','foell','fallit'],

['travel','fara','far','for','farit','go'],

['find','finna','finner','fann','funnit'],

['exist','finnas','finns','fanns','funnits'],

['float or flow','flyta','flyter','floet','flutit','flow','float'],

['freeze','frysa','fryser','froes','frusit'],

['get or may','faa','faar','fick','faatt','get','may'],

['disappear','foersvinna','foersvinner','foersvann','foersvunnit'],

['pour','gjuta','gjuter','goet','gjutit','cast'],

['glide','glida','glider','gled','glidit'],

['fly','flyga','flyger','floeg','flugit'],

['sell','saelja','saeljer','saalde','saalt'],

['win','vinna','vinner','vann','vunnit'],

['want','vilja','vill','ville','velat'],

['shriek','tjuta','tjuter','tjoet','tjutit','howl','cry'],

['be','vara','aer','var','varit'],

['know','veta','vet','visste','vetat'],

['twist','vrida','vrider','vred','vridit','turn'],

['eat','aeta','aeter','aat','aetit'],

['sleep','sova','sover','sov','sovit'],

['crack','spricka','spricker','sprack','spruckit','burst'],

['run','springa','springer','sprang','sprungit'],

['stick','sticka','sticker','stack','stuckit'],

['stink','stinka','stinker','stank','stunkit','smell'],

['steal','stjaela','stjael','stal','stulit'],

['battle','strida','strider','stred','stridit','fight'],

['stroke','stryka','stryker','stroek','strukit','iron','delete'],

['stand','staa','staar','stod','staatt'],

['suck','suga','suger','soeg','sugit'],

['smart','svida','svider','sved','svidit','burn','ache'],

['swear (with j)','svaera','svaer','svor','svurit','curse','vow','swear'],

['swear (without j)','svaera','svaer','svor','svurit','curse','vow','swear'],

['take','ta','tar','tog','tagit'],

['seize or catch','gripa','griper','grep','gripit','grab','seize','catch'],

['cry','graata','graater','graet','graatit','weep'],

['do','goera','goer','gjorde','gjort','make'],

['have','ha','har','hade','haft'],

['hold','haalla','haaller','hoell','haallit'],

['pinch','knipa','kniper','knep','knipit'],

['tie','knyta','knyter','knoet','knutit','knot'],

['come','komma','kommer','kom','kommit'],

['crawl','krypa','kryper','kroep','krupit'],

['suffer','lida','lider','led','lidit'],

['let','laata','laater','laet','laatit','allow'],

['enjoy','njuta','njuter','njoet','njutit'],

['pinch','nypa','nyper','noep','nypt'],

['squeak','pipa','piper','pep','pipit','beep'],

['ride','rida','rider','red','ridit'],

['rip','riva','river','rev','rivit','tear','scratch'],

['roar','ryta','ryter','roet','rutit'],

['see','se','ser','saag','sett'],

['sit','sitta','sitter','satt','suttit'],

['sing','sjunga','sjunger','sjoeng','sjungit'],

['sink','sjunka','sjunker','sjoenk','sjunkit'],

['shine','skina','skiner','sken','skinit'],

['shoot','skjuta','skjuter','skoet','skjutit'],

['scream','skrika','skriker','skrek','skrikit'],

['write','skriva','skriver','skrev','skrivit'],

['brag','skryta','skryter','skroet','skrutit'],

['cut','skaera','skaer','skar','skurit'],

['tear','slita','sliter','slet','slitit','wear','work'],

['punch','slaa','slaar','slog','slagit'],

['fight','slaass','slaass','slogs','slagits'],

['sneak','smyga','smyger','smoeg','smugit'],

['smile','le','ler','log','lett'],

['curtsey','niga','niger','neg','nigit'],

['rub','gnida','gnider','gned','gnidit'],

['be called','heta','heter','hette','hetat'],

['make in time','hinna','hinner','hann','hunnit'],

['step','kliva','kliver','klev','klivit'],

['will','skola','ska','skulle','skolat','shall'],

['spin','spinna','spinner','spann','spunnit'],

['be startled','spritta','spritter','spratt','spruttit','jump'],

['betray','svika','sviker','svek','svikit','let down'],

['be silent','tiga','tiger','teg','tigit'],

['say','saega','saeger','sade','sagt'],

['grow','vaexa','vaexer','vaexte','vuxit'],

['swim','simma','simmar','sam','summit'],

['lie down','ligga','ligger','laag','legat','lie'],

['lie','ljuga','ljuger','ljoeg','ljugit'],

['fold','vika','viker','vek','vikit'],

['smoke','ryka','ryker','roek','rykt'],

['shiver','rysa','ryser','roes','ryst'],

['dive','dyka','dyker','doek','dykt'],

['spread','sprida','sprider','spred','spritt'],

['snap','smaella','smaeller','small','smaellt'],

['melt','smaelta','smaelter','smalt','smaelt'],

['obey','lyda','lyder','loed','lytt'],

['sneeze','nysa','nyser','noes','nyst'],

['be able to','kunna','kan','kunde','kunnat','can'],

['flow','rinna','rinner','rann','runnit','run'],

['give','giva','giver','gav','givit'],

['accustom','vaenja','vaenjer','vande','vant','adapt'],

['starve','svaelta','svaelter','svalt','svultit'],

['force','tvinga','tvinger','tvang','tvungit'],

['drink alcohol','supa','super','soep','supit','drink'],

['climb','stiga','stiger','steg','stigit'],

['go','gaa','gaar','gick','gaatt'],

['simmer','sjuda','sjuder','sjoed','sjudit','seethe','boil'],

['close','sluta','sluter','sloet','slutit','finish'],

['live','leva','lever','levde','levat'],

['please','glaedja','glaeder','gladde','glatt'],

['lay','laegga','laegger','lade','lagt']
]


tries = 0
right = 0
finnish = 0

while finnish == 0
# If you stop practicing, you're a Finn! who only likes Finnic-Ugric languages!

# This program has two modes from which it randomly chooses one every time it gets ready to quiz you
game = rand(2)

# First mode: It tells you the English word and asks you to give a certain verb form.
if game == 1

verb = rand(vocab.length.to_i)
verbname = vocab[verb][0]

verbform = 0
while verbform == 0
verbform = rand(5)
end

if verbform.to_i == 0
    conjug = 'English infinitive'
elsif verbform.to_i == 1
    conjug = 'Swedish infinitive'
elsif verbform.to_i == 2
    conjug = 'Swedish present'
elsif verbform.to_i == 3
    conjug = 'Swedish simple past'
elsif verbform.to_i == 4
    conjug = 'Swedish supine'
else conjug = 'bug lol'
end

puts yellow('- What\'s the ') + blue(conjug.to_s) + yellow(' form of the English \'') + blue(verbname) + yellow('\'?')
answ = gets.downcase.chomp
tries += 1

if answ == 'end'
    finnish = 1
elsif answ == vocab[verb][verbform].to_s
    puts yellow('- Well done!')
    right += 1
else
    puts yellow('- Nope, it\'s \'' + vocab[verb][verbform].to_s + '\'!')
end
puts

# Here comes the second mode: It gives you a verb form and asks you to give a different form of the same verb.
else

verbform = rand(5)

verb = rand(vocab.length.to_i)

answverbno = rand(5)

while answverbno == verbform
answverbno = rand(5)
end

answverb = vocab[verb][answverbno]

if answverbno.to_i == 0
    conjug = 'English infinitive'
elsif answverbno.to_i == 1
    conjug = 'Swedish infinitive'
elsif answverbno.to_i == 2
    conjug = 'Swedish present'
elsif answverbno.to_i == 3
    conjug = 'Swedish simple past'
elsif answverbno.to_i == 4
    conjug = 'Swedish supine'
else conjug = 'bug lol'
end

if verbform.to_i == 0
    conjug1 = 'English infinitive form'
elsif verbform.to_i == 1
    conjug1 = 'Swedish infinitive form'
elsif verbform.to_i == 2
    conjug1 = 'Swedish present form'
elsif verbform.to_i == 3
    conjug1 = 'Swedish simple past form'
elsif verbform.to_i == 4
    conjug1 = 'Swedish supine form'
else conjug1 = 'bug lol'
end


puts yellow('- What\'s the ') + blue(conjug.to_s) + yellow(' form of the ' + conjug1 + ' \'') + blue(vocab[verb][verbform].to_s) + yellow('\'?')
answ = gets.downcase.chomp
tries += 1

if answ == 'end'
    finnish = 1
elsif answ == answverb.to_s or answ == vocab[verb][5] or answ == vocab[verb][6] or answ == vocab[verb][7] or answ == vocab[verb][8]
# The program accepts some alternate English translations
    puts yellow('- Exactly!')
    right += 1
else
    puts yellow('- Sorry, it\'s \'' + answverb.to_s + '\'. It comes from \'att ' + vocab[verb][1] + '\', which means \'to ' + vocab[verb][0] + '\'.')
end

puts

end end

puts blue('- Swedish quiz ended!')
tries -= 1
puts yellow('- You answered ' + tries.to_s + ' questions and were right ' + right.to_s + ' times.')

if chronicle == 1

    if File.exist? ("Ivrig-Scores.txt")
        f = File.open("Ivrig-Scores.txt", "a")
        
    else
        f = File.new("Ivrig-Scores.txt",  "a")
# The a makes sure you you don't overwrite everything - add stuff only
        f = File.open("Ivrig-Scores.txt", "a")
    end

puts blue('- Please enter your name for the chronicle file!')
champname = 0
champname = gets.chomp
champtime = 0
champtime = Time.now

f.puts champname.to_s + ' - ' + right.to_s + ' points after ' + tries.to_s + ' tries on ' + champtime.to_s

puts yellow('- Press Enter to quit.')

else
puts yellow('- Press Enter to quit.')

end

gets
