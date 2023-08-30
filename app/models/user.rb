class User < ApplicationRecord
    scope :random, ->(random_id) {where('id=?',random_id)}

    after_touch :after_touch_callback, if: :should_after_touch_called?
    after_find :after_find_callback, if: -> {FindingCallBacks.should_callback_called?(self.type)}
    after_initialize :after_initialize_callback

    def self.random_method(random_id)
        where('id=?',random_id)
    end

    private

    def should_after_touch_called?
        if self.type=="Client"
            puts "This is client so no after touch"
            return false
        end
        true
    end

    def after_touch_callback
        puts "After touch callback is called for user"
    end

    def after_find_callback
        puts "after find call back is called on #{self}"
    end

    def after_initialize_callback
        puts "After initialize is called on #{self}" # its called on new/ find and where
        if self.age.to_i.to_s != self.age
            puts "Age must be integer"
            throw :abort
        end
    end
end

class FindingCallBacks
    def self.should_callback_called?(type)
        type!="Client"
    end
end