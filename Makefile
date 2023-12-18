BLU			= \033[0;34m
GRN			= \033[0;32m
RED			= \033[0;31m
RST			= \033[0m
END			= \e[0m
TOTEM 		= 🦁

SRCS = srcs/ft_strlen.s \
	   srcs/ft_write.s \
	   srcs/ft_read.s \
	   srcs/ft_strcpy.s \
	   srcs/ft_strdup.s \
	   srcs/ft_strcmp.s


NAME			= libasm.a
OBJS_DIR		= objs/
TEST_DIR		= testers/
OBJS			= $(SRCS:.s=.o)
OBJECTS_PREFIXED = $(addprefix $(OBJS_DIR), $(OBJS))
CC				= gcc
CC_FLAGS		= -Wall -Werror -Wextra -static
CC_FLAGS_STATIC	= -Wall -Werror -Wextra -static
NASM			= nasm
NASMFLAGS		= -f elf64

$(OBJS_DIR)%.o : %.s
	@mkdir -p $(OBJS_DIR)
	@mkdir -p $(OBJS_DIR)srcs
	@$(NASM) $(NASMFLAGS) $< -o $@
	@printf	"\033[2K\r${BLU}${TOTEM} [BUILD]${RST} '$<' $(END)"

$(NAME): $(OBJECTS_PREFIXED)
	@ar rcs $(NAME) $(OBJECTS_PREFIXED)
	@printf "\033[2K\r\033[0;32m${TOTEM} [END]\033[0m $(NAME)$(END)\n"

all: $(NAME)

clean:
	@rm -rf $(OBJS_DIR)
	@rm -rf $(TEST_DIR)
	@printf "\033[2K\r${GRN}${TOTEM} [CLEAN]${RST} done$(END)\n"

fclean: clean
	@rm -f $(NAME)
	@rm -rf $(OBJS_DIR)
	@rm -rf $(TEST_DIR)
	@printf "\033[2K\r${GRN}${TOTEM} [FCLEAN]${RST} done$(END)\n"

re: fclean all

test:
	@mkdir -p $(TEST_DIR)
	@$(CC) $(CC_FLAGS) srcs_testers/ft_strlen.c -o testers/ft_strlen libasm.a
	@printf	"\033[2K\r${BLU}${TOTEM} [BUILD]${RST} ft_strlen $(END)"
	@$(CC) $(CC_FLAGS) srcs_testers/ft_write.c -o testers/ft_write libasm.a
	@printf	"\033[2K\r${BLU}${TOTEM} [BUILD]${RST} ft_write $(END)"
	@$(CC) $(CC_FLAGS) srcs_testers/ft_read.c -o testers/ft_read libasm.a
	@printf	"\033[2K\r${BLU}${TOTEM} [BUILD]${RST} ft_read $(END)"
	@$(CC) $(CC_FLAGS) srcs_testers/ft_strcpy.c -o testers/ft_strcpy libasm.a
	@printf	"\033[2K\r${BLU}${TOTEM} [BUILD]${RST} ft_strcpy $(END)"
	@$(CC) $(CC_FLAGS) srcs_testers/ft_strdup.c -o testers/ft_strdup libasm.a
	@printf	"\033[2K\r${BLU}${TOTEM} [BUILD]${RST} ft_strdup $(END)"
	@$(CC) $(CC_FLAGS) srcs_testers/ft_strcmp.c -o testers/ft_strcmp libasm.a
	@printf	"\033[2K\r${BLU}${TOTEM} [BUILD]${RST} ft_strcmp $(END)"
	@printf "\033[2K\r${GRN}${TOTEM} [TESTERS]${RST} done$(END)\n"

.PHONY:		all clean fclean re test
