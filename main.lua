-- TODO: add a directetal argument
forwardArg = arg[1]
leftArg  = arg[2]
rightArg = arg[3] 
bottomarg = arg[4]

-- for now this program will dig down(or up eventually) forever, this isn't probably isn't the best design but i can't think of a better way to do it --
while true do
    turtle.digDown()
    turtle.dig()
end

if turtle.getFuelLevel()  <= 0 then 
    assert(turtle.refuel(1))
    print "print ran out of fuel, refueling"
else
    print "mining"
end

turtleCtrl = nil

function turtleCtrl:forwardctl(fblock)
    if turtle.getFuelLevel()  >= 0 then
    print("mining" + fblock + " blocks left")
        for i = 0, fblock, 1 do
            turtle.forward()
        end
    end
end

    function turtleCtrl:leftctrl(lblock)
    print("mining" + lblock + " blocks left")
    if turtle.getFuelLevel()  >= 0 then
        for i = 0, lblock, 1 do
            turtle.left()
        end
    end
end

function turtleCtrl:rightctrl(rblock)
    print("mining" + rblock + " blocks left")
    if turtle.getFuelLevel()  >= 0 then
        for i = 0, rblock, 1 do
            turtle.right()
        end
    end
end


function turtleCtrl:bottomctrl(botblock)
    print("mining" + botblock + " blocks left")
    if turtle.getFuelLevel()  >= 0 then
        for i = 0, botblock, 1 do
            turtle.down()
        end
    end
end

turtleCtrl:forwardctl(forwardArg)
turtleCtrl:leftctrl(leftArg)
turtleCtrl:rightctrl(rightArg)
turtleCtrl:bottomctrl(bottomarg)
