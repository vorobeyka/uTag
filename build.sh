cmake . -Bbuild -Wdev -Werror=dev && cmake --build ./build

cp ./build/app/utag .
chmod 777 utag

