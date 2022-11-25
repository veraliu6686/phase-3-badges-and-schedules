require "pry"


def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator name_ary
    name_ary.map { |name| "Hello, my name is #{name}." }
end

def assign_rooms name_ary
    name_ary.map { |name|
    "Hello, #{name}! You'll be assigned to room #{ (name_ary.find_index name) + 1}!"
    }
end

def printer name_ary
    badges = batch_badge_creator(name_ary)
    badges.each { |badge| puts badge }

    rooms = assign_rooms(name_ary)
    rooms.each { |room| puts room }
end
