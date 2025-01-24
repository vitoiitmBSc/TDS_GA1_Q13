ls -l --time-style=full-iso | awk '
{
    if ($5 >= 1524 && $6 >= "2017-10-16" && $7 >= "05:15:00.000000000 +0530") {
        total += $5
    }
}
END {print "Total size:", total, "bytes"}'

