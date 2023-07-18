starts_with(IS_MBED "${ARDUINO_FQBN}" "arduino:mbed")
starts_with(IS_ESP32 "${ARDUINO_FQBN}" "esp32")

if (IS_MBED)
    set(CMAKE_CXX_STANDARD 14)
    add_compile_definitions(_GNU_SOURCE)
endif()
if (IS_ESP32)
    set(CMAKE_CXX_STANDARD 20)
endif()

add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/Arduino/Os")
add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/Arduino/ArduinoTime")
add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/Arduino/Drv/GpioDriver")
add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/Arduino/Drv/StreamDriver")
add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/Arduino/Drv/I2cDriver")
add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/Arduino/Drv/HardwareRateDriver")

setup_arduino_libraries()
