## outputs the number of (regular) files contained within a given directory
# if invoked without an argument, defaults to the current directory
function count-files {
dir=$1 || $CWD
find $dir -type f |wc -l
}

## converts a man page to a PDF file 
# Usage: man2pdf <COMMAND> [OUTPUT_DIR]
# where COMMAND is the shell command/program whose manual page is to be
# converted and OUTPUT_DIR is the filesystem directory where to place the
# generated PDF file (defaults to the current directory).

function man2pdf {
command=$1
out_dir=$2 || $PWD
out_fname=${command}_manpage.pdf
man -Tps $command | ps2pdf - ${out_dir}/${out_fname}
}
