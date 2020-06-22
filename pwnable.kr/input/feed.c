// learn(copy) from https://r00tk1ts.github.io/2018/03/06/input/#
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>

int main()
{
        int stdin_pipe[2], stderr_pipe[2];
        if (pipe(stdin_pipe) < 0 || pipe(stderr_pipe) < 0)
        {
                perror("pipe failed");
                exit(-1);
        }

        // stage1
        char *argv[101];
        for (int i = 1; i < 100; ++i)
        {
                argv[i] = "a";
        }
        argv['A'] = "\x00";
        argv['B'] = "\x20\x0a\x0d";
        argv['C'] = "55555";
        argv[100] = NULL;

        // stage3
        char *envp[2] = {"\xde\xad\xbe\xef=\xca\xfe\xba\xbe", NULL};

        // stage4
        FILE *fp = fopen("\x0a", "wb");
        if (!fp)
        {
                perror("open file failed");
                exit(-1);
        }
        fwrite("\x00\x00\x00\x00", 1, 4, fp);
        fclose(fp);

        pid_t pid_child;
        if ((pid_child = fork()) < 0)
        {
                perror("create process failed");
                exit(-1);
        }

        if (pid_child == 0)
        {
                sleep(1);
                close(stdin_pipe[0]);
                close(stderr_pipe[0]);
                write(stdin_pipe[1], "\x00\x0a\x00\xff", 4);
                write(stderr_pipe[1], "\x00\x0a\x02\xff", 4);
        }
        else
        {
                close(stdin_pipe[1]);
                close(stderr_pipe[1]);
                dup2(stdin_pipe[0], 0);
                dup2(stderr_pipe[0], 2);

                execve("/home/input2/input", argv, envp);
        }

        // stage5
        sleep(5);
        int sockfd;
        struct sockaddr_in saddr;
        sockfd = socket(AF_INET, SOCK_STREAM, 0);
        if (sockfd == -1)
        {
                perror("socket failed");
                exit(-1);
        }
        saddr.sin_family = AF_INET;
        saddr.sin_addr.s_addr = inet_addr("127.0.0.1");
        saddr.sin_port = htons(55555);
        if (connect(sockfd, (struct sockaddr*)&saddr, sizeof(saddr)) < 0)
        {
                perror("connect failed");
                exit(-1);
        }
        write(sockfd, "\xde\xad\xbe\xef", 4);
        close(sockfd);
        return 0;
}
