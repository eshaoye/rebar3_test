
all:
	@test -d _build/default/lib || rebar3 get-deps
	@rebar3 compile

release:
	@test -d _build/default/lib || rebar3 get-deps
	@rebar3 release

rel: release

clean:
	@echo "===> remove the _build directory"
	@rm -rf _build
	@rebar3 clean
