compile_env_reqs:
	rm -f env-requirements.in
	find . -name '*requirements.in' -exec tail -q -n +2 {} + > env-requirements.in
	pip-compile --resolver=backtracking env-requirements.in

compile_all_reqs: compile_env_reqs
	find . -name '*requirements.in' | xargs -I _ pip-compile --resolver=backtracking _

update_all_reqs:
	find . -name '*requirements.txt' -exec rm {}  +
	make compile_all_reqs

