class Decorator
    attr_accessor :delegatee

    def initialize(object)
        @delegatee = object
    end

    def method_missing(name)
        @delegatee.send(name)
    end
end