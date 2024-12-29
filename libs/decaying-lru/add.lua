-- this file gets embedded into lru.go's "addScriptSource" string at compile time

-- interface for this script:
-- add(key, value, size, decay, inv_p)

-- using a lua script has great performance upsides
-- also redis guarantees atomic execution (which we don't really need)

-- yes, in lua arrays start at 1
local key = KEYS[1]
local value = ARGV[1]
local size = ARGV[2]
local decay = ARGV[3]
local inv_p = tonumber(ARGV[4])

local time = redis.call("TIME")[1]

local ret = redis.call("ZADD", key, time, value)
redis.call("EXPIRE", key, decay)

-- random number between 1 and p_inv both inclusive,
-- so P(random = 1) = 1 / p_inv
if math.random(inv_p) == 1 then
	-- say size is 10,
	-- then it removes elements with ranks from 0 to -11,
	-- effectively keeping only the elements with ranks 0 to 9,
	-- which is the top 10 elements
	redis.call("ZREMRANGEBYRANK", key, 0, -1 * (size + 1))
end

return ret
