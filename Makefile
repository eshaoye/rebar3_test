
all:
	@test -d _build/default/lib || rebar3 get-deps
	@rebar3 compile

release:
	@test -d _build/default/lib || rebar3 get-deps
	@rebar3 release

rel: release

dev_release:
	@rebar3 as dev release
	
prod_release:
	@sudo rebar3 as prod release

clean:
	@echo "===> remove the _build directory"
	@rm -rf _build
	@rebar3 clean
