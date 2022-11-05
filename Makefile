
ALL := userspc_cpuaffinity userspc_cpuaffinity_dbg
all: ${ALL}
userspc_cpuaffinity: user_space_cpu_affinity.c  # the userspace app
	gcc -Wall -Os user_space_cpu_affinity.c -o user_space_cpu_affinity
userspc_cpuaffinity_dbg: user_space_cpu_affinity.c  # the userspace app
	gcc -g -ggdb -Wall -O0 user_space_cpu_affinity.c -o user_space_cpu_affinity_dbg
clean:
	rm -fv ${ALL}
