# You have a bank of switches before you numbered from 1 to 1000. Each switch is
# connected to exactly one light that is initially off. You walk down the row of
# switches, and turn every one of them on. Then, you go back to the beginning
# and toggle switches 2, 4, 6, and so on. Repeat this for switches 3, 6, 9, and
# so on, and keep going until you have been through 1000 repetitions of this
# process.
#
# Write a program that determines how many lights are on at the end, and which
# lights are on.
#
# Example with 5 lights:
#
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lignts 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4.
#
# With 10 lights, 3 lights are left on: lights 1, 4, and 9.

TOGGLE_CYCLES = 10

def toggle_lights(lights)
  1.upto(lights.size) do |cycle|
    lights.each do |key, value|
      lights[key] = toggle_switch(value) if key >= cycle && key % cycle == 0
    end
  end
end

def toggle_switch(light)
  light == "on" ? "off" : "on"
end

def lights_on(lights)
  lights.keys.select { |key| lights[key] == "on" }
end

def lights_off(lights)
  lights.keys.select { |key| lights[key] == "off" }
end

def display_lights_on(lights)
  puts "Lights ON:  #{lights_on(lights).size} - #{lights_on(lights).join(", ")}"
  puts "Lights OFF: #{lights_off(lights).size} - #{lights_off(lights).join(", ")}"
end

lights = 1.upto(TOGGLE_CYCLES).each.with_object({}) do |index, hash|
  hash[index] = "off"
end

toggle_lights(lights)
display_lights_on(lights)
