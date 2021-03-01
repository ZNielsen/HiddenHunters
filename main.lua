
function love.load()
    print("Initializing...")
    time_init_start = love.timer.getTime()
    -- Create the world
    world = love.physics.newWorld(0,0,true)

    -- Create the game board
    STATES = {
        EMPTY = 0,
        SHOWN_PLAYER = 1,
        HIDDEN_PLAYER = 2
    }

    board = {}
    for row=0,5,1 do
        board[row] = {}
        for col=0,5,1 do
            board[row][col] = {}
            board[row][col].state = EMPTY
        end
    end

    p1 = {}
    p2 = {}

    -- Set controls
    p1.controls = {up="up", down="down", left="left", right="right"}
    -- p2.controls = {up="f",  down="s",    left="r",    right="t"}
    p2.controls = {up="w",  down="s",    left="a",    right="d"}


    time_init = love.timer.getTime() - time_init_start
    print("Inited in " .. time_init .. "s")
end

function love.update(dt)
    -- move_amount is velocity, so we don't need to factor in dt
    local move_amount = 500
    local rotate_amount = math.pi*3 * dt

    window_width, window_height = love.graphics.getDimensions()

    -- Adjust controls for each player
    for _,player in pairs({p1, p2}) do
        if utils.isDiscretePress(player.controls.up) then
            utils.moveUp(player)
        end
    end

    world:update(dt)
end

function love.draw()
end

function beginContact(f1, f2, coll)
end

function endContact(f1, f2, coll)
    -- print("in endContact")
end

function preSolve(f1, f2, coll)
    -- print("in preSolve")
end

function postSolve(f1, f2, coll, normalimpulse, tangentimpulse)
    -- print("in postSolve")
end

function love.resize(width, height)
end

