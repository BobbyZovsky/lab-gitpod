#include <thread>
#include <iostream>

int main()
{
    std::thread t([&](){
        std::cout << "Hello thread" << std::endl;
    });

    t.join();
    return 0;
}