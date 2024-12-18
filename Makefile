NAME = libft.a

SRCS = ft_strlen.c ft_strmapi.c ft_itoa.c ft_bzero.c ft_toupper.c \
       ft_tolower.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
       ft_memchr.c ft_memmove.c ft_memcmp.c ft_memcpy.c ft_memset.c ft_putchar_fd.c \
       ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_strlcpy.c ft_strchr.c ft_strdup.c \
       ft_strjoin.c ft_strlcat.c ft_strnstr.c ft_strncmp.c ft_strrchr.c ft_striteri.c \
       ft_substr.c ft_strtrim.c ft_split.c ft_atoi.c ft_calloc.c

SRCB = ft_lstadd_front_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c \
       ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

CFLAGS = -Wall -Wextra -Werror

CC = cc

OBJS = $(SRCS:.c=.o)

OBJB = $(SRCB:.c=.o)

all: $(NAME)


$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

bonus: $(OBJB)
	ar rcs $(NAME) $(OBJB)
	touch bonus

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o bonus
	
fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
