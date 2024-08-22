NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm
RMFLAGS = -f
AR = ar
ARFLAGS = rcs

# Path
SRC_PATH = src
MENDATORY_PATH = $(SRC_PATH)/mendatory
MENDATORY_PART_1_PATH = $(MENDATORY_PATH)/part_1
BONUS_PATH = $(SRC_PATH)/bonus

# Souce File Name
FILE_NAME_PART_1 = ft_isalpha ft_isdigit ft_isalnum \
				   ft_isascii ft_isprint ft_toupper \
				   ft_tolower ft_strchr ft_strrchr \
				   ft_strlen ft_strncmp ft_memset \
				   ft_bzero ft_memchr ft_memcpy \
				   ft_memcmp ft_memmove ft_strlcpy \
				   ft_strnstr ft_strlcat ft_atoi \
				   ft_calloc ft_strdup

FILE_NAME_PART_2 = ft_substr ft_strjoin ft_strtrim \
			 	   ft_split ft_itoa ft_strmapi \
				   ft_striteri ft_putchar_fd ft_putstr_fd \
				   ft_putendl_fd ft_putnbr_fd

FILE_NAME_BONUS = ft_lstnew ft_lstadd_front ft_lstsize \
				  ft_lstlast ft_lstadd_back ft_lstdelone \
				  ft_lstclear ft_lstiter ft_lstmap

OBJS_PART1 = $(SRCS_PART1:.c=.o)
OBJS_PART2 = $(SRCS_PART2:.c=.o)
OBJS_BONUS = $(SRCS_BONUS:.c=.o)

ifdef WITH_BONUS
	TOTAL_OBJS = $(OBJS_PART1) $(OBJS_PART2) $(OBJS_BONUS)
else
	TOTAL_OBJS = $(OBJS_PART1) $(OBJS_PART2)
endif

all : $(NAME)

clean : 
	$(RM) $(RMFLAGS) $(OBJS_PART1) $(OBJS_PART2) $(OBJS_BONUS)

fclean : clean
	$(RM) $(RMFLAGS) $(NAME)

re : fclean all

bonus :
	make WITH_BONUS=1

$(NAME) : $(TOTAL_OBJS)
	$(AR) $(ARFLAGS) $@ $^

%.o : %.c
	$(CC) $(CFLAGS) -c $<

.PHONY: all clean fclean re bonus
