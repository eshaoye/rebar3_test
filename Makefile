
all:
	@test -d _build/default/lib || rebar3 get-deps
	@rebar3 compile
	
release:
	@test -d _build/default/lib || rebar3 get-deps
	@rebar3 release

rel: release

clean:
	@rm -rf _build
	@rebar3 clean
