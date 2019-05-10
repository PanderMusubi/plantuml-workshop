find_program(CONVERT convert)
if(NOT CONVERT)
	message(FATAL_ERROR "Could not find convert")
endif()

add_custom_command(OUTPUT 1a35443.jpg
	COMMAND ${CONVERT} ${CMAKE_CURRENT_SOURCE_DIR}/1a35443-awb-cur-squ-5120.png -resize 1200 1a35443.jpg
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/1a35443-awb-cur-squ-5120.png
	COMMENT "Converting 1a35443-awb-cur-squ-5120.png"
)
add_custom_command(OUTPUT locker.jpg
	COMMAND ${CONVERT} ${CMAKE_CURRENT_SOURCE_DIR}/locker-awb-cur-squ-1536.jpg -resize 1200 locker.jpg
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/locker-awb-cur-squ-1536.jpg
	COMMENT "Converting locker-awb-cur-squ-1536.jpg"
)
add_custom_command(OUTPUT teapot.jpg
	COMMAND ${CONVERT} ${CMAKE_CURRENT_SOURCE_DIR}/teapot.jpg -resize 800 teapot.jpg
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/teapot.jpg
	COMMENT "Converting teapot.jpg"
)
add_custom_command(OUTPUT dish.jpg
	COMMAND ${CONVERT} ${CMAKE_CURRENT_SOURCE_DIR}/dish.jpg -resize 800 dish.jpg
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/dish.jpg
	COMMENT "Converting dish.jpg"
)
add_custom_command(OUTPUT coaster.jpg
	COMMAND ${CONVERT} ${CMAKE_CURRENT_SOURCE_DIR}/coaster.jpg -resize 800 coaster.jpg
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/coaster.jpg
	COMMENT "Converting coaster.jpg"
)
add_custom_command(OUTPUT a.png
	COMMAND ${CONVERT} ${CMAKE_CURRENT_SOURCE_DIR}/a.png -resize 800 a.png
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/a.png
	COMMENT "Converting coaster.jpg"
)

find_program(SVGO svgo)
if(NOT SVGO)
	message(FATAL_ERROR "Could not find svgo")
endif()
find_program(INKSCAPE inkscape)
if(NOT INKSCAPE)
	message(FATAL_ERROR "Could not find inkscape")
endif()

add_custom_command(OUTPUT logo-uml.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_CURRENT_SOURCE_DIR}/logo-uml.svg -o svgo-logo-uml.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-logo-uml.svg -A logo-uml.pdf
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/logo-uml.svg
	BYPRODUCTS svgo-logo-uml.svg logo-uml.pdf
	COMMENT "Converting logo-uml.svg"
)
add_custom_command(OUTPUT logo-plantuml.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_CURRENT_SOURCE_DIR}/logo-plantuml.svg -o svgo-logo-plantuml.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-logo-plantuml.svg -A logo-plantuml.pdf
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/logo-plantuml.svg
	BYPRODUCTS svgo-logo-plantuml.svg logo-plantuml.pdf
	COMMENT "Converting logo-plantuml.svg"
)
add_custom_command(OUTPUT logo-hellebaard.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_CURRENT_SOURCE_DIR}/logo-hellebaard.svg -o svgo-logo-hellebaard.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-logo-hellebaard.svg -A logo-hellebaard.pdf
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/logo-hellebaard.svg
	BYPRODUCTS svgo-logo-hellebaard.svg logo-hellebaard.pdf
	COMMENT "Converting logo-hellebaard.svg"
)

