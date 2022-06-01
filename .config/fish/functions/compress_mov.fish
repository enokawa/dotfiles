# Compress video file use ffmeg
function compress_mov
    if test (count $argv) -eq 2
        ffmpeg -i $argv[1] -r 24 $argv[2]
        mv $argv[1] ~/.Trash/
    else
        set_color red
        echo syntax: compress_mov inputfile outputfile
    end
end