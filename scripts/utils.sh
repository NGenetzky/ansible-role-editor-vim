
# vim: set ts=4:
# Origin:
# https://gist.githubusercontent.com/jirutka/c5200ddcf00a86603314988fcad9532f/raw/68029eaa1de2d03cb24917061869b4b4057b497a/utils.sh

info() {
	# bold cyan
	printf '\033[1;36m> %s\033[0m\n' "$@" >&2
}

warn() {
	# bold yellow
	printf '\033[1;33m> %s\033[0m\n' "$@" >&2
}

die() {
	# bold red
	printf '\033[1;31mERROR:\033[0m %s\n' "$1" >&2
	exit ${2:-2}
}

is_on_path() {
	case "$PATH" in
		*$1:*) return 0;;
		*) return 1;;
	esac
}
