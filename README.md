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


plugins:
1) 'rebar3 run' will start the release console, instead of having to 
      run _build/default/rel/<release>/bin/<release> console
   
2) Running 'rebar3 auto' will start the shell the same as running rebar3 shell but will be listening for file changes in your project's application source directories. When a file is change it will message the rebar3 agent to run compile and reload modules.
