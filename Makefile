vagrant:
	vagrant up --no-provision
	ansible-playbook -i hosts python.yml --limit $@
	ansible-playbook -i hosts main.yml --limit $@

clean:
	vagrant destroy -f

.DEFAULT_GOAL = vagrant
