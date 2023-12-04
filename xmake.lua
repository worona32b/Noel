-- Define the project
set_project("noel")

add_requires("glfw") -- xrepo install -vD glfw

-- Define the "engine" target
target("engine")
    set_kind("binary")
    add_files("src/**.cpp")
    
    add_packages("glfw")

    -- Debug configuration
    if is_mode("debug") then
        add_cxflags("-g")
    end

    -- Release configuration
    if is_mode("release") then
        add_cxflags("-O3")
    end