add_custom_command(OUTPUT class-diagram.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/class-diagram.svg -o svgo-class-diagram.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-class-diagram.svg -A class-diagram.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/class-diagram.svg
	BYPRODUCTS svgo-class-diagram.svg class-diagram.pdf
	COMMENT "Converting class-diagram.svg"
)
add_custom_command(OUTPUT class-diagram-minimal.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/class-diagram-minimal.svg -o svgo-class-diagram-minimal.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-class-diagram-minimal.svg -A class-diagram-minimal.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/class-diagram-minimal.svg
	BYPRODUCTS svgo-class-diagram-minimal.svg class-diagram-minimal.pdf
	COMMENT "Converting class-diagram-minimal.svg"
)
add_custom_command(OUTPUT class-diagram-extended.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/class-diagram-extended.svg -o svgo-class-diagram-extended.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-class-diagram-extended.svg -A class-diagram-extended.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/class-diagram-extended.svg
	BYPRODUCTS svgo-class-diagram-extended.svg class-diagram-extended.pdf
	COMMENT "Converting class-diagram-extended.svg"
)
add_custom_command(OUTPUT state-diagram.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/state-diagram.svg -o svgo-state-diagram.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-state-diagram.svg -A state-diagram.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/state-diagram.svg
	BYPRODUCTS svgo-state-diagram.svg state-diagram.pdf
	COMMENT "Converting state-diagram.svg"
)
add_custom_command(OUTPUT state-diagram-minimal.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/state-diagram-minimal.svg -o svgo-state-diagram-minimal.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-state-diagram-minimal.svg -A state-diagram-minimal.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/state-diagram-minimal.svg
	BYPRODUCTS svgo-state-diagram-minimal.svg state-diagram-minimal.pdf
	COMMENT "Converting state-diagram-minimal.svg"
)
add_custom_command(OUTPUT state-diagram-extended.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/state-diagram-extended.svg -o svgo-state-diagram-extended.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-state-diagram-extended.svg -A state-diagram-extended.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/state-diagram-extended.svg
	BYPRODUCTS svgo-state-diagram-extended.svg state-diagram-extended.pdf
	COMMENT "Converting state-diagram-extended.svg"
)
add_custom_command(OUTPUT usecase-diagram.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/usecase-diagram.svg -o svgo-usecase-diagram.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-usecase-diagram.svg -A usecase-diagram.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/usecase-diagram.svg
	BYPRODUCTS svgo-usecase-diagram.svg usecase-diagram.pdf
	COMMENT "Converting usecase-diagram.svg"
)
add_custom_command(OUTPUT usecase-diagram-minimal.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/usecase-diagram-minimal.svg -o svgo-usecase-diagram-minimal.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-usecase-diagram-minimal.svg -A usecase-diagram-minimal.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/usecase-diagram-minimal.svg
	BYPRODUCTS svgo-usecase-diagram-minimal.svg usecase-diagram-minimal.pdf
	COMMENT "Converting usecase-diagram-minimal.svg"
)
add_custom_command(OUTPUT usecase-diagram-extended.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/usecase-diagram-extended.svg -o svgo-usecase-diagram-extended.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-usecase-diagram-extended.svg -A usecase-diagram-extended.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/usecase-diagram-extended.svg
	BYPRODUCTS svgo-usecase-diagram-extended.svg usecase-diagram-extended.pdf
	COMMENT "Converting usecase-diagram-extended.svg"
)
add_custom_command(OUTPUT component-diagram.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/component-diagram.svg -o svgo-component-diagram.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-component-diagram.svg -A component-diagram.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/component-diagram.svg
	BYPRODUCTS svgo-component-diagram.svg component-diagram.pdf
	COMMENT "Converting component-diagram.svg"
)
add_custom_command(OUTPUT component-diagram-minimal.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/component-diagram-minimal.svg -o svgo-component-diagram-minimal.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-component-diagram-minimal.svg -A component-diagram-minimal.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/component-diagram-minimal.svg
	BYPRODUCTS svgo-component-diagram-minimal.svg component-diagram-minimal.pdf
	COMMENT "Converting component-diagram-minimal.svg"
)
add_custom_command(OUTPUT component-diagram-extended.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/component-diagram-extended.svg -o svgo-component-diagram-extended.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-component-diagram-extended.svg -A component-diagram-extended.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/component-diagram-extended.svg
	BYPRODUCTS svgo-component-diagram-extended.svg component-diagram-extended.pdf
	COMMENT "Converting component-diagram-extended.svg"
)
add_custom_command(OUTPUT activity-diagram.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/activity-diagram.svg -o svgo-activity-diagram.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-activity-diagram.svg -A activity-diagram.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/activity-diagram.svg
	BYPRODUCTS svgo-activity-diagram.svg activity-diagram.pdf
	COMMENT "Converting activity-diagram.svg"
)
add_custom_command(OUTPUT activity-diagram-minimal.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/activity-diagram-minimal.svg -o svgo-activity-diagram-minimal.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-activity-diagram-minimal.svg -A activity-diagram-minimal.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/activity-diagram-minimal.svg
	BYPRODUCTS svgo-activity-diagram-minimal.svg activity-diagram-minimal.pdf
	COMMENT "Converting activity-diagram-minimal.svg"
)
add_custom_command(OUTPUT activity-diagram-extended.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/activity-diagram-extended.svg -o svgo-activity-diagram-extended.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-activity-diagram-extended.svg -A activity-diagram-extended.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/activity-diagram-extended.svg
	BYPRODUCTS svgo-activity-diagram-extended.svg activity-diagram-extended.pdf
	COMMENT "Converting activity-diagram-extended.svg"
)
add_custom_command(OUTPUT object-diagram.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/object-diagram.svg -o svgo-object-diagram.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-object-diagram.svg -A object-diagram.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/object-diagram.svg
	BYPRODUCTS svgo-object-diagram.svg object-diagram.pdf
	COMMENT "Converting object-diagram.svg"
)
add_custom_command(OUTPUT object-diagram-minimal.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/object-diagram-minimal.svg -o svgo-object-diagram-minimal.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-object-diagram-minimal.svg -A object-diagram-minimal.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/object-diagram-minimal.svg
	BYPRODUCTS svgo-object-diagram-minimal.svg object-diagram-minimal.pdf
	COMMENT "Converting object-diagram-minimal.svg"
)
add_custom_command(OUTPUT object-diagram-extended.pdf_tex
	COMMAND ${SVGO} -i ${CMAKE_BINARY_DIR}/diagrams/object-diagram-extended.svg -o svgo-object-diagram-extended.svg
	COMMAND ${INKSCAPE} -D -z --export-latex -f svgo-object-diagram-extended.svg -A object-diagram-extended.pdf
	MAIN_DEPENDENCY ${CMAKE_BINARY_DIR}/diagrams/object-diagram-extended.svg
	BYPRODUCTS svgo-object-diagram-extended.svg object-diagram-extended.pdf
	COMMENT "Converting object-diagram-extended.svg"
)

