if [ "${TRAVIS_OS_NAME}" == "osx" ]; then
  ln -s /usr/lib/x86_64-linux-gnu/libGL.so $PREFIX/lib/libGL.so;
  export USE_X11=1;
fi;
USE_SDL2=1 USE_GSTREAMER=1 $PYTHON -m pip install --no-deps --ignore-installed .
