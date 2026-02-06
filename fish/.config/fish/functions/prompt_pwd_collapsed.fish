function prompt_pwd_collapsed
  set -l icon ""
  set -l default_pwd (prompt_pwd --dir-length 0)
  set -l current_dirs (string split "/" -- $default_pwd)

  if test (count $current_dirs) -le 4
    printf "$default_pwd"
    return
  end

  if string match -q "~*" $default_pwd
    printf "~"
  end
  set -l tail $current_dirs[-3..-1]
  printf "/$icon/$(string join "/" $tail)"
end
