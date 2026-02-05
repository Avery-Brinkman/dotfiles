if status is-interactive
	set -g fish_greeting

  set -g __fish_git_prompt_show_informative_status true
  set -g __fish_git_prompt_showuntrackedfiles true

  set -g __fish_git_prompt_color_branch cyan

  set -g __fish_git_prompt_char_stateseparator " "
  set -g __fish_git_prompt_char_untrackedfiles ""
  set -g __fish_git_prompt_char_dirtystate "󰫣"
  set -g __fish_git_prompt_char_stagedstate "●"
  set -g __fish_git_prompt_char_upstream_ahead "↑"
  set -g __fish_git_prompt_char_upstream_behind "↓"
end
