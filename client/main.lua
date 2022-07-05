local job, jobGrade = "unemployed", "unemployed"

NCS:handleEvent("jobChange", function(jobName, job_grade)
    job = jobName
    jobGrade = job_grade
end)

CreateThread(function()
    while (not (NetworkIsPlayerActive(PlayerId()))) do
        Wait(100)
    end
    while true do
        local sleep = 500
        if job == "unemployed" then
            local player = PlayerPedId()
            local plyPos = GetEntityCoords(player)
            local dist = #(plyPos - config.posInteract)
            if dist <= 20 then
                sleep = 0
                DrawMarker(2, config.posInteract, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.30, 0.30, 0.30, 255, 0, 0, 255, 55555, false, true, 2, false, false, false, false)
                if dist <= 1.5 then
                    NCS.Player:showHelpNotification("Hello unemployed")
                    if IsControlJustPressed(0, 51) then
                        print("Hello unemployed with grade: "..jobGrade)
                    end
                end
            end
        else
            sleep = 5000
        end
        Wait(sleep)
    end
end)


NCS:handleEvent("jobBindInteract", function(job, jobGrade)
    if job == "unemployed" then
        print("Job bindInteract(F6) pressed with job: unemployed and jobGrade: "..jobGrade) -- This part is demonstrate
    end
end)