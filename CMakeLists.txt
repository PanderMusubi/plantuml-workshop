cmake_minimum_required(VERSION 3.13)
project(PlantUML NONE)

add_subdirectory(diagrams)
add_subdirectory(images)

find_program(XELATEX xelatex)
if(NOT XELATEX)
	message(FATAL_ERROR "Could not find xelatex")
endif()

add_custom_command(OUTPUT presentation.pdf
	COMMAND ${XELATEX} ${CMAKE_CURRENT_SOURCE_DIR}/presentation.tex
#TODO	COMMAND ${XELATEX} ${CMAKE_CURRENT_SOURCE_DIR}/presentation.tex
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/presentation.tex
	BYPRODUCTS presentation.aux presentation.log presentation.nav presentation.out presentation.snm  presentation.toc
	COMMENT "Building presentation.pdf"
)

add_custom_target(artefactz ALL DEPENDS presentation.pdf)
