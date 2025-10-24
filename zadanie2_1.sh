#!bin/bash


options=()
arguments=()
inputFiles=()
outputFiles=()

while getopts ":abcdefghi:jklmno:pqrstuvwxyz" opt; do
    case $opt in
        q)
            printf "Unsupported option: -q"
            exit 0
            ;;
        i)
            input="$OPTARG"
            if [[ -f "$input" ]]; then
                options+="i"
                inputFiles+=$input
            else
                printf "-i -o options require a filename"
            fi
            ;;
        o)
            output="$OPTTARG"
            if [[-f "$output"]]; then
                options+="o"
                outputFiles+=$output
            else
                printf "-i -o options require a filename"

            fi
            ;;
        *)
            options+=$opt
            ;;
    esac

