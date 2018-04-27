rebar3的学习例子，包含eper工程和sync工程。

编译：
    make

release：
    make release

运行：
   cd _build/default/rel/test_app/bin
   ./test_app console

运行sync：
    sync:go().  ## 会自动编译修改的文件并load到erlang shell中。

