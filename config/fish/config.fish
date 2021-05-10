function fish_prompt
  set_color --bold 50fa7b
  echo -n "➜ "
  set_color --bold bd93f9
  echo -n (basename $PWD)
  set_color --bold 50fa7b
  echo -n (fish_git_prompt)
  echo -n " "
end
