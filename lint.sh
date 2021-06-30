clang-tidy -fix-errors --fix -checks='-*,readability-identifier-naming' \
    -config="{CheckOptions: [ {key: readability-identifier-naming.FunctionCase, value: lower_case} ]}" \
    src/*.cpp include/*.h -- -Iinclude -std=c++17


clang-format -i src/*.cpp
clang-format -i include/*.h