add_custom_target(imagez00 ALL DEPENDS 1a35443.jpg)
add_custom_target(imagez99 ALL DEPENDS locker.jpg)
add_custom_target(imagez97 ALL DEPENDS teapot.jpg)
add_custom_target(imagez96 ALL DEPENDS dish.jpg)
add_custom_target(imagez95 ALL DEPENDS coaster.jpg)
add_custom_target(imagez94 ALL DEPENDS a.png)

add_custom_target(imagez01 ALL DEPENDS logo-uml.pdf_tex)
add_custom_target(imagez02 ALL DEPENDS logo-plantuml.pdf_tex)
add_custom_target(imagez03 ALL DEPENDS logo-hellebaard.pdf_tex)

add_custom_target(imagez11 ALL DEPENDS class-diagram.pdf_tex)
add_custom_target(imagez12 ALL DEPENDS class-diagram-minimal.pdf_tex)
add_custom_target(imagez13 ALL DEPENDS class-diagram-extended.pdf_tex)
add_custom_target(imagez14 ALL DEPENDS state-diagram.pdf_tex)
add_custom_target(imagez15 ALL DEPENDS state-diagram-minimal.pdf_tex)
add_custom_target(imagez16 ALL DEPENDS state-diagram-extended.pdf_tex)
add_custom_target(imagez17 ALL DEPENDS usecase-diagram.pdf_tex)
add_custom_target(imagez18 ALL DEPENDS usecase-diagram-minimal.pdf_tex)
add_custom_target(imagez19 ALL DEPENDS usecase-diagram-extended.pdf_tex)
add_custom_target(imagez20 ALL DEPENDS component-diagram.pdf_tex)
add_custom_target(imagez21 ALL DEPENDS component-diagram-minimal.pdf_tex)
add_custom_target(imagez22 ALL DEPENDS component-diagram-extended.pdf_tex)
add_custom_target(imagez23 ALL DEPENDS activity-diagram.pdf_tex)
add_custom_target(imagez24 ALL DEPENDS activity-diagram-minimal.pdf_tex)
add_custom_target(imagez25 ALL DEPENDS activity-diagram-extended.pdf_tex)
add_custom_target(imagez26 ALL DEPENDS object-diagram.pdf_tex)
add_custom_target(imagez27 ALL DEPENDS object-diagram-minimal.pdf_tex)
add_custom_target(imagez28 ALL DEPENDS object-diagram-extended.pdf_tex)
