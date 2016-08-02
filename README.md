dot_vim
=======

installing YCM
--------------
brew install python
brew install --with-clang --all-targets --rtti --universal --jit llvm
cd ~; mkdir ycm_build; cd ycm_build
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=/usr/local/Cellar/llvm/3.5.1/ -DPYTHON_INCLUDE_DIR=/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Headers -DPYTHON_LIBRARY=/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib -DPython_FRAMEWORKS=/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework -DPYTHON_EXECUTABLE=/usr/local/Cellar/python/2.7.9/bin/python . /Users/grant/src/dot_vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs
