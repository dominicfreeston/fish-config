function gif
    set file (echo $argv | sed 's/\.[^.]*$//')
    echo $argv
    echo $file
    ffmpeg -i $argv -filter_complex "[0:v] fps=12,scale=480:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" $file-tmp.gif
    gifsicle -O3 --lossy=80 -o $file.gif $file-tmp.gif
    rm $file-tmp.gif
end
