
[1mFrom:[0m /home/jpier2012/ruby-class-variables-and-class-methods-lab-online-web-ft-041519/lib/song.rb @ line 35 Song#initialize:

    [1;34m10[0m: [32mdef[0m [1;34minitialize[0m(name, artist, genre)
    [1;34m11[0m:   @name = name
    [1;34m12[0m:   @artist = artist
    [1;34m13[0m:   @genre = genre
    [1;34m14[0m: 
    [1;34m15[0m:   [36m@@count[0m += [1;34m1[0m
    [1;34m16[0m:   ![36m@@artists[0m.include?(artist) ? [36m@@artists[0m << artist : [1;36mnil[0m
    [1;34m17[0m:   ![36m@@genres[0m.include?(genre) ? [36m@@genres[0m << genre : [1;36mnil[0m
    [1;34m18[0m: 
    [1;34m19[0m:   [36m@@artist_count[0m =
    [1;34m20[0m:     [36m@@artists[0m.each {|artist|
    [1;34m21[0m:       [32mif[0m ![36m@@artist_count[0m.has_key?(artist)
    [1;34m22[0m:         [36m@@artist_count[0m[artist] = [1;34m1[0m
    [1;34m23[0m:       [32melse[0m
    [1;34m24[0m:         [36m@@artist_count[0m[artist] += [1;34m1[0m
    [1;34m25[0m:       [32mend[0m
    [1;34m26[0m:     }
    [1;34m27[0m: 
    [1;34m28[0m:   [36m@@genre_count[0m =
    [1;34m29[0m:     [36m@@genres[0m.each {|genre|
    [1;34m30[0m:       [32mif[0m ![36m@@genre_count[0m.has_key?(genre)
    [1;34m31[0m:         [36m@@genre_count[0m[genre] = [1;34m1[0m
    [1;34m32[0m:       [32melse[0m
    [1;34m33[0m:         [36m@@genre_count[0m[genre] += [1;34m1[0m
    [1;34m34[0m:       [32mend[0m
 => [1;34m35[0m:       binding.pry
    [1;34m36[0m:     }
    [1;34m37[0m: [32mend[0m

