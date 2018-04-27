Rebar = ./rebar3

all:
	@test -d _build/default/lib || rebar3 get-deps
	@$(Rebar) compile

release:
	@test -d _build/default/lib || rebar3 get-deps
	@$(Rebar) release

dev_release:
	@$(Rebar) as dev release
	
prod_release:
	@sudo  $(Rebar) as prod release

tar:
	@$Rebar tar

clean:
	@$(Rebar) clean --all