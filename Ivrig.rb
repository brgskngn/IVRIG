puts 'Welcome to Irregular Verbs Really Interesting Game (IVRIG)!'
puts
puts 'You will be quizzed on strong and irregular Swedish verbs. Please note: the answers are not case-sensitive. So feel free to SHOUT if you need to :)'
puts
puts 'Type \'end\' (without the \') when you want to quit. The game will tell you your score.'
puts
puts 'Press Enter to begin.'
gets

# Please note:
# - These are not all the irregular verbs that there are in Swedish.
# - Some of these words have multiple meanings and/or forms. I chose the most common meaning (the program also recognises up to 2 other translations) and the most irregular forms of each verb.
# - However I am a learner myself, plus I made this in one afternoon. If there are mistakes or bugs in here, please contact me at clouds-of-wings.tumblr.com :)

vocab = [

['ask','be','ber','bad','bett','beg','pray'],

['bind','binda','binder','band','bundit'],

['bite','bita','biter','bet','bitit'],

['offer','bjuda','bjuder','bjöd','bjudit','order','invite'],

['become','bli','blir','blev','blivit','stay'],

['burn','brinna','brinner','brann','brunnit'],

['snap','brista','brister','brast','brustit','burst','split'],

['break','bryta','bryter','bröt','brutit'],

['bear','bära','bär','bar','burit','carry'],

['fall','dimpa','dimper','damp','dumpit'],

['drag','dra','drar','drog','dragit'],

['drink','dricka','dricker','drack','druckit'],

['drive','driva','driver','drev','drivit'],

['be suitable','duga','duger','dög','dugt','suffice','be useful'],

['die','dö','dör','dog','dött'],

['fall','falla','faller','föll','fallit'],

['travel','fara','far','for','farit','go'],

['find','finna','finner','fann','funnit'],

['exist','finnas','finns','fanns','funnits'],

['float','flyta','flyter','flöt','flutit'],

['freeze','frysa','fryser','frös','frusit'],

['get','få','får','fick','fått'],

['disappear','försvinna','försvinner','försvann','försvunnit'],

['pour','gjuta','gjuter','göt','gjutit','cast'],

['glide','glida','glider','gled','glidit'],

['fly','flyga','flyger','flög','flugit'],

['win','vinna','vinner','vann','vunnit'],

['want','vilja','vill','ville','velat'],

['shriek','tjuta','tjuter','tjöt','tjutit','howl','cry'],

['be','vara','är','var','varit'],

['know','veta','vet','visste','vetat'],

['twist','vrida','vrider','vred','vridit','turn'],

['eat','äta','äter','åt','ätit'],

['sleep','sova','sover','sov','sovit'],

['crack','spricka','spricker','sprack','spruckit','burst'],

['run','springa','springer','sprang','sprungit'],

['stick','sticka','sticker','stack','stuckit'],

['stink','stinka','stinker','stank','stunkit','smell'],

['steal','stjäla','stjäl','stal','stulit'],

['battle','strida','strider','stred','stridit','fight'],

['stroke','stryka','stryker','strök','strukit','iron','delete'],

['stand','stå','står','stod','stått'],

['suck','suga','suger','sög','sugit'],

['smart','svida','svider','sved','svidit','burn','ache'],

['swear','svära','svär','svor','svurit'],

['take','ta','tar','tog','tagit'],

['grip','gripa','griper','grep','gripit','grab','seize'],

['cry','gråta','gråter','grät','gråtit','weep'],

['do','göra','gör','gjorde','gjort','make'],

['have','ha','har','hade','haft'],

['hold','hålla','håller','höll','hållit'],

['pinch','knipa','kniper','knep','knipit'],

['tie','knyta','knyter','knöt','knutit','knot'],

['come','komma','kommer','kom','kommit'],

['crawl','krypa','kryper','kröp','krupit'],

['suffer','lida','lider','led','lidit'],

['let','låta','låter','lät','låtit'],

['enjoy','njuta','njuter','njöt','njutit'],

['pinch','nypa','nyper','nöp','nypt'],

['squeak','pipa','piper','pep','pipit','beep'],

['ride','rida','rider','red','ridit'],

['rip','riva','river','rev','rivit','tear','scratch'],

['roar','ryta','ryter','röt','rutit'],

['see','se','ser','såg','sett'],

['sit','sitta','sitter','satt','suttit'],

['sing','sjunga','sjunger','sjöng','sjungit'],

['sink','sjunka','sjunker','sjönk','sjunkit'],

['shine','skina','skiner','sken','skinit'],

['shoot','skjuta','skjuter','sköt','skjutit'],

['scream','skrika','skriker','skrek','skrikit'],

['write','skriva','skriver','skrev','skrivit'],

['brag','skryta','skryter','skröt','skrutit'],

['cut','skära','skär','skar','skurit'],

['tear','slita','sliter','slet','slitit','wear','work'],

['punch','slå','slår','slog','slagit'],

['fight','slåss','slåss','slogs','slagits'],

['sneak','smyga','smyger','smög','smugit'],

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

['say','säga','säger','sade','sagt'],

['grow','växa','växer','växte','vuxit'],

['swim','simma','simmar','sam','summit'],

['lie down','ligga','ligger','låg','legat','lie'],

['lie','ljuga','ljuger','ljög','ljugit'],

['fold','vika','viker','vek','vikit'],

['smoke','ryka','ryker','rök','rykt'],

['shiver','rysa','ryser','rös','ryst'],

['dive','dyka','dyker','dök','dykt'],

['spread','sprida','sprider','spred','spritt'],

['snap','smälla','smäller','small','smällt'],

['melt','smälta','smälter','smalt','smält'],

['obey','lyda','lyder','löd','lytt'],

['sneeze','nysa','nyser','nös','nyst'],

['be able to','kunna','kan','kunde','kunnat','can'],

['flow','rinna','rinner','rann','runnit','run'],

['give','giva','giver','gav','givit'],

['accustom','vänja','vänjer','vande','vant','adapt'],

['starve','svälta','svälter','svalt','svultit'],

['force','tvinga','tvinger','tvang','tvungit'],

['drink alcohol','supa','super','söp','supit','drink'],

['climb','stiga','stiger','steg','stigit'],

['go','gå','går','gick','gått'],

['simmer','sjuda','sjuder','sjöd','sjudit','seethe','boil'],

['close','sluta','sluter','slöt','slutit','finish'],

['live','leva','lever','levde','levat'],

['please','glädja','gläder','gladde','glatt'],

['lay','lägga','lägger','lade','lagt']
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
    conjug = 'English infinitive form of '
elsif verbform.to_i == 1
    conjug = 'Swedish infinitive form of '
elsif verbform.to_i == 2
    conjug = 'Swedish present form of '
elsif verbform.to_i == 3
    conjug = 'Swedish simple past form of '
elsif verbform.to_i == 4
    conjug = 'Swedish supine form of '
else conjug = 'bug lol'
end

puts '- What\'s the ' + conjug.to_s + 'the English \'' + verbname + '\'?'
answ = gets.downcase.chomp
tries += 1

if answ == 'end'
    finnish = 1
elsif answ == vocab[verb][verbform].to_s
    puts '- Well done!'
    right += 1
else
    puts '- Nope, it\'s \'' + vocab[verb][verbform].to_s + '\'!'
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
    conjug = 'English infinitive form'
elsif answverbno.to_i == 1
    conjug = 'Swedish infinitive form'
elsif answverbno.to_i == 2
    conjug = 'Swedish present form'
elsif answverbno.to_i == 3
    conjug = 'Swedish simple past form'
elsif answverbno.to_i == 4
    conjug = 'Swedish supine form'
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


puts '- What\'s the ' + conjug.to_s + ' of the ' + conjug1 + ' \'' + vocab[verb][verbform].to_s + '\'?'
answ = gets.downcase.chomp
tries += 1

if answ == 'end'
    finnish = 1
elsif answ == answverb.to_s or answ == vocab[verb][5] or answ == vocab[verb][6]
    puts '- Exactly!'
    right += 1
else
    puts '- Sorry, it\'s \'' + answverb.to_s + '\'. It comes from \'att ' + vocab[verb][1] + '\', which means \'to ' + vocab[verb][0] + '\'.'
end

puts

end end

puts '- Swedish quiz ended!'
tries -= 1
puts '- You answered ' + tries.to_s + ' questions and were right ' + right.to_s + ' times.'
puts '- Press Enter to quit.'
gets
