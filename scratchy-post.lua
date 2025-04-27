function onEvent(name, value1, value2)
    if name == "Change Stage" then
        if value1 ~= nil and value1 ~= "" then
            -- Try to change stage, but if the stage doesn't exist, fallback
            if checkFileExists('stages/' .. value1 .. '.lua') then
                loadStage(value1)
            else
                debugPrint("Warning: Stage '" .. value1 .. "' does not exist. Skipping stage change.")
            end
        end
    end
end

-- Helper to check if a stage file exists (rough version)
function checkFileExists(path)
    return checkFile(path) -- Some engines have checkFile() or similar
end

