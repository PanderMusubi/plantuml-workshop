find_program(PLANTUML plantuml)
if(NOT PLANTUML)
	message(FATAL_ERROR "Could not find plantuml")
endif()

add_custom_command(OUTPUT class-diagram.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/class-diagram.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/class-diagram.pu
	COMMENT "Converting class-diagram.pu"
)
add_custom_command(OUTPUT class-diagram-minimal.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/class-diagram-minimal.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/class-diagram-minimal.pu
	COMMENT "Converting class-diagram-minimal.pu"
)
add_custom_command(OUTPUT class-diagram-extended.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/class-diagram-extended.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/class-diagram-extended.pu
	COMMENT "Converting class-diagram-extended.pu"
)
add_custom_command(OUTPUT state-diagram.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/state-diagram.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/state-diagram.pu
	COMMENT "Converting state-diagram.pu"
)
add_custom_command(OUTPUT state-diagram-minimal.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/state-diagram-minimal.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/state-diagram-minimal.pu
	COMMENT "Converting state-diagram-minimal.pu"
)
add_custom_command(OUTPUT state-diagram-minimal.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/state-diagram-minimal.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/state-diagram-minimal.pu
	COMMENT "Converting state-diagram-minimal.pu"
)
add_custom_command(OUTPUT state-diagram-extended.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/state-diagram-extended.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/state-diagram-extended.pu
	COMMENT "Converting state-diagram-extended.pu"
)
add_custom_command(OUTPUT usecase-diagram.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/usecase-diagram.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/usecase-diagram.pu
	COMMENT "Converting usecase-diagram.pu"
)
add_custom_command(OUTPUT usecase-diagram-minimal.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/usecase-diagram-minimal.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/usecase-diagram-minimal.pu
	COMMENT "Converting usecase-diagram-minimal.pu"
)
add_custom_command(OUTPUT usecase-diagram-extended.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/usecase-diagram-extended.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/usecase-diagram-extended.pu
	COMMENT "Converting usecase-diagram-extended.pu"
)
add_custom_command(OUTPUT component-diagram.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/component-diagram.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/component-diagram.pu
	COMMENT "Converting component-diagram.pu"
)
add_custom_command(OUTPUT component-diagram-minimal.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/component-diagram-minimal.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/component-diagram-minimal.pu
	COMMENT "Converting component-diagram-minimal.pu"
)
add_custom_command(OUTPUT component-diagram-extended.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/component-diagram-extended.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/component-diagram-extended.pu
	COMMENT "Converting component-diagram-extended.pu"
)
add_custom_command(OUTPUT activity-diagram.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/activity-diagram.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/activity-diagram.pu
	COMMENT "Converting activity-diagram.pu"
)
add_custom_command(OUTPUT activity-diagram-minimal.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/activity-diagram-minimal.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/activity-diagram-minimal.pu
	COMMENT "Converting activity-diagram-minimal.pu"
)
add_custom_command(OUTPUT activity-diagram-extended.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/activity-diagram-extended.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/activity-diagram-extended.pu
	COMMENT "Converting activity-diagram-extended.pu"
)
add_custom_command(OUTPUT object-diagram.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/object-diagram.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/object-diagram.pu
	COMMENT "Converting object-diagram.pu"
)
add_custom_command(OUTPUT object-diagram-minimal.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/object-diagram-minimal.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/object-diagram-minimal.pu
	COMMENT "Converting object-diagram-minimal.pu"
)
add_custom_command(OUTPUT object-diagram-extended.svg
	COMMAND ${PLANTUML} -tsvg -o ${CMAKE_BINARY_DIR}/diagrams ${CMAKE_CURRENT_SOURCE_DIR}/object-diagram-extended.pu
	MAIN_DEPENDENCY ${CMAKE_CURRENT_SOURCE_DIR}/object-diagram-extended.pu
	COMMENT "Converting object-diagram-extended.pu"
)

add_custom_target(diagramz01 ALL DEPENDS class-diagram.svg)
add_custom_target(diagramz02 ALL DEPENDS class-diagram-minimal.svg)
add_custom_target(diagramz03 ALL DEPENDS class-diagram-extended.svg)
add_custom_target(diagramz04 ALL DEPENDS state-diagram.svg)
add_custom_target(diagramz05 ALL DEPENDS state-diagram-minimal.svg)
add_custom_target(diagramz06 ALL DEPENDS state-diagram-extended.svg)
add_custom_target(diagramz07 ALL DEPENDS usecase-diagram.svg)
add_custom_target(diagramz08 ALL DEPENDS usecase-diagram-minimal.svg)
add_custom_target(diagramz09 ALL DEPENDS usecase-diagram-extended.svg)
add_custom_target(diagramz10 ALL DEPENDS component-diagram.svg)
add_custom_target(diagramz11 ALL DEPENDS component-diagram-minimal.svg)
add_custom_target(diagramz12 ALL DEPENDS component-diagram-extended.svg)
add_custom_target(diagramz13 ALL DEPENDS activity-diagram.svg)
add_custom_target(diagramz14 ALL DEPENDS activity-diagram-minimal.svg)
add_custom_target(diagramz15 ALL DEPENDS activity-diagram-extended.svg)
add_custom_target(diagramz16 ALL DEPENDS object-diagram.svg)
add_custom_target(diagramz17 ALL DEPENDS object-diagram-minimal.svg)
add_custom_target(diagramz18 ALL DEPENDS object-diagram-extended.svg)
